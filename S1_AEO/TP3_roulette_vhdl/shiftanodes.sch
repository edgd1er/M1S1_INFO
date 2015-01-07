<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="anodes(0)" />
        <signal name="anodes(1)" />
        <signal name="anodes(2)" />
        <signal name="anodes(3:0)" />
        <signal name="anodes(3)" />
        <signal name="clk" />
        <signal name="enable190" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <port polarity="Output" name="anodes(3:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="enable190" />
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
            <blockpin signalname="enable190" name="CE" />
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
            <blockpin signalname="enable190" name="CE" />
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
            <blockpin signalname="enable190" name="CE" />
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
            <blockpin signalname="enable190" name="CE" />
            <blockpin signalname="anodes(2)" name="D" />
            <blockpin signalname="anodes(3)" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="496" y="848" name="XLXI_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="176" y="-96" type="instance" />
        </instance>
        <instance x="480" y="1264" name="XLXI_2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="192" y="-112" type="instance" />
        </instance>
        <instance x="480" y="1664" name="XLXI_3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="144" y="-136" type="instance" />
        </instance>
        <instance x="464" y="2032" name="XLXI_4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="160" y="-120" type="instance" />
        </instance>
        <branch name="anodes(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1144" y="592" type="branch" />
            <wire x2="480" y1="1008" y2="1008" x1="416" />
            <wire x2="416" y1="1008" y2="1264" x1="416" />
            <wire x2="960" y1="1264" y2="1264" x1="416" />
            <wire x2="960" y1="592" y2="592" x1="880" />
            <wire x2="960" y1="592" y2="1264" x1="960" />
            <wire x2="1144" y1="592" y2="592" x1="960" />
            <wire x2="1328" y1="592" y2="592" x1="1144" />
        </branch>
        <branch name="anodes(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1128" y="1008" type="branch" />
            <wire x2="400" y1="1280" y2="1408" x1="400" />
            <wire x2="480" y1="1408" y2="1408" x1="400" />
            <wire x2="928" y1="1280" y2="1280" x1="400" />
            <wire x2="928" y1="1008" y2="1008" x1="864" />
            <wire x2="928" y1="1008" y2="1280" x1="928" />
            <wire x2="1128" y1="1008" y2="1008" x1="928" />
            <wire x2="1328" y1="1008" y2="1008" x1="1128" />
        </branch>
        <branch name="anodes(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1136" y="1408" type="branch" />
            <wire x2="400" y1="1648" y2="1776" x1="400" />
            <wire x2="464" y1="1776" y2="1776" x1="400" />
            <wire x2="944" y1="1648" y2="1648" x1="400" />
            <wire x2="944" y1="1408" y2="1408" x1="864" />
            <wire x2="944" y1="1408" y2="1648" x1="944" />
            <wire x2="1136" y1="1408" y2="1408" x1="944" />
            <wire x2="1328" y1="1408" y2="1408" x1="1136" />
        </branch>
        <branch name="anodes(3:0)">
            <wire x2="1424" y1="512" y2="592" x1="1424" />
            <wire x2="1424" y1="592" y2="1008" x1="1424" />
            <wire x2="1424" y1="1008" y2="1408" x1="1424" />
            <wire x2="1424" y1="1408" y2="1776" x1="1424" />
            <wire x2="1424" y1="1776" y2="1936" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="1424" y="512" name="anodes(3:0)" orien="R270" />
        <bustap x2="1328" y1="1776" y2="1776" x1="1424" />
        <branch name="anodes(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1088" y="1776" type="branch" />
            <wire x2="496" y1="592" y2="592" x1="432" />
            <wire x2="432" y1="592" y2="1328" x1="432" />
            <wire x2="928" y1="1328" y2="1328" x1="432" />
            <wire x2="928" y1="1328" y2="1776" x1="928" />
            <wire x2="1088" y1="1776" y2="1776" x1="928" />
            <wire x2="1328" y1="1776" y2="1776" x1="1088" />
            <wire x2="928" y1="1776" y2="1776" x1="848" />
        </branch>
        <bustap x2="1328" y1="1408" y2="1408" x1="1424" />
        <bustap x2="1328" y1="1008" y2="1008" x1="1424" />
        <bustap x2="1328" y1="592" y2="592" x1="1424" />
        <branch name="clk">
            <wire x2="272" y1="544" y2="720" x1="272" />
            <wire x2="496" y1="720" y2="720" x1="272" />
            <wire x2="272" y1="720" y2="1136" x1="272" />
            <wire x2="480" y1="1136" y2="1136" x1="272" />
            <wire x2="272" y1="1136" y2="1536" x1="272" />
            <wire x2="480" y1="1536" y2="1536" x1="272" />
            <wire x2="272" y1="1536" y2="1904" x1="272" />
            <wire x2="272" y1="1904" y2="1936" x1="272" />
            <wire x2="464" y1="1904" y2="1904" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="544" name="clk" orien="R270" />
        <branch name="enable190">
            <wire x2="128" y1="1952" y2="1952" x1="112" />
            <wire x2="128" y1="544" y2="656" x1="128" />
            <wire x2="496" y1="656" y2="656" x1="128" />
            <wire x2="128" y1="656" y2="1072" x1="128" />
            <wire x2="480" y1="1072" y2="1072" x1="128" />
            <wire x2="128" y1="1072" y2="1472" x1="128" />
            <wire x2="480" y1="1472" y2="1472" x1="128" />
            <wire x2="128" y1="1472" y2="1840" x1="128" />
            <wire x2="128" y1="1840" y2="1952" x1="128" />
            <wire x2="144" y1="1840" y2="1840" x1="128" />
            <wire x2="464" y1="1840" y2="1840" x1="144" />
        </branch>
        <iomarker fontsize="28" x="128" y="544" name="enable190" orien="R270" />
    </sheet>
</drawing>