<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="inp" />
        <signal name="E" />
        <signal name="clk" />
        <signal name="q0" />
        <signal name="q1" />
        <signal name="q2" />
        <signal name="o1" />
        <signal name="q3" />
        <signal name="q4" />
        <signal name="q5" />
        <signal name="outp" />
        <signal name="XLXN_48" />
        <port polarity="Input" name="inp" />
        <port polarity="Input" name="E" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="outp" />
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
        <block symbolname="fde" name="XLXI_5">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="inp" name="D" />
            <blockpin signalname="q0" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_6">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="q0" name="D" />
            <blockpin signalname="q1" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_8">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="q1" name="D" />
            <blockpin signalname="q2" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_9">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="o1" name="D" />
            <blockpin signalname="q3" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_10">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="q3" name="D" />
            <blockpin signalname="q4" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_11">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="q4" name="D" />
            <blockpin signalname="q5" name="Q" />
        </block>
        <block symbolname="and3" name="XLXI_12">
            <blockpin signalname="q2" name="I0" />
            <blockpin signalname="q1" name="I1" />
            <blockpin signalname="q0" name="I2" />
            <blockpin signalname="o1" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_13">
            <blockpin signalname="XLXN_48" name="I0" />
            <blockpin signalname="q4" name="I1" />
            <blockpin signalname="q3" name="I2" />
            <blockpin signalname="outp" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_14">
            <blockpin signalname="q5" name="I" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="656" y="1440" name="XLXI_5" orien="R0" />
        <instance x="1456" y="1440" name="XLXI_6" orien="R0" />
        <instance x="2256" y="1440" name="XLXI_8" orien="R0" />
        <branch name="inp">
            <wire x2="656" y1="1184" y2="1184" x1="480" />
        </branch>
        <branch name="q0">
            <wire x2="1200" y1="1184" y2="1184" x1="1040" />
            <wire x2="1456" y1="1184" y2="1184" x1="1200" />
            <wire x2="2816" y1="784" y2="784" x1="1200" />
            <wire x2="1200" y1="784" y2="1184" x1="1200" />
        </branch>
        <branch name="q1">
            <wire x2="2080" y1="1184" y2="1184" x1="1840" />
            <wire x2="2256" y1="1184" y2="1184" x1="2080" />
            <wire x2="2816" y1="848" y2="848" x1="2080" />
            <wire x2="2080" y1="848" y2="1184" x1="2080" />
        </branch>
        <branch name="E">
            <wire x2="512" y1="1488" y2="1488" x1="464" />
            <wire x2="1200" y1="1488" y2="1488" x1="512" />
            <wire x2="1968" y1="1488" y2="1488" x1="1200" />
            <wire x2="656" y1="1248" y2="1248" x1="512" />
            <wire x2="512" y1="1248" y2="1488" x1="512" />
            <wire x2="1456" y1="1248" y2="1248" x1="1200" />
            <wire x2="1200" y1="1248" y2="1488" x1="1200" />
            <wire x2="2256" y1="1248" y2="1248" x1="1968" />
            <wire x2="1968" y1="1248" y2="1488" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="480" y="1184" name="inp" orien="R180" />
        <iomarker fontsize="28" x="400" y="2400" name="clk" orien="R180" />
        <branch name="clk">
            <wire x2="560" y1="2400" y2="2400" x1="400" />
            <wire x2="1248" y1="2400" y2="2400" x1="560" />
            <wire x2="1904" y1="2400" y2="2400" x1="1248" />
            <wire x2="656" y1="1312" y2="1312" x1="560" />
            <wire x2="560" y1="1312" y2="1440" x1="560" />
            <wire x2="1392" y1="1440" y2="1440" x1="560" />
            <wire x2="2160" y1="1440" y2="1440" x1="1392" />
            <wire x2="560" y1="1440" y2="2080" x1="560" />
            <wire x2="560" y1="2080" y2="2400" x1="560" />
            <wire x2="656" y1="2080" y2="2080" x1="560" />
            <wire x2="1440" y1="2080" y2="2080" x1="1248" />
            <wire x2="1248" y1="2080" y2="2400" x1="1248" />
            <wire x2="1392" y1="1312" y2="1440" x1="1392" />
            <wire x2="1456" y1="1312" y2="1312" x1="1392" />
            <wire x2="1904" y1="2080" y2="2400" x1="1904" />
            <wire x2="2256" y1="2080" y2="2080" x1="1904" />
            <wire x2="2160" y1="1312" y2="1440" x1="2160" />
            <wire x2="2256" y1="1312" y2="1312" x1="2160" />
        </branch>
        <instance x="2816" y="976" name="XLXI_12" orien="R0" />
        <branch name="q2">
            <wire x2="2704" y1="1184" y2="1184" x1="2640" />
            <wire x2="2816" y1="912" y2="912" x1="2704" />
            <wire x2="2704" y1="912" y2="1184" x1="2704" />
        </branch>
        <branch name="o1">
            <wire x2="608" y1="1536" y2="1952" x1="608" />
            <wire x2="656" y1="1952" y2="1952" x1="608" />
            <wire x2="3088" y1="1536" y2="1536" x1="608" />
            <wire x2="3088" y1="848" y2="848" x1="3072" />
            <wire x2="3088" y1="848" y2="1536" x1="3088" />
        </branch>
        <branch name="q3">
            <wire x2="1120" y1="1952" y2="1952" x1="1040" />
            <wire x2="1440" y1="1952" y2="1952" x1="1120" />
            <wire x2="2864" y1="1568" y2="1568" x1="1120" />
            <wire x2="1120" y1="1568" y2="1952" x1="1120" />
        </branch>
        <branch name="q4">
            <wire x2="2000" y1="1952" y2="1952" x1="1824" />
            <wire x2="2256" y1="1952" y2="1952" x1="2000" />
            <wire x2="2864" y1="1632" y2="1632" x1="2000" />
            <wire x2="2000" y1="1632" y2="1952" x1="2000" />
        </branch>
        <branch name="q5">
            <wire x2="2864" y1="1952" y2="1952" x1="2640" />
        </branch>
        <branch name="outp">
            <wire x2="3200" y1="1632" y2="1632" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="464" y="1488" name="E" orien="R180" />
        <iomarker fontsize="28" x="3200" y="1632" name="outp" orien="R0" />
        <instance x="2864" y="1760" name="XLXI_13" orien="R0" />
        <instance x="2256" y="2208" name="XLXI_11" orien="R0" />
        <instance x="1440" y="2208" name="XLXI_10" orien="R0" />
        <instance x="656" y="2208" name="XLXI_9" orien="R0" />
        <branch name="XLXN_48">
            <wire x2="2864" y1="1696" y2="1728" x1="2864" />
        </branch>
        <instance x="2896" y="1952" name="XLXI_14" orien="R270" />
    </sheet>
</drawing>