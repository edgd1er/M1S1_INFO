<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="ce" />
        <signal name="q(3:0)" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="q(0)" />
        <signal name="q(1)" />
        <signal name="q(2)" />
        <signal name="q(3)" />
        <signal name="XLXN_17" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="ce" />
        <port polarity="Output" name="q(3:0)" />
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
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <block symbolname="fde" name="XLXI_1">
            <attr value="1" name="INIT">
                <trait verilog="all:0 dp:1" />
                <trait vhdl="all:0 gm:1" />
                <trait valuetype="Bit" />
            </attr>
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="ce" name="CE" />
            <blockpin signalname="XLXN_17" name="D" />
            <blockpin signalname="q(0)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_2">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="ce" name="CE" />
            <blockpin signalname="q(0)" name="D" />
            <blockpin signalname="q(1)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_3">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="ce" name="CE" />
            <blockpin signalname="q(1)" name="D" />
            <blockpin signalname="q(2)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_4">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="ce" name="CE" />
            <blockpin signalname="q(2)" name="D" />
            <blockpin signalname="q(3)" name="Q" />
        </block>
        <block symbolname="xor2" name="XLXI_5">
            <blockpin signalname="q(2)" name="I0" />
            <blockpin signalname="q(3)" name="I1" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="560" y="1216" name="XLXI_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="0" y="-408" type="instance" />
        </instance>
        <instance x="1280" y="1216" name="XLXI_2" orien="R0" />
        <instance x="2000" y="1216" name="XLXI_3" orien="R0" />
        <instance x="2720" y="1216" name="XLXI_4" orien="R0" />
        <instance x="1936" y="624" name="XLXI_5" orien="M0" />
        <branch name="ce">
            <wire x2="384" y1="1504" y2="1504" x1="368" />
            <wire x2="400" y1="1504" y2="1504" x1="384" />
            <wire x2="1120" y1="1504" y2="1504" x1="400" />
            <wire x2="1776" y1="1504" y2="1504" x1="1120" />
            <wire x2="2528" y1="1504" y2="1504" x1="1776" />
            <wire x2="3328" y1="1504" y2="1504" x1="2528" />
            <wire x2="560" y1="1024" y2="1024" x1="400" />
            <wire x2="400" y1="1024" y2="1504" x1="400" />
            <wire x2="1280" y1="1024" y2="1024" x1="1120" />
            <wire x2="1120" y1="1024" y2="1504" x1="1120" />
            <wire x2="2000" y1="1024" y2="1024" x1="1776" />
            <wire x2="1776" y1="1024" y2="1504" x1="1776" />
            <wire x2="2720" y1="1024" y2="1024" x1="2528" />
            <wire x2="2528" y1="1024" y2="1504" x1="2528" />
        </branch>
        <iomarker fontsize="28" x="368" y="1344" name="clk" orien="R180" />
        <iomarker fontsize="28" x="368" y="1504" name="ce" orien="R180" />
        <branch name="q(3:0)">
            <wire x2="944" y1="1680" y2="1680" x1="800" />
            <wire x2="1664" y1="1680" y2="1680" x1="944" />
            <wire x2="2384" y1="1680" y2="1680" x1="1664" />
            <wire x2="3168" y1="1680" y2="1680" x1="2384" />
            <wire x2="3344" y1="1680" y2="1680" x1="3168" />
        </branch>
        <iomarker fontsize="28" x="3344" y="1680" name="q(3:0)" orien="R0" />
        <branch name="clk">
            <wire x2="480" y1="1344" y2="1344" x1="368" />
            <wire x2="1200" y1="1344" y2="1344" x1="480" />
            <wire x2="1920" y1="1344" y2="1344" x1="1200" />
            <wire x2="2640" y1="1344" y2="1344" x1="1920" />
            <wire x2="2720" y1="1344" y2="1344" x1="2640" />
            <wire x2="3328" y1="1344" y2="1344" x1="2720" />
            <wire x2="560" y1="1088" y2="1088" x1="480" />
            <wire x2="480" y1="1088" y2="1344" x1="480" />
            <wire x2="1264" y1="1088" y2="1088" x1="1200" />
            <wire x2="1280" y1="1088" y2="1088" x1="1264" />
            <wire x2="1200" y1="1088" y2="1344" x1="1200" />
            <wire x2="2000" y1="1088" y2="1088" x1="1920" />
            <wire x2="1920" y1="1088" y2="1344" x1="1920" />
            <wire x2="2720" y1="1088" y2="1088" x1="2640" />
            <wire x2="2640" y1="1088" y2="1344" x1="2640" />
        </branch>
        <branch name="q(0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="944" y="1272" type="branch" />
            <wire x2="1280" y1="960" y2="960" x1="944" />
            <wire x2="944" y1="960" y2="1272" x1="944" />
            <wire x2="944" y1="1272" y2="1584" x1="944" />
        </branch>
        <branch name="q(1)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1664" y="1272" type="branch" />
            <wire x2="2000" y1="960" y2="960" x1="1664" />
            <wire x2="1664" y1="960" y2="1272" x1="1664" />
            <wire x2="1664" y1="1272" y2="1584" x1="1664" />
        </branch>
        <branch name="q(2)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2384" y="1272" type="branch" />
            <wire x2="2480" y1="560" y2="560" x1="1936" />
            <wire x2="2480" y1="560" y2="960" x1="2480" />
            <wire x2="2720" y1="960" y2="960" x1="2480" />
            <wire x2="2480" y1="960" y2="960" x1="2384" />
            <wire x2="2384" y1="960" y2="1272" x1="2384" />
            <wire x2="2384" y1="1272" y2="1584" x1="2384" />
        </branch>
        <branch name="q(3)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3168" y="1272" type="branch" />
            <wire x2="3168" y1="496" y2="496" x1="1936" />
            <wire x2="3168" y1="496" y2="960" x1="3168" />
            <wire x2="3168" y1="960" y2="1272" x1="3168" />
            <wire x2="3168" y1="1272" y2="1584" x1="3168" />
            <wire x2="3168" y1="960" y2="960" x1="3104" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="480" y1="528" y2="960" x1="480" />
            <wire x2="560" y1="960" y2="960" x1="480" />
            <wire x2="1680" y1="528" y2="528" x1="480" />
        </branch>
        <bustap x2="3168" y1="1680" y2="1584" x1="3168" />
        <bustap x2="2384" y1="1680" y2="1584" x1="2384" />
        <bustap x2="1664" y1="1680" y2="1584" x1="1664" />
        <bustap x2="944" y1="1680" y2="1584" x1="944" />
    </sheet>
</drawing>