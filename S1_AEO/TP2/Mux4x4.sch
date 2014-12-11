<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="I0(3:0)" />
        <signal name="I2(3:0)" />
        <signal name="I3(3:0)" />
        <signal name="s(1:0)" />
        <signal name="s(1)" />
        <signal name="s(0)" />
        <signal name="XLXN_28" />
        <signal name="I1(3:0)" />
        <signal name="I2(3)" />
        <signal name="I3(3)" />
        <signal name="I0(2)" />
        <signal name="I1(2)" />
        <signal name="I2(2)" />
        <signal name="I3(2)" />
        <signal name="I1(3)" />
        <signal name="I2(1)" />
        <signal name="I1(1)" />
        <signal name="I0(1)" />
        <signal name="I0(0)" />
        <signal name="I1(0)" />
        <signal name="I2(0)" />
        <signal name="O(0)" />
        <signal name="O(1)" />
        <signal name="O(2)" />
        <signal name="I3(1)" />
        <signal name="I0(3)" />
        <signal name="I3(0)" />
        <signal name="O(3:0)" />
        <signal name="O(3)" />
        <port polarity="Input" name="I0(3:0)" />
        <port polarity="Input" name="I2(3:0)" />
        <port polarity="Input" name="I3(3:0)" />
        <port polarity="Input" name="s(1:0)" />
        <port polarity="Input" name="I1(3:0)" />
        <port polarity="Output" name="O(3:0)" />
        <blockdef name="m4_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-416" y2="-416" x1="0" />
            <line x2="96" y1="-352" y2="-352" x1="0" />
            <line x2="96" y1="-288" y2="-288" x1="0" />
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-320" y2="-320" x1="320" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="176" />
            <line x2="176" y1="-208" y2="-96" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="224" />
            <line x2="224" y1="-216" y2="-32" x1="224" />
            <line x2="96" y1="-224" y2="-192" x1="256" />
            <line x2="256" y1="-416" y2="-224" x1="256" />
            <line x2="256" y1="-448" y2="-416" x1="96" />
            <line x2="96" y1="-192" y2="-448" x1="96" />
            <line x2="96" y1="-160" y2="-160" x1="128" />
            <line x2="128" y1="-200" y2="-160" x1="128" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="m4_1e" name="XLXI_1">
            <blockpin signalname="I0(3)" name="D0" />
            <blockpin signalname="I1(3)" name="D1" />
            <blockpin signalname="I2(3)" name="D2" />
            <blockpin signalname="I3(3)" name="D3" />
            <blockpin signalname="XLXN_28" name="E" />
            <blockpin signalname="s(0)" name="S0" />
            <blockpin signalname="s(1)" name="S1" />
            <blockpin signalname="O(3)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_2">
            <blockpin signalname="I0(2)" name="D0" />
            <blockpin signalname="I1(2)" name="D1" />
            <blockpin signalname="I2(2)" name="D2" />
            <blockpin signalname="I3(2)" name="D3" />
            <blockpin signalname="XLXN_28" name="E" />
            <blockpin signalname="s(0)" name="S0" />
            <blockpin signalname="s(1)" name="S1" />
            <blockpin signalname="O(2)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_3">
            <blockpin signalname="I0(0)" name="D0" />
            <blockpin signalname="I1(0)" name="D1" />
            <blockpin signalname="I2(0)" name="D2" />
            <blockpin signalname="I3(0)" name="D3" />
            <blockpin signalname="XLXN_28" name="E" />
            <blockpin signalname="s(0)" name="S0" />
            <blockpin signalname="s(1)" name="S1" />
            <blockpin signalname="O(0)" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_4">
            <blockpin signalname="XLXN_28" name="P" />
        </block>
        <block symbolname="m4_1e" name="XLXI_5">
            <blockpin signalname="I0(1)" name="D0" />
            <blockpin signalname="I1(1)" name="D1" />
            <blockpin signalname="I2(1)" name="D2" />
            <blockpin signalname="I3(1)" name="D3" />
            <blockpin signalname="XLXN_28" name="E" />
            <blockpin signalname="s(0)" name="S0" />
            <blockpin signalname="s(1)" name="S1" />
            <blockpin signalname="O(1)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="I2(3:0)">
            <wire x2="1024" y1="384" y2="560" x1="1024" />
            <wire x2="1024" y1="560" y2="1056" x1="1024" />
            <wire x2="1024" y1="1056" y2="1584" x1="1024" />
            <wire x2="1024" y1="1584" y2="2128" x1="1024" />
            <wire x2="1024" y1="2128" y2="2192" x1="1024" />
            <wire x2="1024" y1="2192" y2="2416" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="1024" y="384" name="I2(3:0)" orien="R270" />
        <iomarker fontsize="28" x="1216" y="384" name="I3(3:0)" orien="R270" />
        <branch name="I3(3:0)">
            <wire x2="1216" y1="384" y2="624" x1="1216" />
            <wire x2="1216" y1="624" y2="1120" x1="1216" />
            <wire x2="1216" y1="1120" y2="1648" x1="1216" />
            <wire x2="1216" y1="1648" y2="2192" x1="1216" />
            <wire x2="1216" y1="2192" y2="2208" x1="1216" />
            <wire x2="1216" y1="2208" y2="2416" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="800" y="384" name="I1(3:0)" orien="R270" />
        <iomarker fontsize="28" x="592" y="384" name="I0(3:0)" orien="R270" />
        <branch name="I0(3:0)">
            <wire x2="592" y1="384" y2="432" x1="592" />
            <wire x2="592" y1="432" y2="928" x1="592" />
            <wire x2="592" y1="928" y2="1456" x1="592" />
            <wire x2="592" y1="1456" y2="2000" x1="592" />
            <wire x2="592" y1="2000" y2="2416" x1="592" />
        </branch>
        <branch name="s(1:0)">
            <wire x2="1456" y1="128" y2="128" x1="1376" />
            <wire x2="1552" y1="128" y2="128" x1="1456" />
            <wire x2="1792" y1="128" y2="128" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1376" y="128" name="s(1:0)" orien="R180" />
        <branch name="I1(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1168" y="496" type="branch" />
            <wire x2="1168" y1="496" y2="496" x1="896" />
            <wire x2="1792" y1="496" y2="496" x1="1168" />
        </branch>
        <bustap x2="1456" y1="128" y2="224" x1="1456" />
        <branch name="s(1)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1456" y="400" type="branch" />
            <wire x2="1456" y1="224" y2="400" x1="1456" />
            <wire x2="1456" y1="400" y2="752" x1="1456" />
            <wire x2="1792" y1="752" y2="752" x1="1456" />
            <wire x2="1456" y1="752" y2="1248" x1="1456" />
            <wire x2="1792" y1="1248" y2="1248" x1="1456" />
            <wire x2="1456" y1="1248" y2="1776" x1="1456" />
            <wire x2="1456" y1="1776" y2="2320" x1="1456" />
            <wire x2="1792" y1="2320" y2="2320" x1="1456" />
            <wire x2="1792" y1="1776" y2="1776" x1="1456" />
        </branch>
        <bustap x2="1552" y1="128" y2="224" x1="1552" />
        <branch name="s(0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1552" y="400" type="branch" />
            <wire x2="1552" y1="224" y2="400" x1="1552" />
            <wire x2="1552" y1="400" y2="688" x1="1552" />
            <wire x2="1792" y1="688" y2="688" x1="1552" />
            <wire x2="1552" y1="688" y2="1184" x1="1552" />
            <wire x2="1792" y1="1184" y2="1184" x1="1552" />
            <wire x2="1552" y1="1184" y2="1712" x1="1552" />
            <wire x2="1552" y1="1712" y2="2256" x1="1552" />
            <wire x2="1792" y1="2256" y2="2256" x1="1552" />
            <wire x2="1792" y1="1712" y2="1712" x1="1552" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="1408" y1="2384" y2="2384" x1="1360" />
            <wire x2="1792" y1="2384" y2="2384" x1="1408" />
            <wire x2="1792" y1="816" y2="816" x1="1408" />
            <wire x2="1408" y1="816" y2="1312" x1="1408" />
            <wire x2="1792" y1="1312" y2="1312" x1="1408" />
            <wire x2="1408" y1="1312" y2="1840" x1="1408" />
            <wire x2="1408" y1="1840" y2="2384" x1="1408" />
            <wire x2="1792" y1="1840" y2="1840" x1="1408" />
        </branch>
        <instance x="1360" y="2448" name="XLXI_4" orien="R270" />
        <bustap x2="688" y1="432" y2="432" x1="592" />
        <branch name="I1(3:0)">
            <wire x2="800" y1="384" y2="496" x1="800" />
            <wire x2="800" y1="496" y2="656" x1="800" />
            <wire x2="800" y1="656" y2="992" x1="800" />
            <wire x2="800" y1="992" y2="1520" x1="800" />
            <wire x2="800" y1="1520" y2="2064" x1="800" />
            <wire x2="800" y1="2064" y2="2416" x1="800" />
        </branch>
        <instance x="1792" y="848" name="XLXI_1" orien="R0" />
        <bustap x2="896" y1="496" y2="496" x1="800" />
        <branch name="I2(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1360" y="560" type="branch" />
            <wire x2="1360" y1="560" y2="560" x1="1120" />
            <wire x2="1792" y1="560" y2="560" x1="1360" />
        </branch>
        <bustap x2="1120" y1="560" y2="560" x1="1024" />
        <bustap x2="1312" y1="624" y2="624" x1="1216" />
        <branch name="I3(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1376" y="624" type="branch" />
            <wire x2="1376" y1="624" y2="624" x1="1312" />
            <wire x2="1792" y1="624" y2="624" x1="1376" />
        </branch>
        <instance x="1792" y="1344" name="XLXI_2" orien="R0" />
        <instance x="1792" y="1872" name="XLXI_5" orien="R0" />
        <instance x="1792" y="2416" name="XLXI_3" orien="R0" />
        <branch name="I0(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1328" y="928" type="branch" />
            <wire x2="1328" y1="928" y2="928" x1="688" />
            <wire x2="1792" y1="928" y2="928" x1="1328" />
        </branch>
        <branch name="I1(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1296" y="992" type="branch" />
            <wire x2="1296" y1="992" y2="992" x1="896" />
            <wire x2="1792" y1="992" y2="992" x1="1296" />
        </branch>
        <branch name="I2(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1504" y="1056" type="branch" />
            <wire x2="1504" y1="1056" y2="1056" x1="1120" />
            <wire x2="1792" y1="1056" y2="1056" x1="1504" />
        </branch>
        <branch name="I3(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1488" y="1120" type="branch" />
            <wire x2="1488" y1="1120" y2="1120" x1="1312" />
            <wire x2="1792" y1="1120" y2="1120" x1="1488" />
        </branch>
        <bustap x2="688" y1="928" y2="928" x1="592" />
        <bustap x2="896" y1="992" y2="992" x1="800" />
        <bustap x2="1120" y1="1056" y2="1056" x1="1024" />
        <bustap x2="1312" y1="1120" y2="1120" x1="1216" />
        <bustap x2="1312" y1="1648" y2="1648" x1="1216" />
        <branch name="I3(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1360" y="1648" type="branch" />
            <wire x2="1360" y1="1648" y2="1648" x1="1312" />
            <wire x2="1792" y1="1648" y2="1648" x1="1360" />
        </branch>
        <bustap x2="1120" y1="1584" y2="1584" x1="1024" />
        <branch name="I2(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1344" y="1584" type="branch" />
            <wire x2="1344" y1="1584" y2="1584" x1="1120" />
            <wire x2="1792" y1="1584" y2="1584" x1="1344" />
        </branch>
        <bustap x2="896" y1="1520" y2="1520" x1="800" />
        <branch name="I1(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1280" y="1520" type="branch" />
            <wire x2="1280" y1="1520" y2="1520" x1="896" />
            <wire x2="1792" y1="1520" y2="1520" x1="1280" />
        </branch>
        <bustap x2="688" y1="1456" y2="1456" x1="592" />
        <branch name="I0(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1104" y="1456" type="branch" />
            <wire x2="1104" y1="1456" y2="1456" x1="688" />
            <wire x2="1792" y1="1456" y2="1456" x1="1104" />
        </branch>
        <bustap x2="688" y1="2000" y2="2000" x1="592" />
        <branch name="I0(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1280" y="2000" type="branch" />
            <wire x2="1280" y1="2000" y2="2000" x1="688" />
            <wire x2="1792" y1="2000" y2="2000" x1="1280" />
        </branch>
        <bustap x2="896" y1="2064" y2="2064" x1="800" />
        <branch name="I1(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1248" y="2064" type="branch" />
            <wire x2="1248" y1="2064" y2="2064" x1="896" />
            <wire x2="1792" y1="2064" y2="2064" x1="1248" />
        </branch>
        <bustap x2="1120" y1="2128" y2="2128" x1="1024" />
        <branch name="I2(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1264" y="2128" type="branch" />
            <wire x2="1264" y1="2128" y2="2128" x1="1120" />
            <wire x2="1792" y1="2128" y2="2128" x1="1264" />
        </branch>
        <bustap x2="2352" y1="2096" y2="2096" x1="2448" />
        <branch name="O(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2224" y="2096" type="branch" />
            <wire x2="2224" y1="2096" y2="2096" x1="2112" />
            <wire x2="2352" y1="2096" y2="2096" x1="2224" />
        </branch>
        <bustap x2="2352" y1="1552" y2="1552" x1="2448" />
        <branch name="O(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2240" y="1552" type="branch" />
            <wire x2="2240" y1="1552" y2="1552" x1="2112" />
            <wire x2="2352" y1="1552" y2="1552" x1="2240" />
        </branch>
        <branch name="O(3:0)">
            <wire x2="2448" y1="336" y2="480" x1="2448" />
            <wire x2="2448" y1="480" y2="528" x1="2448" />
            <wire x2="2448" y1="528" y2="1024" x1="2448" />
            <wire x2="2448" y1="1024" y2="1552" x1="2448" />
            <wire x2="2448" y1="1552" y2="2096" x1="2448" />
            <wire x2="2448" y1="2096" y2="2320" x1="2448" />
        </branch>
        <bustap x2="2352" y1="1024" y2="1024" x1="2448" />
        <branch name="O(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2224" y="1024" type="branch" />
            <wire x2="2224" y1="1024" y2="1024" x1="2112" />
            <wire x2="2352" y1="1024" y2="1024" x1="2224" />
        </branch>
        <branch name="I0(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1312" y="432" type="branch" />
            <wire x2="1312" y1="432" y2="432" x1="688" />
            <wire x2="1792" y1="432" y2="432" x1="1312" />
        </branch>
        <bustap x2="1312" y1="2192" y2="2192" x1="1216" />
        <branch name="I3(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1360" y="2192" type="branch" />
            <wire x2="1360" y1="2192" y2="2192" x1="1312" />
            <wire x2="1792" y1="2192" y2="2192" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="2448" y="2320" name="O(3:0)" orien="R90" />
        <bustap x2="2352" y1="528" y2="528" x1="2448" />
        <branch name="O(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2272" y="528" type="branch" />
            <wire x2="2272" y1="528" y2="528" x1="2112" />
            <wire x2="2352" y1="528" y2="528" x1="2272" />
        </branch>
    </sheet>
</drawing>