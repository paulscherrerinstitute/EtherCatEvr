library ieee;
use ieee.std_logic_1164.all;
-- AUTOMATICALLY GENERATED; DONT EDIT
-- Generated from XML:
-- <?xml version='1.0' encoding='utf-8'?>
-- <EtherCATInfo>
--   <Vendor>
--     <Id>#x505349</Id>
--     <Name>Paul Scherrer Institut</Name>
--   </Vendor>
--   <Descriptions>
--     <Groups>
--       <Group>
--         <Type>Lan9254</Type>
--         <Name>Lan9254</Name>
--       </Group>
--     </Groups>
--     <Devices>
--       <Device Physics="YY">
--         <Type ProductCode="0001" RevisionNo="0001">Lan9254</Type>
--         <Name>EcEVR</Name>
--         <GroupType>Lan9254</GroupType>
--         <Fmmu>Outputs</Fmmu>
--         <Fmmu>Inputs</Fmmu>
--         <Fmmu>MBoxState</Fmmu>
--         <Sm ControlByte="#x26" StartAddress="#x1000" DefaultSize="80" Enable="1">MBoxOut</Sm>
--         <Sm ControlByte="#x22" StartAddress="#x1100" DefaultSize="80" Enable="1">MBoxIn</Sm>
--         <Sm ControlByte="#x24" StartAddress="#x1200" DefaultSize="3" Enable="1">Outputs</Sm>
--         <Sm ControlByte="#x20" StartAddress="#x1600" DefaultSize="0" Enable="0">Inputs</Sm>
--         <RxPdo Fixed="1" Mandatory="1" Sm="2">
--           <Index>#x1600</Index>
--           <Name>ECAT EVR RxData</Name>
--           <Entry Fixed="1">
--             <Index>#x2000</Index>
--             <SubIndex>#x01</SubIndex>
--             <BitLen>8</BitLen>
--             <Name>LED[1]</Name>
--             <DataType>USINT</DataType>
--           </Entry>
--           <Entry Fixed="1">
--             <Index>#x2000</Index>
--             <SubIndex>#x02</SubIndex>
--             <BitLen>8</BitLen>
--             <Name>LED[2]</Name>
--             <DataType>USINT</DataType>
--           </Entry>
--           <Entry Fixed="1">
--             <Index>#x2000</Index>
--             <SubIndex>#x03</SubIndex>
--             <BitLen>8</BitLen>
--             <Name>LED[3]</Name>
--             <DataType>USINT</DataType>
--           </Entry>
--         </RxPdo>
--         <TxPdo Fixed="1" Mandatory="1" Sm="3">
--           <Index>#x1a00</Index>
--           <Name>ECAT EVR TxData</Name>
--         </TxPdo>
--         <Mailbox DataLinkLayer="1">
--           <EoE IP="1" MAC="1"/>
--           <FoE/>
--         </Mailbox>
--         <Eeprom AssignToPdi="1">
--           <ByteSize>2048</ByteSize>
--           <ConfigData>91020144000000000000004000002b00</ConfigData>
--           <BootStrap>0010000100115000</BootStrap>
--           <Category>
--             <CatNo>1</CatNo>
--             <Data>01ffffffffffffffffffffffff04040000000000000000040000000000000000040000000000000000040000000000000000112233440000</Data>
--           </Category>
--           <Category>
--             <CatNo>2</CatNo>
--             <Data>d415418103d06b68d4124d00d0d412646301ffff</Data>
--           </Category>
--           <VendorSpecific>
--             <ClockFreqMHz DriverName="VersaClock6">100.333</ClockFreqMHz>
--           </VendorSpecific>
--         </Eeprom>
--       </Device>
--     </Devices>
--   </Descriptions>
-- </EtherCATInfo>
package EEPROMContentPkg is
type EEPROMArray is array (natural range <>) of std_logic_vector(15 downto 0);
constant EEPROM_INIT_C : EEPROMArray := (
      0/2 => x"0291",
      2/2 => x"4401",
      4/2 => x"0000",
      6/2 => x"0000",
      8/2 => x"0000",
      10/2 => x"4000",
      12/2 => x"0000",
      14/2 => x"002b",
      16/2 => x"5349",
      18/2 => x"0050",
      20/2 => x"0001",
      22/2 => x"0000",
      24/2 => x"0001",
      26/2 => x"0000",
      28/2 => x"0000",
      30/2 => x"0000",
      32/2 => x"0000",
      34/2 => x"0000",
      36/2 => x"0000",
      38/2 => x"0000",
      40/2 => x"1000",
      42/2 => x"0100",
      44/2 => x"1100",
      46/2 => x"0050",
      48/2 => x"1000",
      50/2 => x"0050",
      52/2 => x"1100",
      54/2 => x"0050",
      56/2 => x"000a",
      58/2 => x"0000",
      60/2 => x"0000",
      62/2 => x"0000",
      64/2 => x"0000",
      66/2 => x"0000",
      68/2 => x"0000",
      70/2 => x"0000",
      72/2 => x"0000",
      74/2 => x"0000",
      76/2 => x"0000",
      78/2 => x"0000",
      80/2 => x"0000",
      82/2 => x"0000",
      84/2 => x"0000",
      86/2 => x"0000",
      88/2 => x"0000",
      90/2 => x"0000",
      92/2 => x"0000",
      94/2 => x"0000",
      96/2 => x"0000",
      98/2 => x"0000",
      100/2 => x"0000",
      102/2 => x"0000",
      104/2 => x"0000",
      106/2 => x"0000",
      108/2 => x"0000",
      110/2 => x"0000",
      112/2 => x"0000",
      114/2 => x"0000",
      116/2 => x"0000",
      118/2 => x"0000",
      120/2 => x"0000",
      122/2 => x"0000",
      124/2 => x"000f",
      126/2 => x"0001",
      128/2 => x"0001",
      130/2 => x"001c",
      132/2 => x"ff01",
      134/2 => x"ffff",
      136/2 => x"ffff",
      138/2 => x"ffff",
      140/2 => x"ffff",
      142/2 => x"ffff",
      144/2 => x"04ff",
      146/2 => x"0004",
      148/2 => x"0000",
      150/2 => x"0000",
      152/2 => x"0000",
      154/2 => x"0400",
      156/2 => x"0000",
      158/2 => x"0000",
      160/2 => x"0000",
      162/2 => x"0000",
      164/2 => x"0004",
      166/2 => x"0000",
      168/2 => x"0000",
      170/2 => x"0000",
      172/2 => x"0400",
      174/2 => x"0000",
      176/2 => x"0000",
      178/2 => x"0000",
      180/2 => x"0000",
      182/2 => x"2211",
      184/2 => x"4433",
      186/2 => x"0000",
      188/2 => x"0002",
      190/2 => x"000a",
      192/2 => x"15d4",
      194/2 => x"8141",
      196/2 => x"d003",
      198/2 => x"686b",
      200/2 => x"12d4",
      202/2 => x"004d",
      204/2 => x"d4d0",
      206/2 => x"6412",
      208/2 => x"0163",
      210/2 => x"ffff",
      212/2 => x"000a",
      214/2 => x"0022",
      216/2 => x"0707",
      218/2 => x"614c",
      220/2 => x"396e",
      222/2 => x"3532",
      224/2 => x"0534",
      226/2 => x"6345",
      228/2 => x"5645",
      230/2 => x"0f52",
      232/2 => x"4345",
      234/2 => x"5441",
      236/2 => x"4520",
      238/2 => x"5256",
      240/2 => x"5220",
      242/2 => x"4478",
      244/2 => x"7461",
      246/2 => x"0661",
      248/2 => x"454c",
      250/2 => x"5b44",
      252/2 => x"5d31",
      254/2 => x"4c06",
      256/2 => x"4445",
      258/2 => x"325b",
      260/2 => x"065d",
      262/2 => x"454c",
      264/2 => x"5b44",
      266/2 => x"5d33",
      268/2 => x"450f",
      270/2 => x"4143",
      272/2 => x"2054",
      274/2 => x"5645",
      276/2 => x"2052",
      278/2 => x"7854",
      280/2 => x"6144",
      282/2 => x"6174",
      284/2 => x"001e",
      286/2 => x"0010",
      288/2 => x"0001",
      290/2 => x"0201",
      292/2 => x"0000",
      294/2 => x"0101",
      296/2 => x"0000",
      298/2 => x"0400",
      300/2 => x"0000",
      302/2 => x"0001",
      304/2 => x"0011",
      306/2 => x"0000",
      308/2 => x"0000",
      310/2 => x"0000",
      312/2 => x"0000",
      314/2 => x"0000",
      316/2 => x"0000",
      318/2 => x"0000",
      320/2 => x"0028",
      322/2 => x"0002",
      324/2 => x"0201",
      326/2 => x"0003",
      328/2 => x"0029",
      330/2 => x"0010",
      332/2 => x"1000",
      334/2 => x"0050",
      336/2 => x"0026",
      338/2 => x"0101",
      340/2 => x"1100",
      342/2 => x"0050",
      344/2 => x"0022",
      346/2 => x"0201",
      348/2 => x"1200",
      350/2 => x"0003",
      352/2 => x"0024",
      354/2 => x"0301",
      356/2 => x"1600",
      358/2 => x"0000",
      360/2 => x"0020",
      362/2 => x"0400",
      364/2 => x"0032",
      366/2 => x"0004",
      368/2 => x"1a00",
      370/2 => x"0300",
      372/2 => x"0700",
      374/2 => x"0013",
      376/2 => x"0033",
      378/2 => x"0010",
      380/2 => x"1600",
      382/2 => x"0203",
      384/2 => x"0300",
      386/2 => x"0013",
      388/2 => x"2000",
      390/2 => x"0401",
      392/2 => x"0805",
      394/2 => x"0000",
      396/2 => x"2000",
      398/2 => x"0502",
      400/2 => x"0805",
      402/2 => x"0000",
      404/2 => x"2000",
      406/2 => x"0603",
      408/2 => x"0805",
      410/2 => x"0000",
      412/2 => x"ffff",
      414/2 => x"ffff"
);
end package EEPROMContentPkg;
