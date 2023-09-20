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
--         <Info/>
--         <GroupType>Lan9254</GroupType>
--         <Fmmu>Outputs</Fmmu>
--         <Fmmu>Inputs</Fmmu>
--         <Fmmu>MBoxState</Fmmu>
--         <Sm ControlByte="#x26" StartAddress="#x1000" DefaultSize="80" Enable="1">MBoxOut</Sm>
--         <Sm ControlByte="#x22" StartAddress="#x1200" DefaultSize="80" Enable="1">MBoxIn</Sm>
--         <Sm ControlByte="#x24" StartAddress="#x1400" DefaultSize="3" Enable="1">Outputs</Sm>
--         <Sm ControlByte="#x20" StartAddress="#x1800" DefaultSize="0" Enable="0">Inputs</Sm>
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
--           <BootStrap>0010000200125000</BootStrap>
--           <Category>
--             <CatNo>1</CatNo>
--             <Data>02ffffffffffffffffffffffff0400000000040000000000000000040000000000000000040000000000000000040000000000000000112233440000</Data>
--           </Category>
--           <Category>
--             <CatNo>2</CatNo>
--             <Data>d415418103d06b68d4124d00d0d412646301ffff</Data>
--           </Category>
--           <VendorSpecific>
--             <ClockFreqMHz DriverName="VersaClock6">100.333</ClockFreqMHz>
--             <EvrDCTargetNS>0</EvrDCTargetNS>
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
      42/2 => x"0200",
      44/2 => x"1200",
      46/2 => x"0050",
      48/2 => x"1000",
      50/2 => x"0050",
      52/2 => x"1200",
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
      130/2 => x"001e",
      132/2 => x"ff02",
      134/2 => x"ffff",
      136/2 => x"ffff",
      138/2 => x"ffff",
      140/2 => x"ffff",
      142/2 => x"ffff",
      144/2 => x"04ff",
      146/2 => x"0000",
      148/2 => x"0000",
      150/2 => x"0004",
      152/2 => x"0000",
      154/2 => x"0000",
      156/2 => x"0000",
      158/2 => x"0400",
      160/2 => x"0000",
      162/2 => x"0000",
      164/2 => x"0000",
      166/2 => x"0000",
      168/2 => x"0004",
      170/2 => x"0000",
      172/2 => x"0000",
      174/2 => x"0000",
      176/2 => x"0400",
      178/2 => x"0000",
      180/2 => x"0000",
      182/2 => x"0000",
      184/2 => x"0000",
      186/2 => x"2211",
      188/2 => x"4433",
      190/2 => x"0000",
      192/2 => x"0002",
      194/2 => x"000a",
      196/2 => x"15d4",
      198/2 => x"8141",
      200/2 => x"d003",
      202/2 => x"686b",
      204/2 => x"12d4",
      206/2 => x"004d",
      208/2 => x"d4d0",
      210/2 => x"6412",
      212/2 => x"0163",
      214/2 => x"ffff",
      216/2 => x"001e",
      218/2 => x"0010",
      220/2 => x"0001",
      222/2 => x"0201",
      224/2 => x"0000",
      226/2 => x"0101",
      228/2 => x"0000",
      230/2 => x"0400",
      232/2 => x"0000",
      234/2 => x"0001",
      236/2 => x"0011",
      238/2 => x"0000",
      240/2 => x"0000",
      242/2 => x"0000",
      244/2 => x"0000",
      246/2 => x"0000",
      248/2 => x"0000",
      250/2 => x"0000",
      252/2 => x"0028",
      254/2 => x"0002",
      256/2 => x"0201",
      258/2 => x"0003",
      260/2 => x"0029",
      262/2 => x"0010",
      264/2 => x"1000",
      266/2 => x"0050",
      268/2 => x"0026",
      270/2 => x"0101",
      272/2 => x"1200",
      274/2 => x"0050",
      276/2 => x"0022",
      278/2 => x"0201",
      280/2 => x"1400",
      282/2 => x"0003",
      284/2 => x"0024",
      286/2 => x"0301",
      288/2 => x"1800",
      290/2 => x"0000",
      292/2 => x"0020",
      294/2 => x"0400",
      296/2 => x"0032",
      298/2 => x"0004",
      300/2 => x"1a00",
      302/2 => x"0300",
      304/2 => x"0300",
      306/2 => x"0013",
      308/2 => x"0033",
      310/2 => x"0010",
      312/2 => x"1600",
      314/2 => x"0203",
      316/2 => x"0400",
      318/2 => x"0013",
      320/2 => x"2000",
      322/2 => x"0501",
      324/2 => x"0805",
      326/2 => x"0000",
      328/2 => x"2000",
      330/2 => x"0602",
      332/2 => x"0805",
      334/2 => x"0000",
      336/2 => x"2000",
      338/2 => x"0703",
      340/2 => x"0805",
      342/2 => x"0000",
      344/2 => x"000a",
      346/2 => x"0022",
      348/2 => x"0707",
      350/2 => x"614c",
      352/2 => x"396e",
      354/2 => x"3532",
      356/2 => x"0534",
      358/2 => x"6345",
      360/2 => x"5645",
      362/2 => x"0f52",
      364/2 => x"4345",
      366/2 => x"5441",
      368/2 => x"4520",
      370/2 => x"5256",
      372/2 => x"5420",
      374/2 => x"4478",
      376/2 => x"7461",
      378/2 => x"0f61",
      380/2 => x"4345",
      382/2 => x"5441",
      384/2 => x"4520",
      386/2 => x"5256",
      388/2 => x"5220",
      390/2 => x"4478",
      392/2 => x"7461",
      394/2 => x"0661",
      396/2 => x"454c",
      398/2 => x"5b44",
      400/2 => x"5d31",
      402/2 => x"4c06",
      404/2 => x"4445",
      406/2 => x"325b",
      408/2 => x"065d",
      410/2 => x"454c",
      412/2 => x"5b44",
      414/2 => x"5d33",
      416/2 => x"ffff",
      418/2 => x"ffff",
      420/2 => x"ffff",
      422/2 => x"ffff"
);
end package EEPROMContentPkg;
