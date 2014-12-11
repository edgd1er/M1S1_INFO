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
        <signal name="clk190" />
        <signal name="XLXN_9" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="Enable190" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="Enable190" />
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
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <block symbolname="cb4ce" name="XLXI_1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_9" name="CE" />
            <blockpin name="CLR" />
            <blockpin name="CEO" />
            <blockpin name="Q0" />
            <blockpin name="Q1" />
            <blockpin signalname="clk190" name="Q2" />
            <blockpin name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="cb16ce" name="XLXI_2">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_1" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_9" name="CEO" />
            <blockpin name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="fd" name="XLXI_3">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="clk190" name="D" />
            <blockpin signalname="XLXN_13" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_4">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_13" name="D" />
            <blockpin signalname="XLXN_15" name="Q" />
        </block>
        <block symbolname="vcc" name="XLXI_5">
            <blockpin signalname="XLXN_1" name="P" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="XLXN_13" name="I" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_7">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="Enable190" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="352" y="1168" name="XLXI_2" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="272" y1="912" y2="976" x1="272" />
            <wire x2="352" y1="976" y2="976" x1="272" />
        </branch>
        <instance x="208" y="912" name="XLXI_5" orien="R0" />
        <branch name="clk">
            <wire x2="272" y1="1328" y2="1328" x1="96" />
            <wire x2="864" y1="1328" y2="1328" x1="272" />
            <wire x2="1488" y1="1328" y2="1328" x1="864" />
            <wire x2="1984" y1="1328" y2="1328" x1="1488" />
            <wire x2="352" y1="1040" y2="1040" x1="272" />
            <wire x2="272" y1="1040" y2="1328" x1="272" />
            <wire x2="944" y1="1040" y2="1040" x1="864" />
            <wire x2="864" y1="1040" y2="1328" x1="864" />
            <wire x2="1536" y1="992" y2="992" x1="1488" />
            <wire x2="1488" y1="992" y2="1328" x1="1488" />
            <wire x2="2112" y1="992" y2="992" x1="1984" />
            <wire x2="1984" y1="992" y2="1328" x1="1984" />
        </branch>
        <branch name="clk190">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1440" y="864" type="branch" />
            <wire x2="1376" y1="848" y2="848" x1="1328" />
            <wire x2="1376" y1="848" y2="864" x1="1376" />
            <wire x2="1440" y1="864" y2="864" x1="1376" />
            <wire x2="1536" y1="864" y2="864" x1="1440" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="944" y1="976" y2="976" x1="736" />
        </branch>
        <instance x="944" y="1168" name="XLXI_1" orien="R0" />
        <instance x="1536" y="1120" name="XLXI_3" orien="R0" />
        <instance x="2112" y="1120" name="XLXI_4" orien="R0" />
        <iomarker fontsize="28" x="96" y="1328" name="clk" orien="R180" />
        <branch name="XLXN_14">
            <wire x2="2560" y1="624" y2="624" x1="2224" />
        </branch>
        <instance x="2000" y="656" name="XLXI_6" orien="R0" />
        <branch name="XLXN_13">
            <wire x2="2000" y1="864" y2="864" x1="1920" />
            <wire x2="2112" y1="864" y2="864" x1="2000" />
            <wire x2="2000" y1="624" y2="864" x1="2000" />
        </branch>
        <instance x="2560" y="752" name="XLXI_7" orien="R0" />
        <branch name="XLXN_15">
            <wire x2="2512" y1="864" y2="864" x1="2496" />
            <wire x2="2560" y1="688" y2="688" x1="2512" />
            <wire x2="2512" y1="688" y2="864" x1="2512" />
        </branch>
        <branch name="Enable190">
            <wire x2="2848" y1="656" y2="656" x1="2816" />
        </branch>
        <iomarker fontsize="28" x="2848" y="656" name="Enable190" orien="R0" />
    </sheet>
</drawing>