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
        <signal name="I1(3:0)" />
        <signal name="I3(3:0)" />
        <signal name="O(3:0)" />
        <signal name="S(1:0)" />
        <signal name="I0(3)" />
        <signal name="I1(3)" />
        <signal name="I2(3)" />
        <signal name="I3(3)" />
        <signal name="O(3)" />
        <signal name="I0(2)" />
        <signal name="I1(2)" />
        <signal name="I2(2)" />
        <signal name="I3(2)" />
        <signal name="I0(1)" />
        <signal name="I1(1)" />
        <signal name="I2(1)" />
        <signal name="I3(1)" />
        <signal name="I1(0)" />
        <signal name="I2(0)" />
        <signal name="I3(0)" />
        <signal name="O(2)" />
        <signal name="O(1)" />
        <signal name="O(0)" />
        <signal name="XLXN_47" />
        <signal name="S(0)" />
        <signal name="S(1)" />
        <signal name="I0(0)" />
        <port polarity="Input" name="I0(3:0)" />
        <port polarity="Input" name="I2(3:0)" />
        <port polarity="Input" name="I1(3:0)" />
        <port polarity="Input" name="I3(3:0)" />
        <port polarity="Output" name="O(3:0)" />
        <port polarity="Input" name="S(1:0)" />
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
            <blockpin signalname="XLXN_47" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="O(3)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_2">
            <blockpin signalname="I0(2)" name="D0" />
            <blockpin signalname="I1(2)" name="D1" />
            <blockpin signalname="I2(2)" name="D2" />
            <blockpin signalname="I3(2)" name="D3" />
            <blockpin signalname="XLXN_47" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="O(2)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_3">
            <blockpin signalname="I0(1)" name="D0" />
            <blockpin signalname="I1(1)" name="D1" />
            <blockpin signalname="I2(1)" name="D2" />
            <blockpin signalname="I3(1)" name="D3" />
            <blockpin signalname="XLXN_47" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="O(1)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_4">
            <blockpin signalname="I0(0)" name="D0" />
            <blockpin signalname="I1(0)" name="D1" />
            <blockpin signalname="I2(0)" name="D2" />
            <blockpin signalname="I3(0)" name="D3" />
            <blockpin signalname="XLXN_47" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="O(0)" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_10">
            <blockpin signalname="XLXN_47" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="I0(3:0)">
            <wire x2="560" y1="256" y2="400" x1="560" />
            <wire x2="560" y1="400" y2="960" x1="560" />
            <wire x2="560" y1="960" y2="1472" x1="560" />
            <wire x2="560" y1="1472" y2="1984" x1="560" />
            <wire x2="560" y1="1984" y2="2176" x1="560" />
            <wire x2="560" y1="2176" y2="2480" x1="560" />
        </branch>
        <branch name="I2(3:0)">
            <wire x2="944" y1="256" y2="528" x1="944" />
            <wire x2="944" y1="528" y2="1088" x1="944" />
            <wire x2="944" y1="1088" y2="1600" x1="944" />
            <wire x2="944" y1="1600" y2="2112" x1="944" />
            <wire x2="944" y1="2112" y2="2496" x1="944" />
        </branch>
        <branch name="I1(3:0)">
            <wire x2="752" y1="256" y2="384" x1="752" />
            <wire x2="752" y1="384" y2="464" x1="752" />
            <wire x2="752" y1="464" y2="608" x1="752" />
            <wire x2="752" y1="608" y2="1008" x1="752" />
            <wire x2="752" y1="1008" y2="1520" x1="752" />
            <wire x2="752" y1="1520" y2="2032" x1="752" />
            <wire x2="752" y1="2032" y2="2112" x1="752" />
            <wire x2="752" y1="2112" y2="2432" x1="752" />
        </branch>
        <branch name="I3(3:0)">
            <wire x2="1120" y1="256" y2="400" x1="1120" />
            <wire x2="1120" y1="400" y2="448" x1="1120" />
            <wire x2="1120" y1="448" y2="576" x1="1120" />
            <wire x2="1120" y1="576" y2="1136" x1="1120" />
            <wire x2="1120" y1="1136" y2="1664" x1="1120" />
            <wire x2="1120" y1="1664" y2="2176" x1="1120" />
            <wire x2="1120" y1="2176" y2="2464" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="560" y="256" name="I0(3:0)" orien="R270" />
        <iomarker fontsize="28" x="944" y="256" name="I2(3:0)" orien="R270" />
        <iomarker fontsize="28" x="752" y="256" name="I1(3:0)" orien="R270" />
        <iomarker fontsize="28" x="1120" y="256" name="I3(3:0)" orien="R270" />
        <instance x="1552" y="1376" name="XLXI_2" orien="R0" />
        <instance x="1584" y="816" name="XLXI_1" orien="R0" />
        <branch name="O(3:0)">
            <wire x2="2672" y1="192" y2="496" x1="2672" />
            <wire x2="2672" y1="496" y2="1056" x1="2672" />
            <wire x2="2672" y1="1056" y2="1568" x1="2672" />
            <wire x2="2672" y1="1568" y2="2080" x1="2672" />
            <wire x2="2672" y1="2080" y2="2400" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2672" y="2400" name="O(3:0)" orien="R90" />
        <branch name="S(1:0)">
            <wire x2="1344" y1="64" y2="64" x1="1168" />
            <wire x2="1440" y1="64" y2="64" x1="1344" />
            <wire x2="2192" y1="64" y2="64" x1="1440" />
        </branch>
        <iomarker fontsize="28" x="1168" y="64" name="S(1:0)" orien="R180" />
        <bustap x2="656" y1="400" y2="400" x1="560" />
        <bustap x2="848" y1="464" y2="464" x1="752" />
        <bustap x2="1040" y1="528" y2="528" x1="944" />
        <bustap x2="1216" y1="576" y2="576" x1="1120" />
        <branch name="I0(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="672" y="400" type="branch" />
            <wire x2="672" y1="400" y2="400" x1="656" />
            <wire x2="720" y1="400" y2="400" x1="672" />
            <wire x2="720" y1="368" y2="400" x1="720" />
            <wire x2="1184" y1="368" y2="368" x1="720" />
            <wire x2="1184" y1="368" y2="400" x1="1184" />
            <wire x2="1584" y1="400" y2="400" x1="1184" />
        </branch>
        <branch name="I1(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="880" y="464" type="branch" />
            <wire x2="880" y1="464" y2="464" x1="848" />
            <wire x2="1584" y1="464" y2="464" x1="880" />
        </branch>
        <branch name="I2(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1088" y="528" type="branch" />
            <wire x2="1088" y1="528" y2="528" x1="1040" />
            <wire x2="1584" y1="528" y2="528" x1="1088" />
        </branch>
        <branch name="I3(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1280" y="576" type="branch" />
            <wire x2="1280" y1="576" y2="576" x1="1216" />
            <wire x2="1392" y1="576" y2="576" x1="1280" />
            <wire x2="1392" y1="576" y2="592" x1="1392" />
            <wire x2="1584" y1="592" y2="592" x1="1392" />
        </branch>
        <bustap x2="656" y1="960" y2="960" x1="560" />
        <bustap x2="848" y1="1008" y2="1008" x1="752" />
        <bustap x2="1040" y1="1088" y2="1088" x1="944" />
        <bustap x2="1216" y1="1136" y2="1136" x1="1120" />
        <instance x="1536" y="1888" name="XLXI_3" orien="R0" />
        <instance x="1552" y="2400" name="XLXI_4" orien="R0" />
        <bustap x2="656" y1="1472" y2="1472" x1="560" />
        <bustap x2="848" y1="1520" y2="1520" x1="752" />
        <bustap x2="1040" y1="1600" y2="1600" x1="944" />
        <bustap x2="1216" y1="1664" y2="1664" x1="1120" />
        <bustap x2="848" y1="2032" y2="2032" x1="752" />
        <bustap x2="1040" y1="2112" y2="2112" x1="944" />
        <bustap x2="1216" y1="2176" y2="2176" x1="1120" />
        <bustap x2="1344" y1="64" y2="160" x1="1344" />
        <bustap x2="1440" y1="64" y2="160" x1="1440" />
        <bustap x2="2576" y1="496" y2="496" x1="2672" />
        <branch name="O(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2432" y="496" type="branch" />
            <wire x2="2432" y1="496" y2="496" x1="1904" />
            <wire x2="2560" y1="496" y2="496" x1="2432" />
            <wire x2="2576" y1="496" y2="496" x1="2560" />
        </branch>
        <bustap x2="2576" y1="1056" y2="1056" x1="2672" />
        <bustap x2="2576" y1="1568" y2="1568" x1="2672" />
        <bustap x2="2576" y1="2080" y2="2080" x1="2672" />
        <branch name="I0(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="688" y="960" type="branch" />
            <wire x2="688" y1="960" y2="960" x1="656" />
            <wire x2="1552" y1="960" y2="960" x1="688" />
        </branch>
        <branch name="I1(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="896" y="1008" type="branch" />
            <wire x2="896" y1="1008" y2="1008" x1="848" />
            <wire x2="1200" y1="1008" y2="1008" x1="896" />
            <wire x2="1200" y1="1008" y2="1024" x1="1200" />
            <wire x2="1552" y1="1024" y2="1024" x1="1200" />
        </branch>
        <branch name="I2(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1072" y="1088" type="branch" />
            <wire x2="1072" y1="1088" y2="1088" x1="1040" />
            <wire x2="1552" y1="1088" y2="1088" x1="1072" />
        </branch>
        <branch name="I3(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1248" y="1136" type="branch" />
            <wire x2="1248" y1="1136" y2="1136" x1="1216" />
            <wire x2="1376" y1="1136" y2="1136" x1="1248" />
            <wire x2="1376" y1="1136" y2="1152" x1="1376" />
            <wire x2="1552" y1="1152" y2="1152" x1="1376" />
        </branch>
        <branch name="I0(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="672" y="1472" type="branch" />
            <wire x2="672" y1="1472" y2="1472" x1="656" />
            <wire x2="1536" y1="1472" y2="1472" x1="672" />
        </branch>
        <branch name="I1(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="896" y="1520" type="branch" />
            <wire x2="896" y1="1520" y2="1520" x1="848" />
            <wire x2="1184" y1="1520" y2="1520" x1="896" />
            <wire x2="1184" y1="1520" y2="1536" x1="1184" />
            <wire x2="1536" y1="1536" y2="1536" x1="1184" />
        </branch>
        <branch name="I2(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1072" y="1600" type="branch" />
            <wire x2="1072" y1="1600" y2="1600" x1="1040" />
            <wire x2="1536" y1="1600" y2="1600" x1="1072" />
        </branch>
        <branch name="I3(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1248" y="1664" type="branch" />
            <wire x2="1248" y1="1664" y2="1664" x1="1216" />
            <wire x2="1536" y1="1664" y2="1664" x1="1248" />
        </branch>
        <branch name="I1(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="864" y="2032" type="branch" />
            <wire x2="864" y1="2032" y2="2032" x1="848" />
            <wire x2="1200" y1="2032" y2="2032" x1="864" />
            <wire x2="1200" y1="2032" y2="2048" x1="1200" />
            <wire x2="1552" y1="2048" y2="2048" x1="1200" />
        </branch>
        <branch name="I2(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1056" y="2112" type="branch" />
            <wire x2="1056" y1="2112" y2="2112" x1="1040" />
            <wire x2="1552" y1="2112" y2="2112" x1="1056" />
        </branch>
        <branch name="I3(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1232" y="2176" type="branch" />
            <wire x2="1232" y1="2176" y2="2176" x1="1216" />
            <wire x2="1552" y1="2176" y2="2176" x1="1232" />
        </branch>
        <branch name="O(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2432" y="1056" type="branch" />
            <wire x2="2432" y1="1056" y2="1056" x1="1872" />
            <wire x2="2576" y1="1056" y2="1056" x1="2432" />
        </branch>
        <branch name="O(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2384" y="1568" type="branch" />
            <wire x2="2384" y1="1568" y2="1568" x1="1856" />
            <wire x2="2576" y1="1568" y2="1568" x1="2384" />
        </branch>
        <branch name="O(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2352" y="2080" type="branch" />
            <wire x2="2352" y1="2080" y2="2080" x1="1872" />
            <wire x2="2576" y1="2080" y2="2080" x1="2352" />
        </branch>
        <instance x="1264" y="2432" name="XLXI_10" orien="R270" />
        <branch name="XLXN_47">
            <wire x2="1280" y1="2368" y2="2368" x1="1264" />
            <wire x2="1552" y1="2368" y2="2368" x1="1280" />
            <wire x2="1584" y1="784" y2="784" x1="1280" />
            <wire x2="1280" y1="784" y2="1344" x1="1280" />
            <wire x2="1280" y1="1344" y2="1440" x1="1280" />
            <wire x2="1280" y1="1440" y2="1856" x1="1280" />
            <wire x2="1280" y1="1856" y2="1968" x1="1280" />
            <wire x2="1280" y1="1968" y2="2368" x1="1280" />
            <wire x2="1536" y1="1856" y2="1856" x1="1280" />
            <wire x2="1552" y1="1344" y2="1344" x1="1280" />
        </branch>
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1440" y="192" type="branch" />
            <wire x2="1440" y1="160" y2="192" x1="1440" />
            <wire x2="1440" y1="192" y2="656" x1="1440" />
            <wire x2="1584" y1="656" y2="656" x1="1440" />
            <wire x2="1440" y1="656" y2="1216" x1="1440" />
            <wire x2="1552" y1="1216" y2="1216" x1="1440" />
            <wire x2="1440" y1="1216" y2="1728" x1="1440" />
            <wire x2="1536" y1="1728" y2="1728" x1="1440" />
            <wire x2="1440" y1="1728" y2="2240" x1="1440" />
            <wire x2="1552" y1="2240" y2="2240" x1="1440" />
        </branch>
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1344" y="192" type="branch" />
            <wire x2="1344" y1="160" y2="192" x1="1344" />
            <wire x2="1344" y1="192" y2="720" x1="1344" />
            <wire x2="1520" y1="720" y2="720" x1="1344" />
            <wire x2="1584" y1="720" y2="720" x1="1520" />
            <wire x2="1520" y1="720" y2="1280" x1="1520" />
            <wire x2="1552" y1="1280" y2="1280" x1="1520" />
            <wire x2="1520" y1="1280" y2="1792" x1="1520" />
            <wire x2="1536" y1="1792" y2="1792" x1="1520" />
            <wire x2="1520" y1="1792" y2="2304" x1="1520" />
            <wire x2="1552" y1="2304" y2="2304" x1="1520" />
        </branch>
        <bustap x2="656" y1="1984" y2="1984" x1="560" />
        <branch name="I0(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="688" y="1984" type="branch" />
            <wire x2="688" y1="1984" y2="1984" x1="656" />
            <wire x2="1552" y1="1984" y2="1984" x1="688" />
        </branch>
    </sheet>
</drawing>