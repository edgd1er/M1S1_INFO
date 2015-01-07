<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="clk" />
        <signal name="XLXN_3" />
        <signal name="clk190" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="enable190" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="enable190" />
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="cb16ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
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
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
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
        <blockdef name="nor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
        </blockdef>
        <block symbolname="vcc" name="XLXI_1">
            <blockpin signalname="XLXN_1" name="P" />
        </block>
        <block symbolname="cb16ce" name="XLXI_2">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_1" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_3" name="CEO" />
            <blockpin name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="cb4ce" name="XLXI_3">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_3" name="CE" />
            <blockpin name="CLR" />
            <blockpin name="CEO" />
            <blockpin name="Q0" />
            <blockpin name="Q1" />
            <blockpin signalname="clk190" name="Q2" />
            <blockpin name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="fd" name="XLXI_4">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="clk190" name="D" />
            <blockpin signalname="XLXN_7" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_5">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_7" name="D" />
            <blockpin signalname="XLXN_9" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="XLXN_7" name="I" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_7">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="enable190" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="416" y="944" name="XLXI_1" orien="R0" />
        <instance x="688" y="1248" name="XLXI_2" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="480" y1="944" y2="1056" x1="480" />
            <wire x2="688" y1="1056" y2="1056" x1="480" />
        </branch>
        <branch name="clk">
            <wire x2="592" y1="1312" y2="1312" x1="496" />
            <wire x2="896" y1="1312" y2="1312" x1="592" />
            <wire x2="1168" y1="1312" y2="1312" x1="896" />
            <wire x2="1696" y1="1312" y2="1312" x1="1168" />
            <wire x2="2288" y1="1312" y2="1312" x1="1696" />
            <wire x2="688" y1="1120" y2="1120" x1="592" />
            <wire x2="592" y1="1120" y2="1312" x1="592" />
            <wire x2="1168" y1="1056" y2="1312" x1="1168" />
            <wire x2="1248" y1="1056" y2="1056" x1="1168" />
            <wire x2="1696" y1="1040" y2="1312" x1="1696" />
            <wire x2="1824" y1="1040" y2="1040" x1="1696" />
            <wire x2="2288" y1="1056" y2="1312" x1="2288" />
            <wire x2="2400" y1="1056" y2="1056" x1="2288" />
        </branch>
        <iomarker fontsize="28" x="496" y="1312" name="clk" orien="R180" />
        <instance x="1248" y="1184" name="XLXI_3" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="1152" y1="1056" y2="1056" x1="1072" />
            <wire x2="1152" y1="992" y2="1056" x1="1152" />
            <wire x2="1248" y1="992" y2="992" x1="1152" />
        </branch>
        <instance x="1824" y="1168" name="XLXI_4" orien="R0" />
        <instance x="2400" y="1184" name="XLXI_5" orien="R0" />
        <branch name="clk190">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1744" y="912" type="branch" />
            <wire x2="1728" y1="864" y2="864" x1="1632" />
            <wire x2="1728" y1="864" y2="912" x1="1728" />
            <wire x2="1744" y1="912" y2="912" x1="1728" />
            <wire x2="1824" y1="912" y2="912" x1="1744" />
        </branch>
        <instance x="2544" y="688" name="XLXI_6" orien="R0" />
        <instance x="2912" y="832" name="XLXI_7" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="2304" y1="912" y2="912" x1="2208" />
            <wire x2="2304" y1="912" y2="928" x1="2304" />
            <wire x2="2400" y1="928" y2="928" x1="2304" />
            <wire x2="2544" y1="656" y2="656" x1="2304" />
            <wire x2="2304" y1="656" y2="912" x1="2304" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="2832" y1="656" y2="656" x1="2768" />
            <wire x2="2832" y1="656" y2="704" x1="2832" />
            <wire x2="2912" y1="704" y2="704" x1="2832" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="2848" y1="928" y2="928" x1="2784" />
            <wire x2="2848" y1="768" y2="928" x1="2848" />
            <wire x2="2912" y1="768" y2="768" x1="2848" />
        </branch>
        <branch name="enable190">
            <wire x2="3200" y1="736" y2="736" x1="3168" />
        </branch>
        <iomarker fontsize="28" x="3200" y="736" name="enable190" orien="R0" />
    </sheet>
</drawing>