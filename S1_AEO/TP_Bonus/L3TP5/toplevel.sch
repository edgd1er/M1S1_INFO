<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="Led(7:0)" />
        <signal name="switches(7:0)" />
        <signal name="XLXN_5" />
        <signal name="XLXN_8" />
        <signal name="switches(0)" />
        <signal name="XLXN_11" />
        <signal name="XLXN_14" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="Led(7:0)" />
        <port polarity="Input" name="switches(7:0)" />
        <blockdef name="clkdiv">
            <timestamp>2014-10-6T15:8:1</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="controleur">
            <timestamp>2014-10-6T15:58:19</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="clkdiv" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin name="clk190" />
            <blockpin signalname="XLXN_8" name="clksec" />
        </block>
        <block symbolname="controleur" name="XLXI_14">
            <blockpin signalname="switches(0)" name="travaux" />
            <blockpin signalname="XLXN_8" name="clk" />
            <blockpin signalname="Led(7:0)" name="led(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="448" y="592" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="448" y1="496" y2="496" x1="416" />
        </branch>
        <iomarker fontsize="28" x="416" y="496" name="clk" orien="R180" />
        <iomarker fontsize="28" x="2016" y="528" name="Led(7:0)" orien="R0" />
        <branch name="Led(7:0)">
            <wire x2="2000" y1="432" y2="432" x1="1776" />
            <wire x2="2000" y1="432" y2="528" x1="2000" />
            <wire x2="2016" y1="528" y2="528" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="800" y="736" name="switches(7:0)" orien="R180" />
        <branch name="switches(7:0)">
            <wire x2="1264" y1="736" y2="736" x1="800" />
            <wire x2="1296" y1="736" y2="736" x1="1264" />
            <wire x2="1360" y1="736" y2="736" x1="1296" />
            <wire x2="1840" y1="736" y2="736" x1="1360" />
        </branch>
        <bustap x2="1360" y1="736" y2="640" x1="1360" />
        <branch name="switches(0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1360" y="512" type="branch" />
            <wire x2="1392" y1="496" y2="496" x1="1360" />
            <wire x2="1360" y1="496" y2="512" x1="1360" />
            <wire x2="1360" y1="512" y2="640" x1="1360" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1392" y1="560" y2="560" x1="832" />
        </branch>
        <instance x="1392" y="592" name="XLXI_14" orien="R0">
        </instance>
    </sheet>
</drawing>