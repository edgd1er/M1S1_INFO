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
        <signal name="position(7:0)" />
        <signal name="switches(7:0)" />
        <signal name="state" />
        <signal name="XLXN_7" />
        <signal name="btn0" />
        <signal name="XLXN_10" />
        <signal name="XLXN_37" />
        <signal name="led(7:0)" />
        <signal name="random(3:0)" />
        <signal name="XLXN_119(7:0)" />
        <signal name="XLXN_19" />
        <signal name="random(3)" />
        <signal name="random(2)" />
        <signal name="random(1)" />
        <signal name="position(7)" />
        <signal name="position(6)" />
        <signal name="position(5)" />
        <signal name="position(4)" />
        <signal name="position(3)" />
        <signal name="position(2)" />
        <signal name="position(1)" />
        <signal name="position(0)" />
        <signal name="XLXN_140" />
        <signal name="XLXN_143(15:0)" />
        <signal name="sevenseg(6:0)" />
        <signal name="anodes(3:0)" />
        <signal name="value(15:0)" />
        <signal name="XLXN_154" />
        <signal name="E190" />
        <signal name="btn1" />
        <signal name="btn2" />
        <signal name="XLXN_173" />
        <signal name="XLXN_175" />
        <signal name="XLXN_178" />
        <signal name="XLXN_179" />
        <signal name="XLXN_184" />
        <signal name="XLXN_185(15:0)" />
        <signal name="XLXN_148(7:0)" />
        <signal name="XLXN_150(7:0)" />
        <signal name="value(7:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="switches(7:0)" />
        <port polarity="Input" name="btn0" />
        <port polarity="Output" name="led(7:0)" />
        <port polarity="Output" name="sevenseg(6:0)" />
        <port polarity="Output" name="anodes(3:0)" />
        <port polarity="Input" name="btn1" />
        <port polarity="Input" name="btn2" />
        <blockdef name="timer">
            <timestamp>2014-10-16T8:38:17</timestamp>
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <blockdef name="shiftled">
            <timestamp>2014-10-16T8:4:41</timestamp>
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-128" height="256" />
        </blockdef>
        <blockdef name="mux2x8">
            <timestamp>2014-10-16T7:19:21</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
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
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
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
        <block symbolname="timer" name="XLXI_1">
            <blockpin signalname="clk" name="clk_in1" />
            <blockpin signalname="clk100" name="clk_out1" />
            <blockpin signalname="clk3" name="clk_out2" />
        </block>
        <block symbolname="comp8" name="XLXI_8">
            <blockpin signalname="position(7:0)" name="A(7:0)" />
            <blockpin signalname="switches(7:0)" name="B(7:0)" />
            <blockpin signalname="XLXN_154" name="EQ" />
        </block>
        <block symbolname="Enable190" name="XLXI_2">
            <blockpin signalname="clk100" name="clk" />
            <blockpin signalname="XLXN_7" name="Enable190" />
        </block>
        <block symbolname="fjkc" name="XLXI_15">
            <blockpin signalname="clk100" name="C" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_10" name="J" />
            <blockpin signalname="XLXN_37" name="K" />
            <blockpin signalname="XLXN_184" name="Q" />
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
            <blockpin signalname="random(3:0)" name="Q(3:0)" />
        </block>
        <block symbolname="shiftled" name="XLXI_17">
            <blockpin signalname="XLXN_140" name="E" />
            <blockpin signalname="clk3" name="clk" />
            <blockpin signalname="XLXN_119(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="mux2x8" name="XLXI_18">
            <blockpin signalname="state" name="sel" />
            <blockpin signalname="XLXN_119(7:0)" name="a(7:0)" />
            <blockpin signalname="position(7:0)" name="b(7:0)" />
            <blockpin signalname="led(7:0)" name="c(7:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_7">
            <blockpin signalname="XLXN_19" name="P" />
        </block>
        <block symbolname="d3_8e" name="XLXI_6">
            <blockpin signalname="random(1)" name="A0" />
            <blockpin signalname="random(2)" name="A1" />
            <blockpin signalname="random(3)" name="A2" />
            <blockpin signalname="XLXN_19" name="E" />
            <blockpin signalname="position(0)" name="D0" />
            <blockpin signalname="position(1)" name="D1" />
            <blockpin signalname="position(2)" name="D2" />
            <blockpin signalname="position(3)" name="D3" />
            <blockpin signalname="position(4)" name="D4" />
            <blockpin signalname="position(5)" name="D5" />
            <blockpin signalname="position(6)" name="D6" />
            <blockpin signalname="position(7)" name="D7" />
        </block>
        <block symbolname="Enable190" name="XLXI_38">
            <blockpin signalname="clk3" name="clk" />
            <blockpin signalname="XLXN_140" name="Enable190" />
        </block>
        <block symbolname="acc16" name="XLXI_39">
            <blockpin signalname="XLXN_154" name="ADD" />
            <blockpin signalname="value(15:0)" name="B(15:0)" />
            <blockpin signalname="clk100" name="C" />
            <blockpin signalname="XLXN_175" name="CE" />
            <blockpin signalname="XLXN_154" name="CI" />
            <blockpin signalname="XLXN_185(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_173" name="L" />
            <blockpin name="R" />
            <blockpin signalname="clk100" name="CO" />
            <blockpin name="OFL" />
            <blockpin signalname="XLXN_143(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="afficheur" name="XLXI_5">
            <blockpin signalname="clk100" name="clk" />
            <blockpin signalname="XLXN_143(15:0)" name="din(15:0)" />
            <blockpin signalname="sevenseg(6:0)" name="sevenseg(6:0)" />
            <blockpin signalname="anodes(3:0)" name="anodes(3:0)" />
        </block>
        <block symbolname="pulse" name="XLXI_14">
            <blockpin signalname="clk100" name="inp" />
            <blockpin signalname="btn1" name="E" />
            <blockpin signalname="E190" name="clk" />
            <blockpin signalname="XLXN_37" name="outp" />
        </block>
        <block symbolname="pulse" name="XLXI_45">
            <blockpin signalname="clk100" name="inp" />
            <blockpin signalname="btn2" name="E" />
            <blockpin signalname="E190" name="clk" />
            <blockpin signalname="XLXN_173" name="outp" />
        </block>
        <block symbolname="fd" name="XLXI_46">
            <blockpin signalname="clk100" name="C" />
            <blockpin signalname="XLXN_184" name="D" />
            <blockpin signalname="XLXN_178" name="Q" />
        </block>
        <block symbolname="and2" name="XLXI_47">
            <blockpin signalname="XLXN_179" name="I0" />
            <blockpin signalname="XLXN_184" name="I1" />
            <blockpin signalname="XLXN_175" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_48">
            <blockpin signalname="XLXN_178" name="I" />
            <blockpin signalname="XLXN_179" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_49">
            <attr value="0050" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_185(15:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_43">
            <attr value="0007" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_150(7:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_42">
            <attr value="00000" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_148(7:0)" name="O" />
        </block>
        <block symbolname="mux2x8" name="XLXI_41">
            <blockpin signalname="XLXN_154" name="sel" />
            <blockpin signalname="XLXN_148(7:0)" name="a(7:0)" />
            <blockpin signalname="XLXN_150(7:0)" name="b(7:0)" />
            <blockpin signalname="value(7:0)" name="c(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <wire x2="208" y1="176" y2="176" x1="96" />
        </branch>
        <branch name="clk100">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2864" y="2144" type="branch" />
            <wire x2="2768" y1="2224" y2="2224" x1="2720" />
            <wire x2="2864" y1="2144" y2="2144" x1="2768" />
            <wire x2="2880" y1="2144" y2="2144" x1="2864" />
            <wire x2="2768" y1="2144" y2="2224" x1="2768" />
        </branch>
        <branch name="switches(7:0)">
            <wire x2="2032" y1="1776" y2="1776" x1="480" />
        </branch>
        <branch name="clk3">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="960" y="272" type="branch" />
            <wire x2="960" y1="272" y2="272" x1="816" />
        </branch>
        <branch name="clk100">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="64" y="1520" type="branch" />
            <wire x2="64" y1="1520" y2="1520" x1="32" />
            <wire x2="128" y1="1520" y2="1520" x1="64" />
        </branch>
        <branch name="clk100">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="544" y="1584" type="branch" />
            <wire x2="544" y1="1584" y2="1584" x1="288" />
            <wire x2="592" y1="1584" y2="1584" x1="544" />
        </branch>
        <branch name="btn0">
            <wire x2="576" y1="1376" y2="1376" x1="560" />
            <wire x2="576" y1="1376" y2="1456" x1="576" />
            <wire x2="592" y1="1456" y2="1456" x1="576" />
        </branch>
        <branch name="clk100">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="752" y="2080" type="branch" />
            <wire x2="992" y1="2080" y2="2080" x1="752" />
        </branch>
        <instance x="1472" y="1632" name="XLXI_4" orien="R0">
        </instance>
        <branch name="clk100">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1392" y="1536" type="branch" />
            <wire x2="1392" y1="1536" y2="1536" x1="1360" />
            <wire x2="1472" y1="1536" y2="1536" x1="1392" />
        </branch>
        <branch name="state">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2640" y="512" type="branch" />
            <wire x2="2640" y1="512" y2="512" x1="2560" />
            <wire x2="2768" y1="512" y2="512" x1="2640" />
        </branch>
        <branch name="led(7:0)">
            <wire x2="3312" y1="512" y2="512" x1="3152" />
        </branch>
        <branch name="random(3:0)">
            <wire x2="1472" y1="624" y2="736" x1="1472" />
            <wire x2="1472" y1="736" y2="800" x1="1472" />
            <wire x2="1472" y1="800" y2="864" x1="1472" />
            <wire x2="1472" y1="864" y2="1392" x1="1472" />
            <wire x2="1920" y1="1392" y2="1392" x1="1472" />
            <wire x2="1920" y1="1392" y2="1536" x1="1920" />
            <wire x2="1920" y1="1536" y2="1536" x1="1856" />
        </branch>
        <instance x="2768" y="672" name="XLXI_18" orien="R0">
        </instance>
        <branch name="position(7:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2032" y="1392" type="branch" />
            <wire x2="2032" y1="1392" y2="1392" x1="2016" />
            <wire x2="2448" y1="1392" y2="1392" x1="2032" />
            <wire x2="2016" y1="1392" y2="1584" x1="2016" />
            <wire x2="2032" y1="1584" y2="1584" x1="2016" />
            <wire x2="2448" y1="576" y2="640" x1="2448" />
            <wire x2="2448" y1="640" y2="736" x1="2448" />
            <wire x2="2448" y1="736" y2="800" x1="2448" />
            <wire x2="2448" y1="800" y2="864" x1="2448" />
            <wire x2="2448" y1="864" y2="928" x1="2448" />
            <wire x2="2448" y1="928" y2="992" x1="2448" />
            <wire x2="2448" y1="992" y2="1056" x1="2448" />
            <wire x2="2448" y1="1056" y2="1120" x1="2448" />
            <wire x2="2448" y1="1120" y2="1184" x1="2448" />
            <wire x2="2448" y1="1184" y2="1392" x1="2448" />
            <wire x2="2768" y1="640" y2="640" x1="2448" />
        </branch>
        <branch name="XLXN_119(7:0)">
            <wire x2="2752" y1="368" y2="576" x1="2752" />
            <wire x2="2768" y1="576" y2="576" x1="2752" />
            <wire x2="3040" y1="368" y2="368" x1="2752" />
            <wire x2="3040" y1="288" y2="288" x1="2960" />
            <wire x2="3040" y1="288" y2="368" x1="3040" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1760" y1="1184" y2="1184" x1="1728" />
        </branch>
        <instance x="1728" y="1248" name="XLXI_7" orien="R270" />
        <bustap x2="1568" y1="864" y2="864" x1="1472" />
        <branch name="random(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1664" y="864" type="branch" />
            <wire x2="1664" y1="864" y2="864" x1="1568" />
            <wire x2="1760" y1="864" y2="864" x1="1664" />
        </branch>
        <bustap x2="1568" y1="800" y2="800" x1="1472" />
        <branch name="random(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1664" y="800" type="branch" />
            <wire x2="1664" y1="800" y2="800" x1="1568" />
            <wire x2="1760" y1="800" y2="800" x1="1664" />
        </branch>
        <bustap x2="1568" y1="736" y2="736" x1="1472" />
        <branch name="random(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1664" y="736" type="branch" />
            <wire x2="1664" y1="736" y2="736" x1="1568" />
            <wire x2="1760" y1="736" y2="736" x1="1664" />
        </branch>
        <bustap x2="2352" y1="1184" y2="1184" x1="2448" />
        <branch name="position(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2248" y="1184" type="branch" />
            <wire x2="2248" y1="1184" y2="1184" x1="2144" />
            <wire x2="2352" y1="1184" y2="1184" x1="2248" />
        </branch>
        <bustap x2="2352" y1="1120" y2="1120" x1="2448" />
        <branch name="position(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2248" y="1120" type="branch" />
            <wire x2="2248" y1="1120" y2="1120" x1="2144" />
            <wire x2="2352" y1="1120" y2="1120" x1="2248" />
        </branch>
        <bustap x2="2352" y1="1056" y2="1056" x1="2448" />
        <branch name="position(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2248" y="1056" type="branch" />
            <wire x2="2248" y1="1056" y2="1056" x1="2144" />
            <wire x2="2352" y1="1056" y2="1056" x1="2248" />
        </branch>
        <bustap x2="2352" y1="992" y2="992" x1="2448" />
        <branch name="position(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2248" y="992" type="branch" />
            <wire x2="2248" y1="992" y2="992" x1="2144" />
            <wire x2="2352" y1="992" y2="992" x1="2248" />
        </branch>
        <bustap x2="2352" y1="928" y2="928" x1="2448" />
        <branch name="position(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2248" y="928" type="branch" />
            <wire x2="2248" y1="928" y2="928" x1="2144" />
            <wire x2="2352" y1="928" y2="928" x1="2248" />
        </branch>
        <bustap x2="2352" y1="864" y2="864" x1="2448" />
        <branch name="position(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2248" y="864" type="branch" />
            <wire x2="2248" y1="864" y2="864" x1="2144" />
            <wire x2="2352" y1="864" y2="864" x1="2248" />
        </branch>
        <bustap x2="2352" y1="800" y2="800" x1="2448" />
        <branch name="position(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2248" y="800" type="branch" />
            <wire x2="2248" y1="800" y2="800" x1="2144" />
            <wire x2="2352" y1="800" y2="800" x1="2248" />
        </branch>
        <bustap x2="2352" y1="736" y2="736" x1="2448" />
        <branch name="position(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2248" y="736" type="branch" />
            <wire x2="2248" y1="736" y2="736" x1="2144" />
            <wire x2="2352" y1="736" y2="736" x1="2248" />
        </branch>
        <instance x="1760" y="1312" name="XLXI_6" orien="R0" />
        <instance x="2576" y="192" name="XLXI_17" orien="R0">
        </instance>
        <branch name="clk3">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1744" y="96" type="branch" />
            <wire x2="1904" y1="96" y2="96" x1="1744" />
        </branch>
        <branch name="XLXN_140">
            <wire x2="2576" y1="96" y2="96" x1="2288" />
        </branch>
        <branch name="clk3">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2416" y="160" type="branch" />
            <wire x2="2576" y1="160" y2="160" x1="2416" />
        </branch>
        <instance x="1904" y="128" name="XLXI_38" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3312" y="512" name="led(7:0)" orien="R0" />
        <instance x="208" y="96" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="96" y="176" name="clk" orien="R180" />
        <branch name="clk100">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1056" y="176" type="branch" />
            <wire x2="1056" y1="176" y2="176" x1="816" />
        </branch>
        <instance x="2032" y="1904" name="XLXI_8" orien="R0" />
        <iomarker fontsize="28" x="480" y="1776" name="switches(7:0)" orien="R180" />
        <branch name="XLXN_143(15:0)">
            <wire x2="2736" y1="2160" y2="2160" x1="2720" />
            <wire x2="2736" y1="2160" y2="2208" x1="2736" />
            <wire x2="2880" y1="2208" y2="2208" x1="2736" />
        </branch>
        <branch name="sevenseg(6:0)">
            <wire x2="3280" y1="2144" y2="2144" x1="3264" />
            <wire x2="3296" y1="2016" y2="2016" x1="3280" />
            <wire x2="3280" y1="2016" y2="2144" x1="3280" />
        </branch>
        <branch name="anodes(3:0)">
            <wire x2="3280" y1="2208" y2="2208" x1="3264" />
            <wire x2="3280" y1="2208" y2="2304" x1="3280" />
            <wire x2="3312" y1="2304" y2="2304" x1="3280" />
        </branch>
        <branch name="value(15:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2032" y="1872" type="branch" />
            <wire x2="2032" y1="1872" y2="2224" x1="2032" />
            <wire x2="2208" y1="2224" y2="2224" x1="2032" />
            <wire x2="3360" y1="1872" y2="1872" x1="2032" />
            <wire x2="3360" y1="1184" y2="1264" x1="3360" />
            <wire x2="3360" y1="1264" y2="1872" x1="3360" />
        </branch>
        <bustap x2="3264" y1="1264" y2="1264" x1="3360" />
        <instance x="2208" y="2672" name="XLXI_39" orien="R0" />
        <instance x="592" y="1616" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_7">
            <wire x2="592" y1="1520" y2="1520" x1="512" />
        </branch>
        <instance x="128" y="1552" name="XLXI_2" orien="R0">
        </instance>
        <branch name="E190">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="384" y="2000" type="branch" />
            <wire x2="432" y1="2000" y2="2000" x1="384" />
        </branch>
        <branch name="btn1">
            <wire x2="432" y1="1936" y2="1936" x1="384" />
        </branch>
        <branch name="clk100">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="400" y="1872" type="branch" />
            <wire x2="432" y1="1872" y2="1872" x1="400" />
        </branch>
        <instance x="432" y="2032" name="XLXI_14" orien="R0">
        </instance>
        <iomarker fontsize="28" x="384" y="1936" name="btn1" orien="R180" />
        <branch name="XLXN_10">
            <wire x2="928" y1="1760" y2="1888" x1="928" />
            <wire x2="992" y1="1888" y2="1888" x1="928" />
            <wire x2="1008" y1="1760" y2="1760" x1="928" />
            <wire x2="1008" y1="1456" y2="1456" x1="976" />
            <wire x2="1008" y1="1456" y2="1600" x1="1008" />
            <wire x2="1472" y1="1600" y2="1600" x1="1008" />
            <wire x2="1008" y1="1600" y2="1760" x1="1008" />
        </branch>
        <instance x="432" y="2400" name="XLXI_45" orien="R0">
        </instance>
        <branch name="clk100">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="272" y="2240" type="branch" />
            <wire x2="432" y1="2240" y2="2240" x1="272" />
        </branch>
        <branch name="btn2">
            <wire x2="432" y1="2304" y2="2304" x1="272" />
        </branch>
        <branch name="E190">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="272" y="2368" type="branch" />
            <wire x2="432" y1="2368" y2="2368" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="2304" name="btn2" orien="R180" />
        <branch name="XLXN_173">
            <wire x2="1504" y1="2240" y2="2240" x1="816" />
            <wire x2="1504" y1="2240" y2="2352" x1="1504" />
            <wire x2="2208" y1="2352" y2="2352" x1="1504" />
        </branch>
        <instance x="992" y="2672" name="XLXI_46" orien="R0" />
        <branch name="clk100">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="864" y="2544" type="branch" />
            <wire x2="992" y1="2544" y2="2544" x1="864" />
        </branch>
        <instance x="1792" y="2576" name="XLXI_47" orien="R0" />
        <branch name="XLXN_175">
            <wire x2="2208" y1="2480" y2="2480" x1="2048" />
        </branch>
        <branch name="XLXN_179">
            <wire x2="1792" y1="2512" y2="2512" x1="1696" />
        </branch>
        <instance x="1472" y="2544" name="XLXI_48" orien="R0" />
        <branch name="XLXN_178">
            <wire x2="1392" y1="2416" y2="2416" x1="1376" />
            <wire x2="1392" y1="2416" y2="2512" x1="1392" />
            <wire x2="1472" y1="2512" y2="2512" x1="1392" />
        </branch>
        <instance x="992" y="2208" name="XLXI_15" orien="R0" />
        <branch name="XLXN_37">
            <wire x2="832" y1="1872" y2="1872" x1="816" />
            <wire x2="832" y1="1872" y2="1952" x1="832" />
            <wire x2="992" y1="1952" y2="1952" x1="832" />
        </branch>
        <branch name="XLXN_184">
            <wire x2="928" y1="2288" y2="2416" x1="928" />
            <wire x2="992" y1="2416" y2="2416" x1="928" />
            <wire x2="1408" y1="2288" y2="2288" x1="928" />
            <wire x2="1408" y1="2288" y2="2448" x1="1408" />
            <wire x2="1584" y1="2448" y2="2448" x1="1408" />
            <wire x2="1792" y1="2448" y2="2448" x1="1584" />
            <wire x2="1584" y1="1952" y2="1952" x1="1376" />
            <wire x2="1584" y1="1952" y2="2448" x1="1584" />
        </branch>
        <branch name="XLXN_185(15:0)">
            <wire x2="2208" y1="2288" y2="2288" x1="1968" />
        </branch>
        <instance x="1824" y="2256" name="XLXI_49" orien="R0">
        </instance>
        <branch name="clk100">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2112" y="2544" type="branch" />
            <wire x2="2208" y1="2544" y2="2544" x1="2112" />
        </branch>
        <instance x="2880" y="2240" name="XLXI_5" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3312" y="2304" name="anodes(3:0)" orien="R0" />
        <iomarker fontsize="28" x="3296" y="2016" name="sevenseg(6:0)" orien="R0" />
        <branch name="XLXN_148(7:0)">
            <wire x2="2784" y1="1696" y2="1696" x1="2720" />
        </branch>
        <branch name="XLXN_150(7:0)">
            <wire x2="2736" y1="1792" y2="1792" x1="2720" />
            <wire x2="2784" y1="1760" y2="1760" x1="2736" />
            <wire x2="2736" y1="1760" y2="1792" x1="2736" />
        </branch>
        <instance x="2576" y="1760" name="XLXI_43" orien="R0">
        </instance>
        <instance x="2576" y="1664" name="XLXI_42" orien="R0">
        </instance>
        <branch name="value(7:0)">
            <wire x2="3248" y1="1632" y2="1632" x1="3168" />
            <wire x2="3264" y1="1264" y2="1264" x1="3248" />
            <wire x2="3248" y1="1264" y2="1632" x1="3248" />
        </branch>
        <instance x="2784" y="1792" name="XLXI_41" orien="R0">
        </instance>
        <branch name="XLXN_154">
            <wire x2="2464" y1="1856" y2="1856" x1="2064" />
            <wire x2="2064" y1="1856" y2="1968" x1="2064" />
            <wire x2="2064" y1="1968" y2="2160" x1="2064" />
            <wire x2="2208" y1="2160" y2="2160" x1="2064" />
            <wire x2="2128" y1="1968" y2="1968" x1="2064" />
            <wire x2="2128" y1="1968" y2="2416" x1="2128" />
            <wire x2="2208" y1="2416" y2="2416" x1="2128" />
            <wire x2="2464" y1="1680" y2="1680" x1="2416" />
            <wire x2="2464" y1="1680" y2="1856" x1="2464" />
            <wire x2="2784" y1="1632" y2="1632" x1="2464" />
            <wire x2="2464" y1="1632" y2="1680" x1="2464" />
        </branch>
        <iomarker fontsize="28" x="560" y="1376" name="btn0" orien="R180" />
    </sheet>
</drawing>