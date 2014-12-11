<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="E" />
        <signal name="INP" />
        <signal name="q0" />
        <signal name="q2" />
        <signal name="clk" />
        <signal name="q3" />
        <signal name="q4" />
        <signal name="q5" />
        <signal name="o1" />
        <signal name="outp" />
        <signal name="q1" />
        <signal name="XLXN_33" />
        <port polarity="Input" name="E" />
        <port polarity="Input" name="INP" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="outp" />
        <blockdef name="fde">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
        </blockdef>
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="fde" name="XLXI_1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="INP" name="D" />
            <blockpin signalname="q0" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_2">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="q0" name="D" />
            <blockpin signalname="q1" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_3">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="q1" name="D" />
            <blockpin signalname="q2" name="Q" />
        </block>
        <block symbolname="fd" name="FD_4">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="o1" name="D" />
            <blockpin signalname="q3" name="Q" />
        </block>
        <block symbolname="fd" name="FD_5">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="q3" name="D" />
            <blockpin signalname="q4" name="Q" />
        </block>
        <block symbolname="fd" name="FD_6">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="q4" name="D" />
            <blockpin signalname="q5" name="Q" />
        </block>
        <block symbolname="and3" name="myAND3">
            <blockpin signalname="q2" name="I0" />
            <blockpin signalname="q1" name="I1" />
            <blockpin signalname="q0" name="I2" />
            <blockpin signalname="o1" name="O" />
        </block>
        <block symbolname="and3" name="myAND3a">
            <blockpin signalname="XLXN_33" name="I0" />
            <blockpin signalname="q4" name="I1" />
            <blockpin signalname="q3" name="I2" />
            <blockpin signalname="outp" name="O" />
        </block>
        <block symbolname="inv" name="myINV">
            <blockpin signalname="q5" name="I" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="576" y="992" name="XLXI_1" orien="R0" />
        <instance x="1376" y="992" name="XLXI_2" orien="R0" />
        <instance x="2192" y="976" name="XLXI_3" orien="R0" />
        <branch name="E">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="567" y="1184" type="branch" />
            <wire x2="336" y1="1184" y2="1184" x1="304" />
            <wire x2="567" y1="1184" y2="1184" x1="336" />
            <wire x2="1072" y1="1184" y2="1184" x1="567" />
            <wire x2="1968" y1="1184" y2="1184" x1="1072" />
            <wire x2="336" y1="800" y2="1184" x1="336" />
            <wire x2="576" y1="800" y2="800" x1="336" />
            <wire x2="1376" y1="800" y2="800" x1="1072" />
            <wire x2="1072" y1="800" y2="1184" x1="1072" />
            <wire x2="2192" y1="784" y2="784" x1="1968" />
            <wire x2="1968" y1="784" y2="1184" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="304" y="1184" name="E" orien="R180" />
        <iomarker fontsize="28" x="240" y="736" name="INP" orien="R180" />
        <branch name="INP">
            <wire x2="576" y1="736" y2="736" x1="240" />
        </branch>
        <instance x="432" y="1856" name="FD_4" orien="R0" />
        <instance x="1312" y="1856" name="FD_5" orien="R0" />
        <instance x="2176" y="1856" name="FD_6" orien="R0" />
        <branch name="q0">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1024" y="271" type="branch" />
            <wire x2="1024" y1="736" y2="736" x1="960" />
            <wire x2="1376" y1="736" y2="736" x1="1024" />
            <wire x2="2704" y1="128" y2="128" x1="1024" />
            <wire x2="1024" y1="128" y2="271" x1="1024" />
            <wire x2="1024" y1="271" y2="736" x1="1024" />
        </branch>
        <instance x="2704" y="320" name="myAND3" orien="R0" />
        <branch name="q2">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2704" y="507" type="branch" />
            <wire x2="2704" y1="720" y2="720" x1="2576" />
            <wire x2="2704" y1="256" y2="507" x1="2704" />
            <wire x2="2704" y1="507" y2="720" x1="2704" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="160" y="864" type="branch" />
            <wire x2="160" y1="2096" y2="2096" x1="80" />
            <wire x2="1248" y1="2096" y2="2096" x1="160" />
            <wire x2="1920" y1="2096" y2="2096" x1="1248" />
            <wire x2="160" y1="864" y2="1040" x1="160" />
            <wire x2="1040" y1="1040" y2="1040" x1="160" />
            <wire x2="160" y1="1040" y2="1104" x1="160" />
            <wire x2="1808" y1="1104" y2="1104" x1="160" />
            <wire x2="160" y1="1104" y2="1728" x1="160" />
            <wire x2="160" y1="1728" y2="2096" x1="160" />
            <wire x2="432" y1="1728" y2="1728" x1="160" />
            <wire x2="576" y1="864" y2="864" x1="160" />
            <wire x2="1040" y1="864" y2="1040" x1="1040" />
            <wire x2="1376" y1="864" y2="864" x1="1040" />
            <wire x2="1312" y1="1728" y2="1728" x1="1248" />
            <wire x2="1248" y1="1728" y2="2096" x1="1248" />
            <wire x2="1808" y1="848" y2="1104" x1="1808" />
            <wire x2="2192" y1="848" y2="848" x1="1808" />
            <wire x2="2176" y1="1728" y2="1728" x1="1920" />
            <wire x2="1920" y1="1728" y2="2096" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="80" y="2096" name="clk" orien="R180" />
        <branch name="q3">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1149" y="1264" type="branch" />
            <wire x2="928" y1="1600" y2="1600" x1="816" />
            <wire x2="1312" y1="1600" y2="1600" x1="928" />
            <wire x2="928" y1="1264" y2="1600" x1="928" />
            <wire x2="1149" y1="1264" y2="1264" x1="928" />
            <wire x2="2672" y1="1264" y2="1264" x1="1149" />
        </branch>
        <instance x="2672" y="1456" name="myAND3a" orien="R0" />
        <branch name="q4">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2073" y="1328" type="branch" />
            <wire x2="1760" y1="1600" y2="1600" x1="1696" />
            <wire x2="2176" y1="1600" y2="1600" x1="1760" />
            <wire x2="1760" y1="1328" y2="1600" x1="1760" />
            <wire x2="2073" y1="1328" y2="1328" x1="1760" />
            <wire x2="2672" y1="1328" y2="1328" x1="2073" />
        </branch>
        <branch name="q5">
            <attrtext style="alignment:SOFT-TCENTER" attrname="Name" x="2640" y="1744" type="branch" />
            <wire x2="2640" y1="1600" y2="1600" x1="2560" />
            <wire x2="2640" y1="1600" y2="1744" x1="2640" />
            <wire x2="2848" y1="1744" y2="1744" x1="2640" />
            <wire x2="2848" y1="1664" y2="1744" x1="2848" />
        </branch>
        <branch name="o1">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="368" y="1600" type="branch" />
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2176" y="1856" type="branch" />
            <wire x2="432" y1="1600" y2="1600" x1="368" />
            <wire x2="368" y1="1600" y2="1856" x1="368" />
            <wire x2="2176" y1="1856" y2="1856" x1="368" />
            <wire x2="3040" y1="1856" y2="1856" x1="2176" />
            <wire x2="3040" y1="192" y2="192" x1="2960" />
            <wire x2="3040" y1="192" y2="1856" x1="3040" />
        </branch>
        <branch name="outp">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3141" y="1328" type="branch" />
            <wire x2="3141" y1="1328" y2="1328" x1="2928" />
            <wire x2="3280" y1="1328" y2="1328" x1="3141" />
        </branch>
        <iomarker fontsize="28" x="3280" y="1328" name="outp" orien="R0" />
        <branch name="q1">
            <wire x2="1792" y1="736" y2="736" x1="1760" />
            <wire x2="2704" y1="192" y2="192" x1="1792" />
            <wire x2="1792" y1="192" y2="384" x1="1792" />
            <wire x2="1792" y1="384" y2="720" x1="1792" />
            <wire x2="1792" y1="720" y2="736" x1="1792" />
            <wire x2="2192" y1="720" y2="720" x1="1792" />
        </branch>
        <instance x="2880" y="1664" name="myINV" orien="R270" />
        <branch name="XLXN_33">
            <wire x2="2672" y1="1392" y2="1408" x1="2672" />
            <wire x2="2848" y1="1408" y2="1408" x1="2672" />
            <wire x2="2848" y1="1408" y2="1440" x1="2848" />
        </branch>
    </sheet>
</drawing>