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
        <signal name="E190" />
        <signal name="clk3" />
        <signal name="btn0" />
        <signal name="XLXN_28" />
        <signal name="random(3:0)" />
        <signal name="random(3)" />
        <signal name="random(2)" />
        <signal name="random(1)" />
        <signal name="position(7:0)" />
        <signal name="position(7)" />
        <signal name="position(6)" />
        <signal name="position(5)" />
        <signal name="position(4)" />
        <signal name="position(3)" />
        <signal name="position(2)" />
        <signal name="position(1)" />
        <signal name="position(0)" />
        <signal name="SW(7:0)" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="state" />
        <signal name="btn1" />
        <signal name="led(7:0)" />
        <signal name="XLXN_61" />
        <signal name="XLXN_64(7:0)" />
        <signal name="btn2" />
        <signal name="value(15:0)" />
        <signal name="value(7:0)" />
        <signal name="XLXN_127(15:0)" />
        <signal name="sevenseg(6:0)" />
        <signal name="anodes(3:0)" />
        <signal name="XLXN_46(15:0)" />
        <signal name="XLXN_136" />
        <signal name="XLXN_137" />
        <signal name="XLXN_140" />
        <signal name="XLXN_144" />
        <signal name="XLXN_146" />
        <signal name="XLXN_148(7:0)" />
        <signal name="XLXN_149(7:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="btn0" />
        <port polarity="Input" name="SW(7:0)" />
        <port polarity="Input" name="btn1" />
        <port polarity="Output" name="led(7:0)" />
        <port polarity="Input" name="btn2" />
        <port polarity="Output" name="sevenseg(6:0)" />
        <port polarity="Output" name="anodes(3:0)" />
        <blockdef name="rdm">
            <timestamp>2014-10-9T5:43:8</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="afficheur">
            <timestamp>2014-10-9T5:41:42</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="timer">
            <timestamp>2014-10-9T5:11:52</timestamp>
            <rect width="544" x="32" y="32" height="1056" />
            <line x2="32" y1="80" y2="80" x1="0" />
            <line x2="576" y1="80" y2="80" x1="608" />
            <line x2="576" y1="176" y2="176" x1="608" />
        </blockdef>
        <blockdef name="pulse">
            <timestamp>2014-10-9T5:44:30</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="enable190">
            <timestamp>2014-10-9T5:37:46</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="comp8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="320" y1="-224" y2="-224" x1="384" />
            <rect width="64" x="0" y="-332" height="24" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="fjkc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="256" x="64" y="-384" height="320" />
        </blockdef>
        <blockdef name="mux2x8">
            <timestamp>2014-10-7T16:5:0</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="shiftled">
            <timestamp>2014-10-7T15:57:9</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="acc16">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="448" y1="-448" y2="-448" x1="512" />
            <rect width="384" x="64" y="-576" height="512" />
            <rect width="64" x="0" y="-460" height="24" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="448" y1="-512" y2="-512" x1="512" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="256" />
            <line x2="256" y1="-64" y2="-32" x1="256" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <rect width="64" x="448" y="-524" height="24" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <rect width="64" x="0" y="-396" height="24" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="448" y1="-384" y2="-384" x1="512" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
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
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <block symbolname="timer" name="XLXI_3">
            <blockpin signalname="clk" name="clk_in1" />
            <blockpin signalname="clk100" name="clk_out1" />
            <blockpin signalname="clk3" name="clk_out2" />
        </block>
        <block symbolname="pulse" name="XLXI_4">
            <blockpin signalname="btn0" name="inp" />
            <blockpin signalname="clk100" name="clk" />
            <blockpin signalname="E190" name="E" />
            <blockpin signalname="XLXN_53" name="outp" />
        </block>
        <block symbolname="enable190" name="XLXI_5">
            <blockpin signalname="clk100" name="clk" />
            <blockpin signalname="E190" name="enable190" />
        </block>
        <block symbolname="comp8" name="XLXI_11">
            <blockpin signalname="position(7:0)" name="A(7:0)" />
            <blockpin signalname="SW(7:0)" name="B(7:0)" />
            <blockpin signalname="XLXN_140" name="EQ" />
        </block>
        <block symbolname="rdm" name="XLXI_1">
            <blockpin signalname="clk100" name="clk" />
            <blockpin signalname="XLXN_53" name="ce" />
            <blockpin signalname="random(3:0)" name="q(3:0)" />
        </block>
        <block symbolname="d3_8e" name="XLXI_12">
            <blockpin signalname="random(1)" name="A0" />
            <blockpin signalname="random(2)" name="A1" />
            <blockpin signalname="random(3)" name="A2" />
            <blockpin signalname="XLXN_28" name="E" />
            <blockpin signalname="position(0)" name="D0" />
            <blockpin signalname="position(1)" name="D1" />
            <blockpin signalname="position(2)" name="D2" />
            <blockpin signalname="position(3)" name="D3" />
            <blockpin signalname="position(4)" name="D4" />
            <blockpin signalname="position(5)" name="D5" />
            <blockpin signalname="position(6)" name="D6" />
            <blockpin signalname="position(7)" name="D7" />
        </block>
        <block symbolname="vcc" name="XLXI_14">
            <blockpin signalname="XLXN_28" name="P" />
        </block>
        <block symbolname="fjkc" name="XLXI_15">
            <blockpin signalname="clk100" name="C" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_53" name="J" />
            <blockpin signalname="XLXN_52" name="K" />
            <blockpin signalname="state" name="Q" />
        </block>
        <block symbolname="pulse" name="XLXI_16">
            <blockpin signalname="btn1" name="inp" />
            <blockpin signalname="clk100" name="clk" />
            <blockpin signalname="E190" name="E" />
            <blockpin signalname="XLXN_52" name="outp" />
        </block>
        <block symbolname="mux2x8" name="XLXI_17">
            <blockpin signalname="state" name="sel" />
            <blockpin signalname="position(7:0)" name="b(7:0)" />
            <blockpin signalname="XLXN_64(7:0)" name="a(7:0)" />
            <blockpin signalname="led(7:0)" name="c(7:0)" />
        </block>
        <block symbolname="shiftled" name="XLXI_18">
            <blockpin signalname="clk3" name="clk" />
            <blockpin signalname="XLXN_61" name="E" />
            <blockpin signalname="XLXN_64(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="enable190" name="XLXI_19">
            <blockpin signalname="clk3" name="clk" />
            <blockpin signalname="XLXN_61" name="enable190" />
        </block>
        <block symbolname="pulse" name="XLXI_35">
            <blockpin signalname="btn2" name="inp" />
            <blockpin signalname="clk100" name="clk" />
            <blockpin signalname="E190" name="E" />
            <blockpin signalname="XLXN_136" name="outp" />
        </block>
        <block symbolname="acc16" name="XLXI_37">
            <blockpin signalname="XLXN_140" name="ADD" />
            <blockpin signalname="value(15:0)" name="B(15:0)" />
            <blockpin signalname="clk100" name="C" />
            <blockpin signalname="XLXN_137" name="CE" />
            <blockpin signalname="XLXN_140" name="CI" />
            <blockpin signalname="XLXN_127(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_136" name="L" />
            <blockpin name="R" />
            <blockpin name="CO" />
            <blockpin name="OFL" />
            <blockpin signalname="XLXN_46(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="mux2x8" name="XLXI_39">
            <blockpin signalname="XLXN_140" name="sel" />
            <blockpin signalname="XLXN_149(7:0)" name="b(7:0)" />
            <blockpin signalname="XLXN_148(7:0)" name="a(7:0)" />
            <blockpin signalname="value(7:0)" name="c(7:0)" />
        </block>
        <block symbolname="constant" name="XLXI_40">
            <attr value="0000" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 8 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_148(7:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_41">
            <attr value="0007" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 8 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_149(7:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_42">
            <attr value="0050" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 16 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_127(15:0)" name="O" />
        </block>
        <block symbolname="afficheur" name="XLXI_2">
            <blockpin signalname="clk100" name="clk" />
            <blockpin signalname="XLXN_46(15:0)" name="din(15:0)" />
            <blockpin signalname="sevenseg(6:0)" name="sevenseg(6:0)" />
            <blockpin signalname="anodes(3:0)" name="anodes(3:0)" />
        </block>
        <block symbolname="and2" name="XLXI_45">
            <blockpin signalname="XLXN_144" name="I0" />
            <blockpin signalname="state" name="I1" />
            <blockpin signalname="XLXN_137" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_46">
            <blockpin signalname="XLXN_146" name="I" />
            <blockpin signalname="XLXN_144" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_47">
            <blockpin signalname="clk100" name="C" />
            <blockpin signalname="state" name="D" />
            <blockpin signalname="XLXN_146" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="2384" y="1200" name="XLXI_3" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="2384" y1="1280" y2="1280" x1="2272" />
        </branch>
        <branch name="clk100">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3155" y="1280" type="branch" />
            <wire x2="3155" y1="1280" y2="1280" x1="2992" />
            <wire x2="3232" y1="1280" y2="1280" x1="3155" />
        </branch>
        <instance x="2624" y="2704" name="XLXI_4" orien="R0">
        </instance>
        <branch name="E190">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2531" y="2672" type="branch" />
            <wire x2="2531" y1="2672" y2="2672" x1="2496" />
            <wire x2="2624" y1="2672" y2="2672" x1="2531" />
        </branch>
        <instance x="2112" y="2704" name="XLXI_5" orien="R0">
        </instance>
        <branch name="clk100">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2040" y="2672" type="branch" />
            <wire x2="2040" y1="2672" y2="2672" x1="2016" />
            <wire x2="2112" y1="2672" y2="2672" x1="2040" />
        </branch>
        <branch name="clk3">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3162" y="1376" type="branch" />
            <wire x2="3162" y1="1376" y2="1376" x1="2992" />
            <wire x2="3216" y1="1376" y2="1376" x1="3162" />
        </branch>
        <branch name="btn0">
            <wire x2="2624" y1="2544" y2="2544" x1="2592" />
        </branch>
        <branch name="clk100">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2528" y="2608" type="branch" />
            <wire x2="2528" y1="2608" y2="2608" x1="2496" />
            <wire x2="2624" y1="2608" y2="2608" x1="2528" />
        </branch>
        <instance x="3744" y="2976" name="XLXI_11" orien="R0" />
        <instance x="3200" y="2576" name="XLXI_1" orien="R0">
        </instance>
        <instance x="3728" y="2048" name="XLXI_12" orien="R0" />
        <branch name="XLXN_28">
            <wire x2="3728" y1="1920" y2="1920" x1="3696" />
        </branch>
        <instance x="3696" y="1984" name="XLXI_14" orien="R270" />
        <branch name="random(3:0)">
            <wire x2="3520" y1="1264" y2="1472" x1="3520" />
            <wire x2="3520" y1="1472" y2="1536" x1="3520" />
            <wire x2="3520" y1="1536" y2="1600" x1="3520" />
            <wire x2="3520" y1="1600" y2="2320" x1="3520" />
            <wire x2="3600" y1="2320" y2="2320" x1="3520" />
            <wire x2="3600" y1="2320" y2="2480" x1="3600" />
            <wire x2="3600" y1="2480" y2="2480" x1="3584" />
        </branch>
        <bustap x2="3616" y1="1600" y2="1600" x1="3520" />
        <branch name="random(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3672" y="1600" type="branch" />
            <wire x2="3672" y1="1600" y2="1600" x1="3616" />
            <wire x2="3728" y1="1600" y2="1600" x1="3672" />
        </branch>
        <bustap x2="3616" y1="1536" y2="1536" x1="3520" />
        <branch name="random(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3672" y="1536" type="branch" />
            <wire x2="3672" y1="1536" y2="1536" x1="3616" />
            <wire x2="3728" y1="1536" y2="1536" x1="3672" />
        </branch>
        <bustap x2="3616" y1="1472" y2="1472" x1="3520" />
        <branch name="random(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3672" y="1472" type="branch" />
            <wire x2="3672" y1="1472" y2="1472" x1="3616" />
            <wire x2="3728" y1="1472" y2="1472" x1="3672" />
        </branch>
        <branch name="position(7:0)">
            <wire x2="3664" y1="2304" y2="2656" x1="3664" />
            <wire x2="3744" y1="2656" y2="2656" x1="3664" />
            <wire x2="4512" y1="2304" y2="2304" x1="3664" />
            <wire x2="4512" y1="1328" y2="1472" x1="4512" />
            <wire x2="4512" y1="1472" y2="1536" x1="4512" />
            <wire x2="4512" y1="1536" y2="1600" x1="4512" />
            <wire x2="4512" y1="1600" y2="1664" x1="4512" />
            <wire x2="4512" y1="1664" y2="1728" x1="4512" />
            <wire x2="4512" y1="1728" y2="1792" x1="4512" />
            <wire x2="4512" y1="1792" y2="1856" x1="4512" />
            <wire x2="4512" y1="1856" y2="1920" x1="4512" />
            <wire x2="4512" y1="1920" y2="2064" x1="4512" />
            <wire x2="4512" y1="2064" y2="2304" x1="4512" />
            <wire x2="4656" y1="2064" y2="2064" x1="4512" />
            <wire x2="4784" y1="1984" y2="1984" x1="4656" />
            <wire x2="4656" y1="1984" y2="2064" x1="4656" />
        </branch>
        <bustap x2="4416" y1="1920" y2="1920" x1="4512" />
        <branch name="position(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="4264" y="1920" type="branch" />
            <wire x2="4264" y1="1920" y2="1920" x1="4112" />
            <wire x2="4416" y1="1920" y2="1920" x1="4264" />
        </branch>
        <bustap x2="4416" y1="1856" y2="1856" x1="4512" />
        <branch name="position(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="4264" y="1856" type="branch" />
            <wire x2="4264" y1="1856" y2="1856" x1="4112" />
            <wire x2="4416" y1="1856" y2="1856" x1="4264" />
        </branch>
        <bustap x2="4416" y1="1792" y2="1792" x1="4512" />
        <branch name="position(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="4264" y="1792" type="branch" />
            <wire x2="4264" y1="1792" y2="1792" x1="4112" />
            <wire x2="4416" y1="1792" y2="1792" x1="4264" />
        </branch>
        <bustap x2="4416" y1="1728" y2="1728" x1="4512" />
        <branch name="position(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="4264" y="1728" type="branch" />
            <wire x2="4264" y1="1728" y2="1728" x1="4112" />
            <wire x2="4416" y1="1728" y2="1728" x1="4264" />
        </branch>
        <bustap x2="4416" y1="1664" y2="1664" x1="4512" />
        <branch name="position(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="4264" y="1664" type="branch" />
            <wire x2="4264" y1="1664" y2="1664" x1="4112" />
            <wire x2="4416" y1="1664" y2="1664" x1="4264" />
        </branch>
        <bustap x2="4416" y1="1600" y2="1600" x1="4512" />
        <branch name="position(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="4264" y="1600" type="branch" />
            <wire x2="4264" y1="1600" y2="1600" x1="4112" />
            <wire x2="4416" y1="1600" y2="1600" x1="4264" />
        </branch>
        <bustap x2="4416" y1="1536" y2="1536" x1="4512" />
        <branch name="position(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="4264" y="1536" type="branch" />
            <wire x2="4264" y1="1536" y2="1536" x1="4112" />
            <wire x2="4416" y1="1536" y2="1536" x1="4264" />
        </branch>
        <bustap x2="4416" y1="1472" y2="1472" x1="4512" />
        <branch name="position(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="4264" y="1472" type="branch" />
            <wire x2="4264" y1="1472" y2="1472" x1="4112" />
            <wire x2="4416" y1="1472" y2="1472" x1="4264" />
        </branch>
        <branch name="SW(7:0)">
            <wire x2="3744" y1="2848" y2="2848" x1="3456" />
        </branch>
        <branch name="clk100">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3120" y="2480" type="branch" />
            <wire x2="3120" y1="2480" y2="2480" x1="3088" />
            <wire x2="3200" y1="2480" y2="2480" x1="3120" />
        </branch>
        <instance x="2816" y="3312" name="XLXI_15" orien="R0" />
        <instance x="2240" y="3168" name="XLXI_16" orien="R0">
        </instance>
        <branch name="XLXN_52">
            <wire x2="2720" y1="3008" y2="3008" x1="2624" />
            <wire x2="2720" y1="3008" y2="3056" x1="2720" />
            <wire x2="2816" y1="3056" y2="3056" x1="2720" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="2752" y1="2864" y2="2992" x1="2752" />
            <wire x2="2816" y1="2992" y2="2992" x1="2752" />
            <wire x2="3056" y1="2864" y2="2864" x1="2752" />
            <wire x2="3056" y1="2544" y2="2544" x1="3008" />
            <wire x2="3200" y1="2544" y2="2544" x1="3056" />
            <wire x2="3056" y1="2544" y2="2864" x1="3056" />
        </branch>
        <branch name="clk100">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2752" y="3184" type="branch" />
            <wire x2="2752" y1="3184" y2="3184" x1="2672" />
            <wire x2="2816" y1="3184" y2="3184" x1="2752" />
        </branch>
        <branch name="state">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3296" y="3056" type="branch" />
            <wire x2="2208" y1="3840" y2="3920" x1="2208" />
            <wire x2="2224" y1="3920" y2="3920" x1="2208" />
            <wire x2="3072" y1="3840" y2="3840" x1="2208" />
            <wire x2="3136" y1="3840" y2="3840" x1="3072" />
            <wire x2="3072" y1="3840" y2="4000" x1="3072" />
            <wire x2="3440" y1="4000" y2="4000" x1="3072" />
            <wire x2="3296" y1="3056" y2="3056" x1="3200" />
            <wire x2="3440" y1="3056" y2="3056" x1="3296" />
            <wire x2="3440" y1="3056" y2="4000" x1="3440" />
        </branch>
        <branch name="clk100">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2160" y="3072" type="branch" />
            <wire x2="2160" y1="3072" y2="3072" x1="2048" />
            <wire x2="2240" y1="3072" y2="3072" x1="2160" />
        </branch>
        <branch name="E190">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2096" y="3136" type="branch" />
            <wire x2="2096" y1="3136" y2="3136" x1="2048" />
            <wire x2="2240" y1="3136" y2="3136" x1="2096" />
        </branch>
        <branch name="btn1">
            <wire x2="2240" y1="3008" y2="3008" x1="2208" />
        </branch>
        <branch name="led(7:0)">
            <wire x2="5184" y1="1920" y2="1920" x1="5168" />
            <wire x2="5184" y1="1920" y2="2064" x1="5184" />
            <wire x2="5264" y1="2064" y2="2064" x1="5184" />
        </branch>
        <instance x="4784" y="2080" name="XLXI_17" orien="R0">
        </instance>
        <instance x="4800" y="1088" name="XLXI_18" orien="R0">
        </instance>
        <instance x="4256" y="1088" name="XLXI_19" orien="R0">
        </instance>
        <branch name="XLXN_61">
            <wire x2="4800" y1="1056" y2="1056" x1="4640" />
        </branch>
        <branch name="clk3">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="4192" y="1056" type="branch" />
            <wire x2="4192" y1="1056" y2="1056" x1="4160" />
            <wire x2="4256" y1="1056" y2="1056" x1="4192" />
        </branch>
        <branch name="clk3">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="4752" y="992" type="branch" />
            <wire x2="4752" y1="992" y2="992" x1="4704" />
            <wire x2="4800" y1="992" y2="992" x1="4752" />
        </branch>
        <branch name="XLXN_64(7:0)">
            <wire x2="4720" y1="1808" y2="2048" x1="4720" />
            <wire x2="4784" y1="2048" y2="2048" x1="4720" />
            <wire x2="5232" y1="1808" y2="1808" x1="4720" />
            <wire x2="5232" y1="992" y2="992" x1="5184" />
            <wire x2="5232" y1="992" y2="1808" x1="5232" />
        </branch>
        <branch name="state">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="4752" y="1680" type="branch" />
            <wire x2="4704" y1="1680" y2="1920" x1="4704" />
            <wire x2="4784" y1="1920" y2="1920" x1="4704" />
            <wire x2="4752" y1="1680" y2="1680" x1="4704" />
            <wire x2="4784" y1="1680" y2="1680" x1="4752" />
        </branch>
        <iomarker fontsize="28" x="2272" y="1280" name="clk" orien="R180" />
        <iomarker fontsize="28" x="2592" y="2544" name="btn0" orien="R180" />
        <iomarker fontsize="28" x="3456" y="2848" name="SW(7:0)" orien="R180" />
        <iomarker fontsize="28" x="2208" y="3008" name="btn1" orien="R180" />
        <iomarker fontsize="28" x="5264" y="2064" name="led(7:0)" orien="R0" />
        <branch name="btn2">
            <wire x2="2208" y1="3424" y2="3424" x1="2176" />
        </branch>
        <branch name="clk100">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2160" y="3488" type="branch" />
            <wire x2="2160" y1="3488" y2="3488" x1="2032" />
            <wire x2="2208" y1="3488" y2="3488" x1="2160" />
        </branch>
        <branch name="E190">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2176" y="3552" type="branch" />
            <wire x2="2176" y1="3552" y2="3552" x1="2032" />
            <wire x2="2208" y1="3552" y2="3552" x1="2176" />
        </branch>
        <instance x="2208" y="3584" name="XLXI_35" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2176" y="3424" name="btn2" orien="R180" />
        <instance x="3824" y="4064" name="XLXI_37" orien="R0" />
        <branch name="clk100">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3696" y="3936" type="branch" />
            <wire x2="3696" y1="3936" y2="3936" x1="3584" />
            <wire x2="3824" y1="3936" y2="3936" x1="3696" />
        </branch>
        <instance x="4464" y="3344" name="XLXI_39" orien="R0">
        </instance>
        <branch name="value(15:0)">
            <wire x2="3552" y1="3376" y2="3616" x1="3552" />
            <wire x2="3824" y1="3616" y2="3616" x1="3552" />
            <wire x2="5008" y1="3376" y2="3376" x1="3552" />
            <wire x2="5120" y1="3376" y2="3376" x1="5008" />
        </branch>
        <branch name="value(7:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="5008" y="3232" type="branch" />
            <wire x2="5008" y1="3184" y2="3184" x1="4848" />
            <wire x2="5008" y1="3184" y2="3232" x1="5008" />
            <wire x2="5008" y1="3232" y2="3280" x1="5008" />
        </branch>
        <bustap x2="5008" y1="3376" y2="3280" x1="5008" />
        <instance x="3232" y="3648" name="XLXI_42" orien="R0">
        </instance>
        <branch name="XLXN_127(15:0)">
            <wire x2="3824" y1="3680" y2="3680" x1="3376" />
        </branch>
        <instance x="5008" y="3680" name="XLXI_2" orien="R0">
        </instance>
        <branch name="sevenseg(6:0)">
            <wire x2="5424" y1="3584" y2="3584" x1="5392" />
        </branch>
        <branch name="anodes(3:0)">
            <wire x2="5424" y1="3648" y2="3648" x1="5392" />
        </branch>
        <branch name="XLXN_46(15:0)">
            <wire x2="4544" y1="3552" y2="3552" x1="4336" />
            <wire x2="4544" y1="3552" y2="3808" x1="4544" />
            <wire x2="4944" y1="3808" y2="3808" x1="4544" />
            <wire x2="4944" y1="3648" y2="3808" x1="4944" />
            <wire x2="5008" y1="3648" y2="3648" x1="4944" />
        </branch>
        <iomarker fontsize="28" x="5424" y="3584" name="sevenseg(6:0)" orien="R0" />
        <iomarker fontsize="28" x="5424" y="3648" name="anodes(3:0)" orien="R0" />
        <instance x="3136" y="3968" name="XLXI_45" orien="R0" />
        <branch name="XLXN_136">
            <wire x2="3200" y1="3424" y2="3424" x1="2592" />
            <wire x2="3200" y1="3424" y2="3744" x1="3200" />
            <wire x2="3824" y1="3744" y2="3744" x1="3200" />
        </branch>
        <branch name="XLXN_137">
            <wire x2="3824" y1="3872" y2="3872" x1="3392" />
        </branch>
        <branch name="XLXN_140">
            <wire x2="3776" y1="3184" y2="3552" x1="3776" />
            <wire x2="3824" y1="3552" y2="3552" x1="3776" />
            <wire x2="3776" y1="3552" y2="3808" x1="3776" />
            <wire x2="3824" y1="3808" y2="3808" x1="3776" />
            <wire x2="4288" y1="3184" y2="3184" x1="3776" />
            <wire x2="4464" y1="3184" y2="3184" x1="4288" />
            <wire x2="4288" y1="2752" y2="2752" x1="4128" />
            <wire x2="4288" y1="2752" y2="3184" x1="4288" />
        </branch>
        <instance x="2784" y="3936" name="XLXI_46" orien="R0" />
        <branch name="XLXN_144">
            <wire x2="3136" y1="3904" y2="3904" x1="3008" />
        </branch>
        <instance x="2224" y="4176" name="XLXI_47" orien="R0" />
        <branch name="XLXN_146">
            <wire x2="2688" y1="3920" y2="3920" x1="2608" />
            <wire x2="2688" y1="3904" y2="3920" x1="2688" />
            <wire x2="2784" y1="3904" y2="3904" x1="2688" />
        </branch>
        <branch name="clk100">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2128" y="4048" type="branch" />
            <wire x2="1952" y1="4048" y2="4064" x1="1952" />
            <wire x2="2128" y1="4048" y2="4048" x1="1952" />
            <wire x2="2224" y1="4048" y2="4048" x1="2128" />
        </branch>
        <branch name="clk100">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="4832" y="3584" type="branch" />
            <wire x2="4832" y1="3584" y2="3584" x1="4784" />
            <wire x2="5008" y1="3584" y2="3584" x1="4832" />
        </branch>
        <instance x="4224" y="3280" name="XLXI_40" orien="R0">
        </instance>
        <instance x="4224" y="3216" name="XLXI_41" orien="R0">
        </instance>
        <branch name="XLXN_148(7:0)">
            <wire x2="4464" y1="3312" y2="3312" x1="4368" />
        </branch>
        <branch name="XLXN_149(7:0)">
            <wire x2="4464" y1="3248" y2="3248" x1="4368" />
        </branch>
    </sheet>
</drawing>