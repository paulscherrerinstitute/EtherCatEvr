# The EtherCAT EVR

by Till Straumann

## Introduction

The EtherCAT EVR (or EcEvr) is a device to bridge events, timestamps and
sections of the distributed data buffer of the [MRF](http://mfr.fi) timing
and event system into the EtherCAT fieldbus.

This package provides the firmware for the EtherCAT EVR. [The KiCAD](https://www.kicad.org)
hardware-design is [available here](https://github.com/till-s/kicad-lan9254-evr-prototype.git).

## Features

The EcEVR provides the following features:

 - Publish MRF events, data buffer content, timestamps in EtherCAT PDO.
 - All PDO details are configurable and the configuration is part of the
   standard EtherCAT EEPROM, i.e., changes to the configuration do not
   require a firmware rebuild. The EEPROM can be updated with standard
   EtherCAT tools.
 - PDO publication can be triggered by a (configurable) event code and
   delay or by reception of the data buffer.
 - Arrival of event code(s) can latch the EtherCAT distributed clock. The
   latched time can also be published in the PDO. These features allow
   for synchronization between the two timing domains.
 - The EcEVR also works as a standard event receiver, i.e., it can
   generate a number of hardware triggers.
 - Delay-compensation is supported.
 - The firmware supports EoE; all slow controls and monitoring of
   the device are using this Ethernet channel, reducing the required
   bandwidth on the EtherCAT bus to a minimum.
 - Software library for EoE access of EcEVR features/registers.
 - The device can operate in stand-alone mode with basic configuration
   obtained from the EEPROM. However, run-time control and monitoring
   (e.g., to manipulate triggers) over EoE/TCP/IP is possible.
 - Compatible/tested with TwinCAT and the IgH open EtherCAT master. A few
   (EoE related) fixes are available on the 
   [PSI fork](https://www.github.com/paulscherrerinstitute/ethercat.git).
 - FoE support. Firmware updates can be deployed to the device using 
   standard EtherCAT FOE commands. A fallback image (activated via
   jumper) is supported.
 - Python GUI tool to generate and maintain the EtherCAT SII files
   (XML and EEPROM).
 - Hardware uses low-cost components (Artix-7, Lan9254) and is powered
   from a USB-C connector.
 - Open-source hard-, firm- and software.
 - Written in VHDL.
 - Uses a [fork](https://www.github.com/paulscherrerinstitute/mrf-openevr.git)
   of [MRF](mrf.fi)'s openevr.

## Building the Project

After cloning the git [repository](https://www.github.com/paulscherrerinstitute/EtherCatEvr.git)
and populating the submodules:

 1. Navigate to the top directory, create a `build` or `prj` subdirectory there (the name
    does not matter).
 2. Change directory to the newly created build directory. This helps having vivado create
    all sorts of log files and the vivado project in one place that can easily be cleaned up.
 3. Use vivado in batch mode to create the vivado project from TCL:

       vivado -mode batch -source ../vivado/genProject.tcl

 4. Start vivado in GUI mode and open the new project (look for it in `EcEvrProto_project`)
 5. Build and generate a bitstream.

## Bootstrapping and Writing Non-Volatile Memory

The board hosts two non-volatile memory devices:

  - flash memory for FPGA configuration (supports multiboot and fallback to
    a 'golden' image via jumper/switch).

  - EtherCAT SII EEPROM holds configurable EtherCAT-relevant data (e.g., layout of
    the PDO) as well as vendor-specific configuration parameters (e.g., timing reference
    frequency).

Bootstrapping a new board involves the following steps:

 1. Install some jumpers.
 2. Set DIP-Switch to EEPROM emulation mode (hardcoded default SII prom contents)
 3. Initial configuration of the FPGA via JTAG (when flash is blank).
 4. Bring up the board on EtherCAT.
 5. Use EtherCAT FoE to program the flash; after reboot/power-cycle the FPGA then
    configures from flash.
 6. Generate SII EEPROM image using GUI tool.
 7. Use EtherCAT to program the EEPROM the image generated in the previous step.
 8. Set DIP-Switch to disable EEPROM emulation mode.
 9. Reboot; the board should now be functional.

Future firmware updates can be done via EtherCAT/FoE.

EEPROM/SII updates do not require a firmware update an can also be done via EtherCAT.

### Loading/Bootstrapping the Initial Bitstream

New hardware comes with blank flash and EEPROM storage devices. Thus, the first time
the board is powered up the FPGA must be jumpered, configured with JTAG and booted in EEPROM
emulation mode:

  1. Install jumper on block J1 between pins 5-6 (marked 'On' on silkscreen).

  2. Install jumper on JP2201 between pins 2-3 (closer to ethernet connector).

  3. Set the DIP switch to the following positions

        A -> ON (ALELO_polarity in emulation mode)
        B -> ON (isolate EEPROM from Lan9254)
        C -> ON (C..E select HBI-16 EEPROM emulation mode)
        D -> OFF
        E -> ON
        F -> ON (enable ethernet autonegotiation on port B)
        J -> ON  (firmware use: fallback boot)
        K -> OFF (firmware use: reserved)

  4. Connect JTAG cable (J4).

  5. Connect to USBC power source and program the FPGA with the vivado hardware manager.

The board should now be operational and use default EEPROM settings that are
hardcoded in the firmware. These settings are intended to suffice for initial
communication.

Connect an ethernet cable to the EtherCAT system/master and the board should
now be visible on the bus.

Note that at this point the firmware is still volatile, i.e., it has not yet
been programmed into the flash memory. The next subsection explains how to
do that.

## Burning Firmware Images to Flash Memory with FoE

Writing to the flash memory is supported using the FoE (File over EtherCAT)
protocol. Note that FoE readback is not supported but the flash contents
may be read back using EoE register/memory access operations.

### Flash Areas

The flash is partitioned into different areas which are addressed by the
(case-insensitive) first letter of the filename which is written by FoE:

       Name     Start-Address   Size       Usage
       'G'      0x000000        0x220000   Golden/Fallback Image
                0x220000        0x220000   Normal Image
       'B'      0x440000        0x010000   Barrier
       'P'      0x450000        0x040000   E.g,: Debug Probes
       'A'      0x490000        0x400000   Aux: User Data
       'T'      0xfe0000        0x010000   Test: User Data

Any filename starting with a (case-insensitive) letter other than 'G',
'B', 'P', 'A' or 'T' is written to the 'Normal Image' area.

The firmware supports multiboot (see Xilinx documentation):

  - a valid image *must* always be programmed into the 'Golden' area
  - if dip-switch 'K' is in the 'ON' position then multiboot
    is disabled, i.e., the FPGA is programmed with the 'Golden' image.
  - if dip-switch 'K' is in the 'OFF' position then the
    'Golden' image (which *must* be present in the flash) causes a
    re-configuration with the 'normal' image.
  - A barrier (see Xilinx documentation) should be written to the barrier
    area to ensure fallback if the normal image is faulty.

Areas 'P', 'A' and 'T' are not used by the firmware and may hold arbitrary
user data (e.g., debug probes for the image file(s)).

Note that if multiboot is not needed then dip-switch 'K' may be permanently 
left in the 'ON' position and the normal image area may then be left blank.

#### Burning a Golden Image

  1. Switch dip-switch 'K' to the ON position. This overrides a (soft) write-protection
     flag. If you are in a remote location w/o access to the jumpers then this write-protection
     can also be removed with a register setting (see below).

     If the dip-switch 'K' is still in the ON position when the fpga is next reconfigured
     then the golden image is booted.

  2. Switch the EtherCAT state of the device to 'BOOTSTRAP'. This speeds up the programming
     considerably (it still takes a few minutes) because a bigger mailbox is used.

  3. Rename, link or copy the firmware image (the `.bin` variant) to a name which starts
     with 'G', e.g., `Golden.bin`. This ensures the file is written to the correct flash
     area.

  4. Use the ethercat master to write the file, e.g., under linux:

         ethercat foe_write Golden.bin

  5. An LED starts blinking first in blue (erasing) and then green (writing).

  6. When the write operation is complete restart the device, e.g., under linux:

         ethercat reboot

#### Burning a Normal Image

As mentioned before using the multiboot feature is optional. In any case, a 'Golden'
image *must* be present in the flash before multiboot may be used. A 'barrier' image
should also be written to the 'B' area (see below).

Follow the same steps listed in the previous section, except:

  - Leave dip-switch 'K' in OFF position. I.e., do *not* execute step 1.
  - The filename must start with a letter (case-insensitive) other than 'G', 'T', 'B',
    'P' or 'A'.

#### Burning a Barrier Image

This step is only necessary when multiboot is used and it needs only to be performed
once. The barrier image is never changed or updated.

  1. Switch dip-switch 'K' to the ON position.
  2. Use the ethercat master to switch to BOOTSTRAP state and to burn the file as
     described above.
  3. The barrier image filename must start with 'B'.
  4. Once the image is written switch dip-switch 'K' back to the OFF position (if it was initially OFF).

## LED Indicators

Several LEDs communicate status and activity of the board:

 - LEDs integrated into the ethernet plug show network activity.
 - On the back side of the board (where the ethernet plug is located)
   there are two EtherCAT LEDs; a red 'ERRLED' a green 'RUNLED'.
   For the meaning of these consult the EtherCAT documentation.
 - On the front side there are multiple multi-color LEDs; from
   left to right:
      - timing status indicator
          - steady red: no reference clock, no RX power on SFP
          - steady yellow: no reference clock, RX power on SFP detected
          - red blinking (at recovered RX clock freq. divided by 1E8):
            reference clock present, no RX power on SFP detected.
          - yellow blinking (at recovered RX clock freq. divided by 1E8):
            reference clock present, RX power on SFP detected.
          - steady green: RX locked to incoming timing stream.
      - power (green) combined with 'FPGA unconfigured' (red).
      - user LED (programmable by EtherCAT or register).
      - FoE indicator (blue blinking: flash erasing; green blinking:
        flash writing).

## Jumpers and Switches

There are a number of jumpers on the board:

 - J1: a six pin jumper block which defines under what circumstances
   power is sourced from the USBC connector:
     - no jumper: power off
     - jumper between pins 6-5: forced on; the current-capabilities
       indicated by USBC-PD are ignored.
     - jumper between pins 4-3: only power up if USBC-PD indicates that
       the power source can supply 3A.
     - jumpers between pins 4-3 and 2-1: only power up if USBC-PD indicates
       that the powper source can deliver 1.5A or more.
  - J2: a 4-pin jumper block; unused. Consult schematics.
  - J4: JTAG connector. Note that multiboot is not working when a JTAG
    platform cable is connected.
  - JP1: wait for JTAG boot/configuration when installed. Prevents the
    FPGA from being configured from flash. This is normally not necessary
    even when configuring from JTAG.
  - JP2: hold FPGA's INITb low when installed. Leave open.
  - JP3: disable PUDC when installed (FPGA-internal pull-up during configuration).
  - JP2201: auto-negotiation of ethercat port A: jumper between 2-3 enables
    auto-negotiation, a jumper between 1-2 disables auto-negotiation. Install
    between 2-3 (closer to the ethernet connector) for most use cases.

The DIP-switch SW2101 (positions A..K) controls several features and it
is important to pick the correct configuration.

      A -> controls ALELO polarity when in EEPROM emulation mode (should be ON)
      B -> disconnects EEPROM i2c from the Lan9254 when ON (the EEPROM is always
           connected to the FPGA's i2c interface). It is necessary to isolate
           the EEPROM when using the Lan9254's EEPROM emulation mode.
      C -> emulation-mode selector bit 2
      D -> emulation-mode selector bit 1
      E -> emulation-mode selector bit 0; when *not* in emulation mode (bits 2
           and 1 in the OFF position) then this switch defines the EEPROM addressing
           mode: 1-byte (for EEPROMs <= 16kBits) when ON, 2-byte (for EEPROMS >= 32kBits)
           when OFF.
      F -> Control auto-negotiation on ethernet port B (enabled when ON, disabled when OFF).
      J -> Firmware use: controls multiboot feature. ON: force booting the golden/default
           image; write-protection of golden area removed. OFF: golden image reloads FPGA
           with 'normal' image; write-protection of golden area engaged (can also be removed
           by software).
      K -> Firmware use: reserved.

Pressing the push-button switch SW1 causes reconfiguration of the FPGA.

## Using the GUI Tool to Generate SII EEPROM

## Using EoE to Access Registers

### Address Map

### Command-Line Utilities

#### `ecurcli`
#### `versaClkPgm`
#### `spiFlashRead`

### `ecur` Library
