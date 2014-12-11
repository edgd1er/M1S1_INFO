<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="din(15:0)" />
        <signal name="din(7:4)" />
        <signal name="din(3:0)" />
        <signal name="din(15:12)" />
        <signal name="din(11:8)" />
        <signal name="XLXN_9(3:0)" />
        <signal name="sevenseg(6:0)" />
        <signal name="s(1:0)" />
        <signal name="s(0)" />
        <signal name="s(1)" />
        <signal name="clk" />
        <signal name="enable2CE" />
        <port polarity="Input" name="din(15:0)" />
        <port polarity="Output" name="sevenseg(6:0)" />
        <port polarity="Input" name="clk" />
        <blockdef name="Mux4x4">
            <timestamp>2014-9-26T13:44:35</timestamp>
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
            <timestamp>2014-9-26T9:31:51</timestamp>
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
        <blockdef name="enable190">
            <timestamp>2014-9-26T14:20:45</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="Mux4x4" name="XLXI_1">
            <blockpin signalname="din(7:4)" name="I1(3:0)" />
            <blockpin signalname="din(11:8)" name="I2(3:0)" />
            <blockpin signalname="din(3:0)" name="I0(3:0)" />
            <blockpin signalname="s(1:0)" name="s(1:0)" />
            <blockpin signalname="din(15:12)" name="I3(3:0)" />
            <blockpin signalname="XLXN_9(3:0)" name="O(3:0)" />
        </block>
        <block symbolname="X7seg" name="XLXI_2">
            <blockpin signalname="XLXN_9(3:0)" name="Sw(3:0)" />
            <blockpin signalname="sevenseg(6:0)" name="sevenseg(6:0)" />
        </block>
        <block symbolname="cb2ce" name="XLXI_3">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="enable2CE" name="CE" />
            <blockpin name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="s(0)" name="Q0" />
            <blockpin signalname="s(1)" name="Q1" />
            <blockpin name="TC" />
        </block>
        <block symbolname="enable190" name="XLXI_4">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="enable2CE" name="Enable190" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="din(15:0)">
            <wire x2="208" y1="192" y2="272" x1="208" />
            <wire x2="208" y1="272" y2="336" x1="208" />
            <wire x2="208" y1="336" y2="400" x1="208" />
            <wire x2="208" y1="400" y2="464" x1="208" />
            <wire x2="208" y1="464" y2="528" x1="208" />
            <wire x2="208" y1="528" y2="2448" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="192" name="din(15:0)" orien="R270" />
        <instance x="512" y="560" name="XLXI_1" orien="R0">
        </instance>
        <bustap x2="304" y1="272" y2="272" x1="208" />
        <branch name="din(7:4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="408" y="272" type="branch" />
            <wire x2="408" y1="272" y2="272" x1="304" />
            <wire x2="512" y1="272" y2="272" x1="408" />
        </branch>
        <bustap x2="304" y1="400" y2="400" x1="208" />
        <branch name="din(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="408" y="400" type="branch" />
            <wire x2="408" y1="400" y2="400" x1="304" />
            <wire x2="512" y1="400" y2="400" x1="408" />
        </branch>
        <bustap x2="304" y1="528" y2="528" x1="208" />
        <branch name="din(15:12)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="408" y="528" type="branch" />
            <wire x2="408" y1="528" y2="528" x1="304" />
            <wire x2="512" y1="528" y2="528" x1="408" />
        </branch>
        <bustap x2="304" y1="336" y2="336" x1="208" />
        <branch name="din(11:8)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="408" y="336" type="branch" />
            <wire x2="408" y1="336" y2="336" x1="304" />
            <wire x2="512" y1="336" y2="336" x1="408" />
        </branch>
        <branch name="XLXN_9(3:0)">
            <wire x2="912" y1="272" y2="272" x1="896" />
            <wire x2="1008" y1="272" y2="272" x1="912" />
            <wire x2="1024" y1="272" y2="272" x1="1008" />
        </branch>
        <branch name="sevenseg(6:0)">
            <wire x2="1424" y1="272" y2="272" x1="1408" />
            <wire x2="1584" y1="272" y2="272" x1="1424" />
        </branch>
        <instance x="272" y="1008" name="XLXI_3" orien="R0" />
        <instance x="1024" y="304" name="XLXI_2" orien="R0">
        </instance>
        <branch name="s(1:0)">
            <wire x2="432" y1="464" y2="592" x1="432" />
            <wire x2="800" y1="592" y2="592" x1="432" />
            <wire x2="816" y1="592" y2="592" x1="800" />
            <wire x2="816" y1="592" y2="688" x1="816" />
            <wire x2="816" y1="688" y2="752" x1="816" />
            <wire x2="816" y1="752" y2="768" x1="816" />
            <wire x2="816" y1="768" y2="1104" x1="816" />
            <wire x2="512" y1="464" y2="464" x1="432" />
        </branch>
        <bustap x2="720" y1="688" y2="688" x1="816" />
        <branch name="s(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="688" y="688" type="branch" />
            <wire x2="688" y1="688" y2="688" x1="656" />
            <wire x2="720" y1="688" y2="688" x1="688" />
        </branch>
        <bustap x2="720" y1="752" y2="752" x1="816" />
        <branch name="s(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="688" y="752" type="branch" />
            <wire x2="688" y1="752" y2="752" x1="656" />
            <wire x2="720" y1="752" y2="752" x1="688" />
        </branch>
        <iomarker fontsize="28" x="48" y="112" name="clk" orien="R270" />
        <branch name="clk">
            <wire x2="48" y1="112" y2="480" x1="48" />
            <wire x2="48" y1="480" y2="880" x1="48" />
            <wire x2="48" y1="880" y2="888" x1="48" />
            <wire x2="48" y1="888" y2="1312" x1="48" />
            <wire x2="48" y1="1312" y2="1440" x1="48" />
            <wire x2="336" y1="1312" y2="1312" x1="48" />
            <wire x2="272" y1="880" y2="880" x1="48" />
        </branch>
        <iomarker fontsize="28" x="1584" y="272" name="sevenseg(6:0)" orien="R0" />
        <instance x="336" y="1344" name="XLXI_4" orien="R0">
        </instance>
        <branch name="enable2CE">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="224" y="576" type="branch" />
            <wire x2="224" y1="576" y2="816" x1="224" />
            <wire x2="272" y1="816" y2="816" x1="224" />
            <wire x2="880" y1="576" y2="576" x1="224" />
            <wire x2="880" y1="576" y2="1312" x1="880" />
            <wire x2="880" y1="1312" y2="1312" x1="720" />
        </branch>
    </sheet>
</drawing>