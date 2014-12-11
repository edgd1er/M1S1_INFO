<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="clk100" />
        <signal name="clk3" />
        <signal name="XLXN_7" />
        <signal name="btn0" />
        <signal name="XLXN_10" />
        <signal name="din(3:0)" />
        <signal name="sevenseg(6:0)" />
        <signal name="anodes(3:0)" />
        <signal name="din(15:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="btn0" />
        <port polarity="Output" name="sevenseg(6:0)" />
        <port polarity="Output" name="anodes(3:0)" />
        <blockdef name="timer">
            <timestamp>2014-10-3T9:49:39</timestamp>
            <rect width="544" x="32" y="32" height="1056" />
            <line x2="32" y1="80" y2="80" x1="0" />
            <line x2="576" y1="80" y2="80" x1="608" />
            <line x2="576" y1="176" y2="176" x1="608" />
        </blockdef>
        <blockdef name="Enable190">
            <timestamp>2014-10-16T8:47:18</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="pulse">
            <timestamp>2014-10-3T9:27:44</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="RDM">
            <timestamp>2014-10-3T9:29:11</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="afficheur">
            <timestamp>2014-10-3T9:36:51</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="d3_8e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-576" y2="-576" x1="0" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="320" y1="-576" y2="-576" x1="384" />
            <line x2="320" y1="-512" y2="-512" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <rect width="256" x="64" y="-640" height="576" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <block symbolname="timer" name="XLXI_1">
            <blockpin signalname="clk" name="clk_in1" />
            <blockpin signalname="clk100" name="clk_out1" />
            <blockpin signalname="clk3" name="clk_out2" />
        </block>
        <block symbolname="Enable190" name="XLXI_2">
            <blockpin signalname="clk100" name="clk" />
            <blockpin signalname="XLXN_7" name="Enable190" />
        </block>
        <block symbolname="pulse" name="XLXI_3">
            <blockpin signalname="btn0" name="inp" />
            <blockpin signalname="XLXN_7" name="E" />
            <blockpin signalname="clk100" name="clk" />
            <blockpin signalname="XLXN_10" name="outp" />
        </block>
        <block symbolname="RDM" name="XLXI_4">
            <blockpin signalname="clk100" name="clk" />
            <blockpin signalname="XLXN_10" name="CE" />
            <blockpin signalname="din(3:0)" name="Q(3:0)" />
        </block>
        <block symbolname="afficheur" name="XLXI_5">
            <blockpin signalname="clk100" name="clk" />
            <blockpin signalname="din(15:0)" name="din(15:0)" />
            <blockpin signalname="sevenseg(6:0)" name="sevenseg(6:0)" />
            <blockpin signalname="anodes(3:0)" name="anodes(3:0)" />
        </block>
        <block symbolname="d3_8e" name="XLXI_6">
            <blockpin name="A0" />
            <blockpin name="A1" />
            <blockpin name="A2" />
            <blockpin name="E" />
            <blockpin name="D0" />
            <blockpin name="D1" />
            <blockpin name="D2" />
            <blockpin name="D3" />
            <blockpin name="D4" />
            <blockpin name="D5" />
            <blockpin name="D6" />
            <blockpin name="D7" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <wire x2="704" y1="128" y2="128" x1="656" />
        </branch>
        <iomarker fontsize="28" x="656" y="128" name="clk" orien="R180" />
        <instance x="528" y="1712" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1264" y="1552" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1888" y="1424" name="XLXI_4" orien="R0">
        </instance>
        <branch name="clk100">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="480" y="1680" type="branch" />
            <wire x2="480" y1="1680" y2="1680" x1="448" />
            <wire x2="528" y1="1680" y2="1680" x1="480" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="912" y1="1456" y2="1680" x1="912" />
            <wire x2="1264" y1="1456" y2="1456" x1="912" />
        </branch>
        <branch name="clk100">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1216" y="1520" type="branch" />
            <wire x2="1216" y1="1520" y2="1520" x1="1184" />
            <wire x2="1264" y1="1520" y2="1520" x1="1216" />
        </branch>
        <branch name="btn0">
            <wire x2="1264" y1="1392" y2="1392" x1="832" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1888" y1="1392" y2="1392" x1="1648" />
        </branch>
        <branch name="clk100">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1808" y="1328" type="branch" />
            <wire x2="1808" y1="1328" y2="1328" x1="1776" />
            <wire x2="1888" y1="1328" y2="1328" x1="1808" />
        </branch>
        <instance x="2688" y="1712" name="XLXI_5" orien="R0">
        </instance>
        <branch name="clk100">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2640" y="1616" type="branch" />
            <wire x2="2640" y1="1616" y2="1616" x1="2624" />
            <wire x2="2688" y1="1616" y2="1616" x1="2640" />
        </branch>
        <bustap x2="2432" y1="1328" y2="1328" x1="2528" />
        <branch name="din(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2352" y="1328" type="branch" />
            <wire x2="2352" y1="1328" y2="1328" x1="2272" />
            <wire x2="2432" y1="1328" y2="1328" x1="2352" />
        </branch>
        <branch name="sevenseg(6:0)">
            <wire x2="3104" y1="1616" y2="1616" x1="3072" />
        </branch>
        <branch name="anodes(3:0)">
            <wire x2="3104" y1="1680" y2="1680" x1="3072" />
        </branch>
        <iomarker fontsize="28" x="832" y="1392" name="btn0" orien="R180" />
        <iomarker fontsize="28" x="3104" y="1616" name="sevenseg(6:0)" orien="R0" />
        <iomarker fontsize="28" x="3104" y="1680" name="anodes(3:0)" orien="R0" />
        <instance x="704" y="48" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk100">
            <wire x2="1408" y1="128" y2="128" x1="1312" />
        </branch>
        <branch name="clk3">
            <wire x2="1408" y1="224" y2="224" x1="1312" />
        </branch>
        <instance x="2512" y="816" name="XLXI_6" orien="R0" />
        <branch name="din(15:0)">
            <wire x2="2528" y1="1200" y2="1328" x1="2528" />
            <wire x2="2528" y1="1328" y2="1680" x1="2528" />
            <wire x2="2688" y1="1680" y2="1680" x1="2528" />
        </branch>
    </sheet>
</drawing>