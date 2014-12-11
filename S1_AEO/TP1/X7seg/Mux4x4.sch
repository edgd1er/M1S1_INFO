<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="I1(3:0)" />
        <signal name="I2(3:0)" />
        <signal name="I0(3:0)" />
        <signal name="O(3:0)" />
        <signal name="s(1)" />
        <signal name="s(0)" />
        <signal name="s(1:0)" />
        <signal name="O(3)" />
        <signal name="O(2)" />
        <signal name="O(1)" />
        <signal name="O(0)" />
        <signal name="I3(3:0)" />
        <signal name="XLXN_84" />
        <signal name="I0(3)" />
        <signal name="I0(2)" />
        <signal name="I0(1)" />
        <signal name="I0(0)" />
        <signal name="I1(3)" />
        <signal name="I1(2)" />
        <signal name="I1(1)" />
        <signal name="I1(0)" />
        <signal name="I2(3)" />
        <signal name="I2(2)" />
        <signal name="I2(1)" />
        <signal name="I2(0)" />
        <signal name="I3(3)" />
        <signal name="I3(2)" />
        <signal name="I3(1)" />
        <signal name="I3(0)" />
        <port polarity="Input" name="I1(3:0)" />
        <port polarity="Input" name="I2(3:0)" />
        <port polarity="Input" name="I0(3:0)" />
        <port polarity="Output" name="O(3:0)" />
        <port polarity="Input" name="s(1:0)" />
        <port polarity="Input" name="I3(3:0)" />
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
            <blockpin signalname="XLXN_84" name="E" />
            <blockpin signalname="s(0)" name="S0" />
            <blockpin signalname="s(1)" name="S1" />
            <blockpin signalname="O(3)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_2">
            <blockpin signalname="I0(2)" name="D0" />
            <blockpin signalname="I1(2)" name="D1" />
            <blockpin signalname="I2(2)" name="D2" />
            <blockpin signalname="I3(2)" name="D3" />
            <blockpin signalname="XLXN_84" name="E" />
            <blockpin signalname="s(0)" name="S0" />
            <blockpin signalname="s(1)" name="S1" />
            <blockpin signalname="O(2)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_3">
            <blockpin signalname="I0(1)" name="D0" />
            <blockpin signalname="I1(1)" name="D1" />
            <blockpin signalname="I2(1)" name="D2" />
            <blockpin signalname="I3(1)" name="D3" />
            <blockpin signalname="XLXN_84" name="E" />
            <blockpin signalname="s(0)" name="S0" />
            <blockpin signalname="s(1)" name="S1" />
            <blockpin signalname="O(1)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_4">
            <blockpin signalname="I0(0)" name="D0" />
            <blockpin signalname="I1(0)" name="D1" />
            <blockpin name="D2" />
            <blockpin signalname="I3(0)" name="D3" />
            <blockpin signalname="XLXN_84" name="E" />
            <blockpin signalname="s(0)" name="S0" />
            <blockpin signalname="s(1)" name="S1" />
            <blockpin signalname="O(0)" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_7">
            <blockpin signalname="XLXN_84" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="I1(3:0)">
            <wire x2="416" y1="208" y2="368" x1="416" />
            <wire x2="416" y1="368" y2="544" x1="416" />
            <wire x2="416" y1="544" y2="880" x1="416" />
            <wire x2="416" y1="880" y2="1360" x1="416" />
            <wire x2="416" y1="1360" y2="1872" x1="416" />
            <wire x2="416" y1="1872" y2="2608" x1="416" />
        </branch>
        <iomarker fontsize="28" x="416" y="208" name="I1(3:0)" orien="R270" />
        <branch name="I2(3:0)">
            <wire x2="688" y1="224" y2="256" x1="688" />
            <wire x2="688" y1="256" y2="432" x1="688" />
            <wire x2="688" y1="432" y2="480" x1="688" />
            <wire x2="688" y1="480" y2="496" x1="688" />
            <wire x2="688" y1="496" y2="512" x1="688" />
            <wire x2="688" y1="512" y2="528" x1="688" />
            <wire x2="688" y1="528" y2="560" x1="688" />
            <wire x2="688" y1="560" y2="576" x1="688" />
            <wire x2="688" y1="576" y2="608" x1="688" />
            <wire x2="688" y1="608" y2="640" x1="688" />
            <wire x2="688" y1="640" y2="720" x1="688" />
            <wire x2="688" y1="720" y2="944" x1="688" />
            <wire x2="688" y1="944" y2="1424" x1="688" />
            <wire x2="688" y1="1424" y2="1936" x1="688" />
            <wire x2="688" y1="1936" y2="2624" x1="688" />
        </branch>
        <iomarker fontsize="28" x="688" y="224" name="I2(3:0)" orien="R270" />
        <instance x="1344" y="1232" name="XLXI_2" orien="R0" />
        <instance x="1344" y="1712" name="XLXI_3" orien="R0" />
        <instance x="1344" y="2224" name="XLXI_4" orien="R0" />
        <branch name="I0(3:0)">
            <wire x2="112" y1="208" y2="288" x1="112" />
            <wire x2="112" y1="288" y2="304" x1="112" />
            <wire x2="112" y1="304" y2="368" x1="112" />
            <wire x2="112" y1="368" y2="384" x1="112" />
            <wire x2="112" y1="384" y2="816" x1="112" />
            <wire x2="112" y1="816" y2="944" x1="112" />
            <wire x2="112" y1="944" y2="1296" x1="112" />
            <wire x2="112" y1="1296" y2="1808" x1="112" />
            <wire x2="112" y1="1808" y2="2608" x1="112" />
        </branch>
        <iomarker fontsize="28" x="112" y="208" name="I0(3:0)" orien="R270" />
        <instance x="1296" y="720" name="XLXI_1" orien="R0" />
        <iomarker fontsize="28" x="1792" y="96" name="O(3:0)" orien="R180" />
        <branch name="O(3:0)">
            <wire x2="1856" y1="96" y2="96" x1="1792" />
            <wire x2="1856" y1="96" y2="400" x1="1856" />
            <wire x2="1856" y1="400" y2="912" x1="1856" />
            <wire x2="1856" y1="912" y2="1392" x1="1856" />
            <wire x2="1856" y1="1392" y2="1904" x1="1856" />
            <wire x2="1856" y1="1904" y2="2224" x1="1856" />
        </branch>
        <branch name="s(1)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1056" y="184" type="branch" />
            <wire x2="1056" y1="144" y2="184" x1="1056" />
            <wire x2="1056" y1="184" y2="224" x1="1056" />
            <wire x2="1072" y1="224" y2="224" x1="1056" />
            <wire x2="1072" y1="224" y2="624" x1="1072" />
            <wire x2="1296" y1="624" y2="624" x1="1072" />
            <wire x2="1072" y1="624" y2="1136" x1="1072" />
            <wire x2="1344" y1="1136" y2="1136" x1="1072" />
            <wire x2="1072" y1="1136" y2="1616" x1="1072" />
            <wire x2="1344" y1="1616" y2="1616" x1="1072" />
            <wire x2="1072" y1="1616" y2="2128" x1="1072" />
            <wire x2="1072" y1="2128" y2="2288" x1="1072" />
            <wire x2="1344" y1="2128" y2="2128" x1="1072" />
        </branch>
        <branch name="s(0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1200" y="184" type="branch" />
            <wire x2="1200" y1="144" y2="184" x1="1200" />
            <wire x2="1200" y1="184" y2="224" x1="1200" />
            <wire x2="1200" y1="224" y2="560" x1="1200" />
            <wire x2="1296" y1="560" y2="560" x1="1200" />
            <wire x2="1200" y1="560" y2="1072" x1="1200" />
            <wire x2="1344" y1="1072" y2="1072" x1="1200" />
            <wire x2="1200" y1="1072" y2="1552" x1="1200" />
            <wire x2="1344" y1="1552" y2="1552" x1="1200" />
            <wire x2="1200" y1="1552" y2="2064" x1="1200" />
            <wire x2="1216" y1="2064" y2="2064" x1="1200" />
            <wire x2="1344" y1="2064" y2="2064" x1="1216" />
            <wire x2="1200" y1="2064" y2="2192" x1="1200" />
            <wire x2="1200" y1="2192" y2="2272" x1="1200" />
        </branch>
        <branch name="s(1:0)">
            <wire x2="1056" y1="48" y2="48" x1="976" />
            <wire x2="1200" y1="48" y2="48" x1="1056" />
            <wire x2="1440" y1="48" y2="48" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="976" y="48" name="s(1:0)" orien="R180" />
        <bustap x2="1056" y1="48" y2="144" x1="1056" />
        <bustap x2="1200" y1="48" y2="144" x1="1200" />
        <instance x="1200" y="2560" name="XLXI_7" orien="R180" />
        <bustap x2="1760" y1="400" y2="400" x1="1856" />
        <branch name="O(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1688" y="400" type="branch" />
            <wire x2="1688" y1="400" y2="400" x1="1616" />
            <wire x2="1760" y1="400" y2="400" x1="1688" />
        </branch>
        <bustap x2="1760" y1="912" y2="912" x1="1856" />
        <branch name="O(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1712" y="912" type="branch" />
            <wire x2="1712" y1="912" y2="912" x1="1664" />
            <wire x2="1760" y1="912" y2="912" x1="1712" />
        </branch>
        <bustap x2="1760" y1="1392" y2="1392" x1="1856" />
        <branch name="O(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1712" y="1392" type="branch" />
            <wire x2="1712" y1="1392" y2="1392" x1="1664" />
            <wire x2="1760" y1="1392" y2="1392" x1="1712" />
        </branch>
        <bustap x2="1760" y1="1904" y2="1904" x1="1856" />
        <branch name="O(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1712" y="1904" type="branch" />
            <wire x2="1712" y1="1904" y2="1904" x1="1664" />
            <wire x2="1760" y1="1904" y2="1904" x1="1712" />
        </branch>
        <branch name="I3(3:0)">
            <wire x2="832" y1="2304" y2="2304" x1="816" />
            <wire x2="832" y1="192" y2="480" x1="832" />
            <wire x2="832" y1="480" y2="496" x1="832" />
            <wire x2="832" y1="496" y2="1008" x1="832" />
            <wire x2="832" y1="1008" y2="1488" x1="832" />
            <wire x2="832" y1="1488" y2="2000" x1="832" />
            <wire x2="832" y1="2000" y2="2304" x1="832" />
        </branch>
        <iomarker fontsize="28" x="832" y="192" name="I3(3:0)" orien="R270" />
        <branch name="XLXN_84">
            <wire x2="1136" y1="2480" y2="2560" x1="1136" />
            <wire x2="1296" y1="2480" y2="2480" x1="1136" />
            <wire x2="1296" y1="688" y2="1200" x1="1296" />
            <wire x2="1296" y1="1200" y2="1680" x1="1296" />
            <wire x2="1296" y1="1680" y2="2192" x1="1296" />
            <wire x2="1296" y1="2192" y2="2480" x1="1296" />
            <wire x2="1344" y1="2192" y2="2192" x1="1296" />
            <wire x2="1344" y1="1680" y2="1680" x1="1296" />
            <wire x2="1344" y1="1200" y2="1200" x1="1296" />
        </branch>
        <bustap x2="208" y1="304" y2="304" x1="112" />
        <branch name="I0(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="752" y="304" type="branch" />
            <wire x2="752" y1="304" y2="304" x1="208" />
            <wire x2="1296" y1="304" y2="304" x1="752" />
        </branch>
        <bustap x2="208" y1="816" y2="816" x1="112" />
        <branch name="I0(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="776" y="816" type="branch" />
            <wire x2="776" y1="816" y2="816" x1="208" />
            <wire x2="1344" y1="816" y2="816" x1="776" />
        </branch>
        <bustap x2="208" y1="1296" y2="1296" x1="112" />
        <branch name="I0(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="776" y="1296" type="branch" />
            <wire x2="776" y1="1296" y2="1296" x1="208" />
            <wire x2="1344" y1="1296" y2="1296" x1="776" />
        </branch>
        <bustap x2="208" y1="1808" y2="1808" x1="112" />
        <branch name="I0(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="776" y="1808" type="branch" />
            <wire x2="776" y1="1808" y2="1808" x1="208" />
            <wire x2="1344" y1="1808" y2="1808" x1="776" />
        </branch>
        <bustap x2="512" y1="368" y2="368" x1="416" />
        <branch name="I1(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="904" y="368" type="branch" />
            <wire x2="904" y1="368" y2="368" x1="512" />
            <wire x2="1296" y1="368" y2="368" x1="904" />
        </branch>
        <bustap x2="512" y1="880" y2="880" x1="416" />
        <branch name="I1(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="928" y="880" type="branch" />
            <wire x2="928" y1="880" y2="880" x1="512" />
            <wire x2="1344" y1="880" y2="880" x1="928" />
        </branch>
        <bustap x2="512" y1="1360" y2="1360" x1="416" />
        <branch name="I1(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="928" y="1360" type="branch" />
            <wire x2="928" y1="1360" y2="1360" x1="512" />
            <wire x2="1344" y1="1360" y2="1360" x1="928" />
        </branch>
        <bustap x2="512" y1="1872" y2="1872" x1="416" />
        <branch name="I1(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="928" y="1872" type="branch" />
            <wire x2="928" y1="1872" y2="1872" x1="512" />
            <wire x2="1344" y1="1872" y2="1872" x1="928" />
        </branch>
        <bustap x2="784" y1="432" y2="432" x1="688" />
        <branch name="I2(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1040" y="432" type="branch" />
            <wire x2="1040" y1="432" y2="432" x1="784" />
            <wire x2="1296" y1="432" y2="432" x1="1040" />
        </branch>
        <bustap x2="784" y1="944" y2="944" x1="688" />
        <branch name="I2(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1064" y="944" type="branch" />
            <wire x2="1064" y1="944" y2="944" x1="784" />
            <wire x2="1344" y1="944" y2="944" x1="1064" />
        </branch>
        <bustap x2="784" y1="1424" y2="1424" x1="688" />
        <branch name="I2(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1064" y="1424" type="branch" />
            <wire x2="1064" y1="1424" y2="1424" x1="784" />
            <wire x2="1344" y1="1424" y2="1424" x1="1064" />
        </branch>
        <bustap x2="784" y1="1936" y2="1936" x1="688" />
        <branch name="I2(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1056" y="1936" type="branch" />
            <wire x2="1056" y1="1936" y2="1936" x1="784" />
            <wire x2="1328" y1="1936" y2="1936" x1="1056" />
        </branch>
        <bustap x2="928" y1="496" y2="496" x1="832" />
        <branch name="I3(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1112" y="496" type="branch" />
            <wire x2="1112" y1="496" y2="496" x1="928" />
            <wire x2="1296" y1="496" y2="496" x1="1112" />
        </branch>
        <bustap x2="928" y1="1008" y2="1008" x1="832" />
        <branch name="I3(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1136" y="1008" type="branch" />
            <wire x2="1136" y1="1008" y2="1008" x1="928" />
            <wire x2="1344" y1="1008" y2="1008" x1="1136" />
        </branch>
        <bustap x2="928" y1="1488" y2="1488" x1="832" />
        <branch name="I3(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1136" y="1488" type="branch" />
            <wire x2="1136" y1="1488" y2="1488" x1="928" />
            <wire x2="1344" y1="1488" y2="1488" x1="1136" />
        </branch>
        <bustap x2="928" y1="2000" y2="2000" x1="832" />
        <branch name="I3(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1136" y="2000" type="branch" />
            <wire x2="1136" y1="2000" y2="2000" x1="928" />
            <wire x2="1344" y1="2000" y2="2000" x1="1136" />
        </branch>
    </sheet>
</drawing>