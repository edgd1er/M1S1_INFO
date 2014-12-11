<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="din(15:0)" />
        <signal name="din(3:0)" />
        <signal name="din(11:8)" />
        <signal name="din(15:12)" />
        <signal name="din(7:4)" />
        <signal name="sel(1:0)" />
        <signal name="XLXN_14(3:0)" />
        <signal name="sevenseg(6:0)" />
        <signal name="XLXN_29" />
        <signal name="anodes(3:0)" />
        <signal name="sel(0)" />
        <signal name="sel(1)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="din(15:0)" />
        <port polarity="Output" name="sevenseg(6:0)" />
        <port polarity="Output" name="anodes(3:0)" />
        <blockdef name="Mux4x4">
            <timestamp>2014-9-26T13:10:57</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="X7seg">
            <timestamp>2014-9-26T9:40:48</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="cb2ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
        </blockdef>
        <blockdef name="Enable190">
            <timestamp>2014-10-16T8:47:18</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="shiftanodes">
            <timestamp>2014-9-26T13:45:13</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="Enable190" name="XLXI_9">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_29" name="Enable190" />
        </block>
        <block symbolname="Mux4x4" name="XLXI_6">
            <blockpin signalname="din(3:0)" name="I0(3:0)" />
            <blockpin signalname="din(11:8)" name="I2(3:0)" />
            <blockpin signalname="din(15:12)" name="I3(3:0)" />
            <blockpin signalname="sel(1:0)" name="s(1:0)" />
            <blockpin signalname="din(7:4)" name="I1(3:0)" />
            <blockpin signalname="XLXN_14(3:0)" name="O(3:0)" />
        </block>
        <block symbolname="X7seg" name="XLXI_7">
            <blockpin signalname="XLXN_14(3:0)" name="Sw(3:0)" />
            <blockpin signalname="sevenseg(6:0)" name="sevenseg(6:0)" />
        </block>
        <block symbolname="cb2ce" name="XLXI_8">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_29" name="CE" />
            <blockpin name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="sel(0)" name="Q0" />
            <blockpin signalname="sel(1)" name="Q1" />
            <blockpin name="TC" />
        </block>
        <block symbolname="shiftanodes" name="XLXI_15">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_29" name="Enable190" />
            <blockpin signalname="anodes(3:0)" name="anodes(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="din(15:0)">
            <wire x2="560" y1="384" y2="432" x1="560" />
            <wire x2="560" y1="432" y2="496" x1="560" />
            <wire x2="560" y1="496" y2="560" x1="560" />
            <wire x2="560" y1="560" y2="688" x1="560" />
            <wire x2="560" y1="688" y2="784" x1="560" />
        </branch>
        <instance x="1248" y="720" name="XLXI_6" orien="R0">
        </instance>
        <bustap x2="656" y1="432" y2="432" x1="560" />
        <branch name="din(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="944" y="432" type="branch" />
            <wire x2="944" y1="432" y2="432" x1="656" />
            <wire x2="1248" y1="432" y2="432" x1="944" />
        </branch>
        <bustap x2="656" y1="496" y2="496" x1="560" />
        <branch name="din(11:8)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="880" y="496" type="branch" />
            <wire x2="880" y1="496" y2="496" x1="656" />
            <wire x2="1248" y1="496" y2="496" x1="880" />
        </branch>
        <bustap x2="656" y1="560" y2="560" x1="560" />
        <branch name="din(15:12)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="880" y="560" type="branch" />
            <wire x2="880" y1="560" y2="560" x1="656" />
            <wire x2="1248" y1="560" y2="560" x1="880" />
        </branch>
        <bustap x2="656" y1="688" y2="688" x1="560" />
        <branch name="din(7:4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="816" y="688" type="branch" />
            <wire x2="816" y1="688" y2="688" x1="656" />
            <wire x2="1248" y1="688" y2="688" x1="816" />
        </branch>
        <branch name="sel(1:0)">
            <wire x2="1248" y1="624" y2="624" x1="1168" />
            <wire x2="1168" y1="624" y2="976" x1="1168" />
            <wire x2="1168" y1="976" y2="1040" x1="1168" />
            <wire x2="1168" y1="1040" y2="1104" x1="1168" />
        </branch>
        <instance x="1808" y="464" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_14(3:0)">
            <wire x2="1808" y1="432" y2="432" x1="1632" />
        </branch>
        <branch name="sevenseg(6:0)">
            <wire x2="2288" y1="432" y2="432" x1="2192" />
        </branch>
        <branch name="clk">
            <wire x2="80" y1="320" y2="1104" x1="80" />
            <wire x2="80" y1="1104" y2="1168" x1="80" />
            <wire x2="576" y1="1168" y2="1168" x1="80" />
            <wire x2="80" y1="1168" y2="1472" x1="80" />
            <wire x2="576" y1="1472" y2="1472" x1="80" />
            <wire x2="96" y1="1104" y2="1104" x1="80" />
        </branch>
        <instance x="576" y="1296" name="XLXI_8" orien="R0" />
        <iomarker fontsize="28" x="560" y="384" name="din(15:0)" orien="R270" />
        <iomarker fontsize="28" x="2288" y="432" name="sevenseg(6:0)" orien="R0" />
        <iomarker fontsize="28" x="80" y="320" name="clk" orien="R270" />
        <branch name="XLXN_29">
            <wire x2="496" y1="1104" y2="1104" x1="480" />
            <wire x2="576" y1="1104" y2="1104" x1="496" />
            <wire x2="496" y1="1104" y2="1536" x1="496" />
            <wire x2="576" y1="1536" y2="1536" x1="496" />
        </branch>
        <instance x="576" y="1568" name="XLXI_15" orien="R0">
        </instance>
        <instance x="96" y="1136" name="XLXI_9" orien="R0">
        </instance>
        <branch name="anodes(3:0)">
            <wire x2="1904" y1="1472" y2="1472" x1="960" />
        </branch>
        <iomarker fontsize="28" x="1904" y="1472" name="anodes(3:0)" orien="R0" />
        <bustap x2="1072" y1="976" y2="976" x1="1168" />
        <branch name="sel(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1008" y="976" type="branch" />
            <wire x2="1008" y1="976" y2="976" x1="960" />
            <wire x2="1072" y1="976" y2="976" x1="1008" />
        </branch>
        <bustap x2="1072" y1="1040" y2="1040" x1="1168" />
        <branch name="sel(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1008" y="1040" type="branch" />
            <wire x2="1008" y1="1040" y2="1040" x1="960" />
            <wire x2="1072" y1="1040" y2="1040" x1="1008" />
        </branch>
    </sheet>
</drawing>