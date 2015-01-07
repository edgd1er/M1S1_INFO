<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(3:0)" />
        <signal name="clk" />
        <signal name="din(15:0)" />
        <signal name="din(15:12)" />
        <signal name="din(3:0)" />
        <signal name="din(7:4)" />
        <signal name="din(11:8)" />
        <signal name="sel(1:0)" />
        <signal name="sel(1)" />
        <signal name="sel(0)" />
        <signal name="sevenseg(6:0)" />
        <signal name="anodes(3:0)" />
        <signal name="XLXN_11" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="din(15:0)" />
        <port polarity="Output" name="sevenseg(6:0)" />
        <port polarity="Output" name="anodes(3:0)" />
        <blockdef name="Mux4x4">
            <timestamp>2014-10-9T5:36:14</timestamp>
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
        <blockdef name="X7seg">
            <timestamp>2014-10-9T5:34:43</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="enable190">
            <timestamp>2014-10-9T5:37:46</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="shiftanodes">
            <timestamp>2014-10-9T5:38:51</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="Mux4x4" name="XLXI_1">
            <blockpin signalname="din(3:0)" name="I0(3:0)" />
            <blockpin signalname="din(7:4)" name="I2(3:0)" />
            <blockpin signalname="din(11:8)" name="I1(3:0)" />
            <blockpin signalname="din(15:12)" name="I3(3:0)" />
            <blockpin signalname="sel(1:0)" name="S(1:0)" />
            <blockpin signalname="XLXN_1(3:0)" name="O(3:0)" />
        </block>
        <block symbolname="cb2ce" name="XLXI_2">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_11" name="CE" />
            <blockpin name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="sel(0)" name="Q0" />
            <blockpin signalname="sel(1)" name="Q1" />
            <blockpin name="TC" />
        </block>
        <block symbolname="X7seg" name="XLXI_3">
            <blockpin signalname="XLXN_1(3:0)" name="sw(3:0)" />
            <blockpin signalname="sevenseg(6:0)" name="sevenseg(6:0)" />
        </block>
        <block symbolname="enable190" name="XLXI_4">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_11" name="enable190" />
        </block>
        <block symbolname="shiftanodes" name="XLXI_5">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_11" name="enable190" />
            <blockpin signalname="anodes(3:0)" name="anodes(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1440" y="1120" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2064" y="1376" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_1(3:0)">
            <wire x2="1936" y1="832" y2="832" x1="1824" />
            <wire x2="1936" y1="832" y2="1344" x1="1936" />
            <wire x2="2064" y1="1344" y2="1344" x1="1936" />
        </branch>
        <branch name="clk">
            <wire x2="416" y1="1392" y2="1392" x1="400" />
            <wire x2="400" y1="1392" y2="1584" x1="400" />
            <wire x2="512" y1="1584" y2="1584" x1="400" />
            <wire x2="512" y1="1584" y2="1840" x1="512" />
            <wire x2="624" y1="1840" y2="1840" x1="512" />
            <wire x2="624" y1="1840" y2="1936" x1="624" />
            <wire x2="1216" y1="1936" y2="1936" x1="624" />
            <wire x2="896" y1="1584" y2="1584" x1="512" />
            <wire x2="624" y1="1776" y2="1776" x1="608" />
            <wire x2="624" y1="1776" y2="1840" x1="624" />
        </branch>
        <iomarker fontsize="28" x="608" y="1776" name="clk" orien="R270" />
        <branch name="din(15:0)">
            <wire x2="752" y1="672" y2="832" x1="752" />
            <wire x2="752" y1="832" y2="896" x1="752" />
            <wire x2="752" y1="896" y2="960" x1="752" />
            <wire x2="752" y1="960" y2="1024" x1="752" />
            <wire x2="752" y1="1024" y2="1120" x1="752" />
        </branch>
        <iomarker fontsize="28" x="752" y="672" name="din(15:0)" orien="R270" />
        <bustap x2="848" y1="832" y2="832" x1="752" />
        <branch name="din(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1144" y="832" type="branch" />
            <wire x2="1144" y1="832" y2="832" x1="848" />
            <wire x2="1440" y1="832" y2="832" x1="1144" />
        </branch>
        <bustap x2="848" y1="896" y2="896" x1="752" />
        <branch name="din(7:4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1144" y="896" type="branch" />
            <wire x2="1144" y1="896" y2="896" x1="848" />
            <wire x2="1440" y1="896" y2="896" x1="1144" />
        </branch>
        <bustap x2="848" y1="960" y2="960" x1="752" />
        <branch name="din(11:8)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1144" y="960" type="branch" />
            <wire x2="1144" y1="960" y2="960" x1="848" />
            <wire x2="1440" y1="960" y2="960" x1="1144" />
        </branch>
        <bustap x2="848" y1="1024" y2="1024" x1="752" />
        <branch name="din(15:12)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1144" y="1024" type="branch" />
            <wire x2="1144" y1="1024" y2="1024" x1="848" />
            <wire x2="1440" y1="1024" y2="1024" x1="1144" />
        </branch>
        <branch name="sel(1:0)">
            <wire x2="1440" y1="1088" y2="1088" x1="1424" />
            <wire x2="1424" y1="1088" y2="1392" x1="1424" />
            <wire x2="1424" y1="1392" y2="1456" x1="1424" />
            <wire x2="1424" y1="1456" y2="1600" x1="1424" />
            <wire x2="1696" y1="1600" y2="1600" x1="1424" />
        </branch>
        <instance x="896" y="1712" name="XLXI_2" orien="R0" />
        <bustap x2="1328" y1="1392" y2="1392" x1="1424" />
        <branch name="sel(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1304" y="1392" type="branch" />
            <wire x2="1304" y1="1392" y2="1392" x1="1280" />
            <wire x2="1328" y1="1392" y2="1392" x1="1304" />
        </branch>
        <bustap x2="1328" y1="1456" y2="1456" x1="1424" />
        <branch name="sel(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1304" y="1456" type="branch" />
            <wire x2="1304" y1="1456" y2="1456" x1="1280" />
            <wire x2="1328" y1="1456" y2="1456" x1="1304" />
        </branch>
        <branch name="sevenseg(6:0)">
            <wire x2="2480" y1="1344" y2="1344" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2480" y="1344" name="sevenseg(6:0)" orien="R0" />
        <instance x="416" y="1424" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1216" y="2032" name="XLXI_5" orien="R0">
        </instance>
        <branch name="anodes(3:0)">
            <wire x2="1632" y1="1936" y2="1936" x1="1600" />
        </branch>
        <iomarker fontsize="28" x="1632" y="1936" name="anodes(3:0)" orien="R0" />
        <branch name="XLXN_11">
            <wire x2="848" y1="1392" y2="1392" x1="800" />
            <wire x2="848" y1="1392" y2="1520" x1="848" />
            <wire x2="896" y1="1520" y2="1520" x1="848" />
            <wire x2="848" y1="1520" y2="2000" x1="848" />
            <wire x2="1216" y1="2000" y2="2000" x1="848" />
        </branch>
    </sheet>
</drawing>