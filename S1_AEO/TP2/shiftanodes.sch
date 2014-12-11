<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="Enable190" />
        <signal name="anodes(3:0)" />
        <signal name="anodes(0)" />
        <signal name="anodes(1)" />
        <signal name="anodes(2)" />
        <signal name="anodes(3)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="Enable190" />
        <port polarity="Output" name="anodes(3:0)" />
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
        <block symbolname="fde" name="XLXI_1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="Enable190" name="CE" />
            <blockpin signalname="anodes(3)" name="D" />
            <blockpin signalname="anodes(0)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_2">
            <attr value="1" name="INIT">
                <trait verilog="all:0 dp:1" />
                <trait vhdl="all:0 gm:1" />
                <trait valuetype="Bit" />
            </attr>
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="Enable190" name="CE" />
            <blockpin signalname="anodes(0)" name="D" />
            <blockpin signalname="anodes(1)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_3">
            <attr value="1" name="INIT">
                <trait verilog="all:0 dp:1" />
                <trait vhdl="all:0 gm:1" />
                <trait valuetype="Bit" />
            </attr>
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="Enable190" name="CE" />
            <blockpin signalname="anodes(1)" name="D" />
            <blockpin signalname="anodes(2)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_4">
            <attr value="1" name="INIT">
                <trait verilog="all:0 dp:1" />
                <trait vhdl="all:0 gm:1" />
                <trait valuetype="Bit" />
            </attr>
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="Enable190" name="CE" />
            <blockpin signalname="anodes(2)" name="D" />
            <blockpin signalname="anodes(3)" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1088" y="736" name="XLXI_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="0" y="-352" type="instance" />
        </instance>
        <instance x="1088" y="1136" name="XLXI_2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="0" y="-352" type="instance" />
        </instance>
        <instance x="1088" y="1504" name="XLXI_3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="0" y="-320" type="instance" />
        </instance>
        <instance x="1088" y="1904" name="XLXI_4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="0" y="-352" type="instance" />
        </instance>
        <iomarker fontsize="28" x="800" y="272" name="clk" orien="R270" />
        <branch name="clk">
            <wire x2="800" y1="272" y2="608" x1="800" />
            <wire x2="1088" y1="608" y2="608" x1="800" />
            <wire x2="800" y1="608" y2="1008" x1="800" />
            <wire x2="1088" y1="1008" y2="1008" x1="800" />
            <wire x2="800" y1="1008" y2="1376" x1="800" />
            <wire x2="1088" y1="1376" y2="1376" x1="800" />
            <wire x2="800" y1="1376" y2="1776" x1="800" />
            <wire x2="1088" y1="1776" y2="1776" x1="800" />
        </branch>
        <iomarker fontsize="28" x="608" y="240" name="Enable190" orien="R270" />
        <branch name="Enable190">
            <wire x2="608" y1="240" y2="544" x1="608" />
            <wire x2="1088" y1="544" y2="544" x1="608" />
            <wire x2="608" y1="544" y2="944" x1="608" />
            <wire x2="1088" y1="944" y2="944" x1="608" />
            <wire x2="608" y1="944" y2="1312" x1="608" />
            <wire x2="1088" y1="1312" y2="1312" x1="608" />
            <wire x2="608" y1="1312" y2="1712" x1="608" />
            <wire x2="1088" y1="1712" y2="1712" x1="608" />
        </branch>
        <iomarker fontsize="28" x="1888" y="320" name="anodes(3:0)" orien="R270" />
        <branch name="anodes(3:0)">
            <wire x2="1888" y1="320" y2="480" x1="1888" />
            <wire x2="1888" y1="480" y2="880" x1="1888" />
            <wire x2="1888" y1="880" y2="1248" x1="1888" />
            <wire x2="1888" y1="1248" y2="1648" x1="1888" />
            <wire x2="1888" y1="1648" y2="1984" x1="1888" />
        </branch>
        <bustap x2="1792" y1="480" y2="480" x1="1888" />
        <branch name="anodes(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1584" y="480" type="branch" />
            <wire x2="976" y1="720" y2="880" x1="976" />
            <wire x2="1088" y1="880" y2="880" x1="976" />
            <wire x2="1568" y1="720" y2="720" x1="976" />
            <wire x2="1568" y1="480" y2="480" x1="1472" />
            <wire x2="1584" y1="480" y2="480" x1="1568" />
            <wire x2="1792" y1="480" y2="480" x1="1584" />
            <wire x2="1568" y1="480" y2="720" x1="1568" />
        </branch>
        <bustap x2="1792" y1="880" y2="880" x1="1888" />
        <branch name="anodes(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1616" y="880" type="branch" />
            <wire x2="1552" y1="1104" y2="1104" x1="976" />
            <wire x2="976" y1="1104" y2="1248" x1="976" />
            <wire x2="1088" y1="1248" y2="1248" x1="976" />
            <wire x2="1552" y1="880" y2="880" x1="1472" />
            <wire x2="1616" y1="880" y2="880" x1="1552" />
            <wire x2="1792" y1="880" y2="880" x1="1616" />
            <wire x2="1552" y1="880" y2="1104" x1="1552" />
        </branch>
        <bustap x2="1792" y1="1248" y2="1248" x1="1888" />
        <branch name="anodes(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1584" y="1248" type="branch" />
            <wire x2="912" y1="1488" y2="1648" x1="912" />
            <wire x2="1088" y1="1648" y2="1648" x1="912" />
            <wire x2="1568" y1="1488" y2="1488" x1="912" />
            <wire x2="1568" y1="1248" y2="1248" x1="1472" />
            <wire x2="1584" y1="1248" y2="1248" x1="1568" />
            <wire x2="1792" y1="1248" y2="1248" x1="1584" />
            <wire x2="1568" y1="1248" y2="1488" x1="1568" />
        </branch>
        <bustap x2="1792" y1="1648" y2="1648" x1="1888" />
        <branch name="anodes(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1616" y="1648" type="branch" />
            <wire x2="1072" y1="256" y2="480" x1="1072" />
            <wire x2="1088" y1="480" y2="480" x1="1072" />
            <wire x2="1712" y1="256" y2="256" x1="1072" />
            <wire x2="1712" y1="256" y2="1648" x1="1712" />
            <wire x2="1792" y1="1648" y2="1648" x1="1712" />
            <wire x2="1616" y1="1648" y2="1648" x1="1472" />
            <wire x2="1712" y1="1648" y2="1648" x1="1616" />
        </branch>
    </sheet>
</drawing>