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
--           <Category>
--             <CatNo>12288</CatNo>
--             <Data>015a643bdf4f155940</Data>
--           </Category>
--           <Category>
--             <CatNo>12289</CatNo>
--             <Data>0000000000000000</Data>
--           </Category>
--           <Category>
--             <CatNo>12290</CatNo>
--             <Data></Data>
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
      128/2 => x"000a",
      130/2 => x"0022",
      132/2 => x"0707",
      134/2 => x"614c",
      136/2 => x"396e",
      138/2 => x"3532",
      140/2 => x"0534",
      142/2 => x"6345",
      144/2 => x"5645",
      146/2 => x"0f52",
      148/2 => x"4345",
      150/2 => x"5441",
      152/2 => x"4520",
      154/2 => x"5256",
      156/2 => x"5420",
      158/2 => x"4478",
      160/2 => x"7461",
      162/2 => x"0f61",
      164/2 => x"4345",
      166/2 => x"5441",
      168/2 => x"4520",
      170/2 => x"5256",
      172/2 => x"5220",
      174/2 => x"4478",
      176/2 => x"7461",
      178/2 => x"0661",
      180/2 => x"454c",
      182/2 => x"5b44",
      184/2 => x"5d31",
      186/2 => x"4c06",
      188/2 => x"4445",
      190/2 => x"325b",
      192/2 => x"065d",
      194/2 => x"454c",
      196/2 => x"5b44",
      198/2 => x"5d33",
      200/2 => x"0001",
      202/2 => x"001e",
      204/2 => x"ff02",
      206/2 => x"ffff",
      208/2 => x"ffff",
      210/2 => x"ffff",
      212/2 => x"ffff",
      214/2 => x"ffff",
      216/2 => x"04ff",
      218/2 => x"0000",
      220/2 => x"0000",
      222/2 => x"0004",
      224/2 => x"0000",
      226/2 => x"0000",
      228/2 => x"0000",
      230/2 => x"0400",
      232/2 => x"0000",
      234/2 => x"0000",
      236/2 => x"0000",
      238/2 => x"0000",
      240/2 => x"0004",
      242/2 => x"0000",
      244/2 => x"0000",
      246/2 => x"0000",
      248/2 => x"0400",
      250/2 => x"0000",
      252/2 => x"0000",
      254/2 => x"0000",
      256/2 => x"0000",
      258/2 => x"2211",
      260/2 => x"4433",
      262/2 => x"0000",
      264/2 => x"0002",
      266/2 => x"000a",
      268/2 => x"15d4",
      270/2 => x"8141",
      272/2 => x"d003",
      274/2 => x"686b",
      276/2 => x"12d4",
      278/2 => x"004d",
      280/2 => x"d4d0",
      282/2 => x"6412",
      284/2 => x"0163",
      286/2 => x"ffff",
      288/2 => x"3000",
      290/2 => x"0005",
      292/2 => x"5a01",
      294/2 => x"3b64",
      296/2 => x"4fdf",
      298/2 => x"5915",
      300/2 => x"0040",
      302/2 => x"3001",
      304/2 => x"0004",
      306/2 => x"0000",
      308/2 => x"0000",
      310/2 => x"0000",
      312/2 => x"0000",
      314/2 => x"3002",
      316/2 => x"0000",
      318/2 => x"001e",
      320/2 => x"0010",
      322/2 => x"0001",
      324/2 => x"0201",
      326/2 => x"0000",
      328/2 => x"0101",
      330/2 => x"0000",
      332/2 => x"0400",
      334/2 => x"0000",
      336/2 => x"0001",
      338/2 => x"0011",
      340/2 => x"0000",
      342/2 => x"0000",
      344/2 => x"0000",
      346/2 => x"0000",
      348/2 => x"0000",
      350/2 => x"0000",
      352/2 => x"0000",
      354/2 => x"0028",
      356/2 => x"0002",
      358/2 => x"0201",
      360/2 => x"0003",
      362/2 => x"0029",
      364/2 => x"0010",
      366/2 => x"1000",
      368/2 => x"0050",
      370/2 => x"0026",
      372/2 => x"0101",
      374/2 => x"1200",
      376/2 => x"0050",
      378/2 => x"0022",
      380/2 => x"0201",
      382/2 => x"1400",
      384/2 => x"0003",
      386/2 => x"0024",
      388/2 => x"0301",
      390/2 => x"1800",
      392/2 => x"0000",
      394/2 => x"0020",
      396/2 => x"0400",
      398/2 => x"0032",
      400/2 => x"0004",
      402/2 => x"1a00",
      404/2 => x"0300",
      406/2 => x"0300",
      408/2 => x"0013",
      410/2 => x"0033",
      412/2 => x"0010",
      414/2 => x"1600",
      416/2 => x"0203",
      418/2 => x"0400",
      420/2 => x"0013",
      422/2 => x"2000",
      424/2 => x"0501",
      426/2 => x"0805",
      428/2 => x"0000",
      430/2 => x"2000",
      432/2 => x"0602",
      434/2 => x"0805",
      436/2 => x"0000",
      438/2 => x"2000",
      440/2 => x"0703",
      442/2 => x"0805",
      444/2 => x"0000",
      446/2 => x"ffff"
);
end package EEPROMContentPkg;
