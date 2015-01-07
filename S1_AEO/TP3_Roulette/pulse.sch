<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="outp" />
        <signal name="inp" />
        <signal name="q2" />
        <signal name="q0" />
        <signal name="q5" />
        <signal name="q4" />
        <signal name="q3" />
        <signal name="clk" />
        <signal name="E" />
        <signal name="O1" />
        <signal name="q1" />
        <port polarity="Output" name="outp" />
        <port polarity="Input" name="inp" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="E" />
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
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
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
        <block symbolname="fde" name="XLXI_1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="inp" name="D" />
            <blockpin signalname="q0" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_2">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="q0" name="D" />
            <blockpin signalname="q1" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_3">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="q1" name="D" />
            <blockpin signalname="q2" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_4">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="O1" name="D" />
            <blockpin signalname="q3" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_5">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="q3" name="D" />
            <blockpin signalname="q4" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_6">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="q4" name="D" />
            <blockpin signalname="q5" name="Q" />
        </block>
        <block symbolname="and3" name="XLXI_7">
            <blockpin signalname="q2" name="I0" />
            <blockpin signalname="q1" name="I1" />
            <blockpin signalname="q0" name="I2" />
            <blockpin signalname="O1" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_8">
            <blockpin signalname="XLXN_2" name="I0" />
            <blockpin signalname="q4" name="I1" />
            <blockpin signalname="q3" name="I2" />
            <blockpin signalname="outp" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="q5" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="880" y="880" name="XLXI_1" orien="R0" />
        <instance x="1568" y="880" name="XLXI_2" orien="R0" />
        <instance x="2288" y="880" name="XLXI_3" orien="R0" />
        <instance x="880" y="1872" name="XLXI_4" orien="R0" />
        <instance x="1600" y="1872" name="XLXI_5" orien="R0" />
        <instance x="2336" y="1872" name="XLXI_6" orien="R0" />
        <branch name="outp">
            <wire x2="3264" y1="1136" y2="1136" x1="3248" />
            <wire x2="3360" y1="1136" y2="1136" x1="3264" />
        </branch>
        <branch name="inp">
            <wire x2="864" y1="624" y2="624" x1="528" />
            <wire x2="880" y1="624" y2="624" x1="864" />
        </branch>
        <iomarker fontsize="28" x="528" y="624" name="inp" orien="R180" />
        <instance x="2928" y="368" name="XLXI_7" orien="R0" />
        <branch name="q2">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2928" y="400" type="branch" />
            <wire x2="2928" y1="624" y2="624" x1="2672" />
            <wire x2="2928" y1="304" y2="400" x1="2928" />
            <wire x2="2928" y1="400" y2="416" x1="2928" />
            <wire x2="2928" y1="416" y2="624" x1="2928" />
        </branch>
        <branch name="q1">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2080" y="384" type="branch" />
            <wire x2="2080" y1="624" y2="624" x1="1952" />
            <wire x2="2288" y1="624" y2="624" x1="2080" />
            <wire x2="2928" y1="240" y2="240" x1="2080" />
            <wire x2="2080" y1="240" y2="384" x1="2080" />
            <wire x2="2080" y1="384" y2="416" x1="2080" />
            <wire x2="2080" y1="416" y2="624" x1="2080" />
        </branch>
        <branch name="q0">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1376" y="352" type="branch" />
            <wire x2="1376" y1="624" y2="624" x1="1264" />
            <wire x2="1568" y1="624" y2="624" x1="1376" />
            <wire x2="2928" y1="176" y2="176" x1="1376" />
            <wire x2="1376" y1="176" y2="352" x1="1376" />
            <wire x2="1376" y1="352" y2="624" x1="1376" />
        </branch>
        <branch name="q5">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2736" y="1616" type="branch" />
            <wire x2="2736" y1="1616" y2="1616" x1="2720" />
            <wire x2="2800" y1="1616" y2="1616" x1="2736" />
            <wire x2="2800" y1="1504" y2="1616" x1="2800" />
        </branch>
        <instance x="2832" y="1504" name="XLXI_9" orien="R270" />
        <instance x="2992" y="1264" name="XLXI_8" orien="R0" />
        <branch name="q3">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1456" y="1296" type="branch" />
            <wire x2="1456" y1="1616" y2="1616" x1="1264" />
            <wire x2="1600" y1="1616" y2="1616" x1="1456" />
            <wire x2="2992" y1="1072" y2="1072" x1="1456" />
            <wire x2="1456" y1="1072" y2="1296" x1="1456" />
            <wire x2="1456" y1="1296" y2="1616" x1="1456" />
        </branch>
        <branch name="q4">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2160" y="1328" type="branch" />
            <wire x2="2160" y1="1616" y2="1616" x1="1984" />
            <wire x2="2336" y1="1616" y2="1616" x1="2160" />
            <wire x2="2992" y1="1136" y2="1136" x1="2160" />
            <wire x2="2160" y1="1136" y2="1328" x1="2160" />
            <wire x2="2160" y1="1328" y2="1616" x1="2160" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="2800" y1="1264" y2="1280" x1="2800" />
            <wire x2="2992" y1="1264" y2="1264" x1="2800" />
            <wire x2="2992" y1="1200" y2="1264" x1="2992" />
        </branch>
        <branch name="clk">
            <wire x2="816" y1="1872" y2="1872" x1="608" />
            <wire x2="1328" y1="1872" y2="1872" x1="816" />
            <wire x2="2064" y1="1872" y2="1872" x1="1328" />
            <wire x2="880" y1="752" y2="752" x1="816" />
            <wire x2="816" y1="752" y2="880" x1="816" />
            <wire x2="1328" y1="880" y2="880" x1="816" />
            <wire x2="2032" y1="880" y2="880" x1="1328" />
            <wire x2="816" y1="880" y2="1744" x1="816" />
            <wire x2="880" y1="1744" y2="1744" x1="816" />
            <wire x2="816" y1="1744" y2="1872" x1="816" />
            <wire x2="1328" y1="752" y2="880" x1="1328" />
            <wire x2="1568" y1="752" y2="752" x1="1328" />
            <wire x2="1328" y1="1744" y2="1872" x1="1328" />
            <wire x2="1600" y1="1744" y2="1744" x1="1328" />
            <wire x2="2032" y1="752" y2="880" x1="2032" />
            <wire x2="2288" y1="752" y2="752" x1="2032" />
            <wire x2="2064" y1="1744" y2="1872" x1="2064" />
            <wire x2="2336" y1="1744" y2="1744" x1="2064" />
        </branch>
        <branch name="E">
            <wire x2="832" y1="928" y2="928" x1="272" />
            <wire x2="1552" y1="928" y2="928" x1="832" />
            <wire x2="1568" y1="928" y2="928" x1="1552" />
            <wire x2="2256" y1="928" y2="928" x1="1568" />
            <wire x2="880" y1="688" y2="688" x1="832" />
            <wire x2="832" y1="688" y2="928" x1="832" />
            <wire x2="1568" y1="688" y2="688" x1="1552" />
            <wire x2="1552" y1="688" y2="928" x1="1552" />
            <wire x2="2288" y1="688" y2="688" x1="2256" />
            <wire x2="2256" y1="688" y2="928" x1="2256" />
        </branch>
        <iomarker fontsize="28" x="272" y="928" name="E" orien="R180" />
        <branch name="O1">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2192" y="992" type="branch" />
            <wire x2="880" y1="992" y2="992" x1="864" />
            <wire x2="2192" y1="992" y2="992" x1="880" />
            <wire x2="3104" y1="992" y2="992" x1="2192" />
            <wire x2="3200" y1="992" y2="992" x1="3104" />
            <wire x2="864" y1="992" y2="1616" x1="864" />
            <wire x2="880" y1="1616" y2="1616" x1="864" />
            <wire x2="3200" y1="240" y2="240" x1="3184" />
            <wire x2="3200" y1="240" y2="992" x1="3200" />
        </branch>
        <iomarker fontsize="28" x="3360" y="1136" name="outp" orien="R0" />
        <iomarker fontsize="28" x="608" y="1872" name="clk" orien="R180" />
    </sheet>
</drawing>