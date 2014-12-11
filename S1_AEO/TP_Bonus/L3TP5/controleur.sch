<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="cpt(3:0)" />
        <signal name="travaux" />
        <signal name="clk" />
        <signal name="cpt(3)" />
        <signal name="cpt(0)" />
        <signal name="cpt(1)" />
        <signal name="cpt(2)" />
        <signal name="XLXN_20" />
        <signal name="led(7:0)" />
        <signal name="XLXN_26" />
        <port polarity="Input" name="travaux" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="led(7:0)" />
        <blockdef name="cb4ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-512" height="448" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
        </blockdef>
        <blockdef name="fsm">
            <timestamp>2014-10-6T16:42:49</timestamp>
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-64" height="192" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="cb4ce" name="XLXI_1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_26" name="CE" />
            <blockpin signalname="XLXN_20" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="cpt(0)" name="Q0" />
            <blockpin signalname="cpt(1)" name="Q1" />
            <blockpin signalname="cpt(2)" name="Q2" />
            <blockpin signalname="cpt(3)" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="fsm" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="travaux" name="travaux" />
            <blockpin signalname="cpt(3:0)" name="cpt(3:0)" />
            <blockpin signalname="XLXN_20" name="reset_cpt" />
            <blockpin signalname="led(7:0)" name="Led(7:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_4">
            <blockpin signalname="XLXN_26" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1248" y="192" name="XLXI_2" orien="R0">
        </instance>
        <branch name="cpt(3:0)">
            <wire x2="496" y1="288" y2="288" x1="336" />
            <wire x2="512" y1="288" y2="288" x1="496" />
            <wire x2="608" y1="288" y2="288" x1="512" />
            <wire x2="624" y1="288" y2="288" x1="608" />
            <wire x2="816" y1="288" y2="288" x1="624" />
            <wire x2="880" y1="288" y2="288" x1="816" />
            <wire x2="1248" y1="288" y2="288" x1="880" />
        </branch>
        <branch name="travaux">
            <wire x2="1248" y1="224" y2="224" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="160" name="clk" orien="R180" />
        <iomarker fontsize="28" x="320" y="224" name="travaux" orien="R180" />
        <branch name="clk">
            <wire x2="368" y1="160" y2="160" x1="320" />
            <wire x2="1248" y1="160" y2="160" x1="368" />
            <wire x2="368" y1="160" y2="176" x1="368" />
            <wire x2="464" y1="176" y2="176" x1="368" />
            <wire x2="464" y1="176" y2="1232" x1="464" />
            <wire x2="528" y1="1232" y2="1232" x1="464" />
        </branch>
        <bustap x2="496" y1="288" y2="384" x1="496" />
        <branch name="cpt(3)">
            <attrtext style="alignment:SOFT-VRIGHT" attrname="Name" x="496" y="552" type="branch" />
            <wire x2="496" y1="384" y2="544" x1="496" />
            <wire x2="496" y1="544" y2="552" x1="496" />
            <wire x2="992" y1="544" y2="544" x1="496" />
            <wire x2="992" y1="544" y2="1104" x1="992" />
            <wire x2="992" y1="1104" y2="1104" x1="912" />
        </branch>
        <bustap x2="880" y1="288" y2="384" x1="880" />
        <branch name="cpt(0)">
            <attrtext style="alignment:SOFT-TCENTER" attrname="Name" x="880" y="432" type="branch" />
            <wire x2="880" y1="384" y2="432" x1="880" />
            <wire x2="928" y1="432" y2="432" x1="880" />
            <wire x2="928" y1="432" y2="912" x1="928" />
            <wire x2="928" y1="912" y2="912" x1="912" />
        </branch>
        <bustap x2="816" y1="288" y2="384" x1="816" />
        <branch name="cpt(1)">
            <attrtext style="alignment:SOFT-TCENTER" attrname="Name" x="816" y="576" type="branch" />
            <wire x2="816" y1="384" y2="576" x1="816" />
            <wire x2="944" y1="576" y2="576" x1="816" />
            <wire x2="944" y1="576" y2="976" x1="944" />
            <wire x2="944" y1="976" y2="976" x1="912" />
        </branch>
        <bustap x2="512" y1="288" y2="384" x1="512" />
        <branch name="cpt(2)">
            <attrtext style="alignment:SOFT-TCENTER" attrname="Name" x="512" y="592" type="branch" />
            <wire x2="512" y1="384" y2="592" x1="512" />
            <wire x2="1008" y1="592" y2="592" x1="512" />
            <wire x2="1008" y1="592" y2="1040" x1="1008" />
            <wire x2="1008" y1="1040" y2="1040" x1="912" />
        </branch>
        <branch name="led(7:0)">
            <wire x2="1776" y1="160" y2="160" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1776" y="160" name="led(7:0)" orien="R0" />
        <instance x="528" y="1360" name="XLXI_1" orien="R0" />
        <branch name="XLXN_20">
            <wire x2="528" y1="1328" y2="1408" x1="528" />
            <wire x2="1648" y1="1408" y2="1408" x1="528" />
            <wire x2="1648" y1="288" y2="288" x1="1632" />
            <wire x2="1648" y1="288" y2="1408" x1="1648" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="528" y1="1168" y2="1168" x1="496" />
        </branch>
        <instance x="496" y="1232" name="XLXI_4" orien="R270" />
    </sheet>
</drawing>