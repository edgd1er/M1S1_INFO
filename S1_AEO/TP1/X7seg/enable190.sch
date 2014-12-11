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
        <signal name="XLXN_6" />
        <signal name="clk190" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="Enable190" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="Enable190" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <block symbolname="cb16ce" name="XLXI_1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_1" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_6" name="CEO" />
            <blockpin name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="vcc" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="P" />
        </block>
        <block symbolname="cb4ce" name="XLXI_3">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_6" name="CE" />
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
            <blockpin signalname="XLXN_12" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_5">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_12" name="D" />
            <blockpin signalname="XLXN_14" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="XLXN_12" name="I" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_7">
            <blockpin signalname="XLXN_14" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="Enable190" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="720" y="1072" name="XLXI_1" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="496" y1="704" y2="880" x1="496" />
            <wire x2="720" y1="880" y2="880" x1="496" />
        </branch>
        <branch name="clk">
            <wire x2="224" y1="1232" y2="1232" x1="80" />
            <wire x2="1184" y1="1232" y2="1232" x1="224" />
            <wire x2="1872" y1="1232" y2="1232" x1="1184" />
            <wire x2="2416" y1="1232" y2="1232" x1="1872" />
            <wire x2="2672" y1="1232" y2="1232" x1="2416" />
            <wire x2="720" y1="944" y2="944" x1="224" />
            <wire x2="224" y1="944" y2="1232" x1="224" />
            <wire x2="1280" y1="944" y2="944" x1="1184" />
            <wire x2="1184" y1="944" y2="1232" x1="1184" />
            <wire x2="1872" y1="928" y2="928" x1="1792" />
            <wire x2="1792" y1="928" y2="1072" x1="1792" />
            <wire x2="1872" y1="1072" y2="1072" x1="1792" />
            <wire x2="1872" y1="1072" y2="1232" x1="1872" />
            <wire x2="2416" y1="928" y2="928" x1="2336" />
            <wire x2="2336" y1="928" y2="1072" x1="2336" />
            <wire x2="2416" y1="1072" y2="1072" x1="2336" />
            <wire x2="2416" y1="1072" y2="1232" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="80" y="1232" name="clk" orien="R180" />
        <instance x="432" y="704" name="XLXI_2" orien="R0" />
        <instance x="1280" y="1072" name="XLXI_3" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="1120" y1="880" y2="880" x1="1104" />
            <wire x2="1280" y1="880" y2="880" x1="1120" />
        </branch>
        <instance x="1872" y="1056" name="XLXI_4" orien="R0" />
        <instance x="2416" y="1056" name="XLXI_5" orien="R0" />
        <branch name="clk190">
            <wire x2="1760" y1="752" y2="752" x1="1664" />
            <wire x2="1760" y1="752" y2="800" x1="1760" />
            <wire x2="1872" y1="800" y2="800" x1="1760" />
        </branch>
        <instance x="2432" y="592" name="XLXI_6" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="2272" y1="800" y2="800" x1="2256" />
            <wire x2="2320" y1="800" y2="800" x1="2272" />
            <wire x2="2416" y1="800" y2="800" x1="2320" />
            <wire x2="2432" y1="560" y2="560" x1="2320" />
            <wire x2="2320" y1="560" y2="800" x1="2320" />
        </branch>
        <instance x="2832" y="688" name="XLXI_7" orien="R0" />
        <branch name="XLXN_13">
            <wire x2="2832" y1="560" y2="560" x1="2656" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="2752" y1="624" y2="672" x1="2752" />
            <wire x2="2864" y1="672" y2="672" x1="2752" />
            <wire x2="2864" y1="672" y2="800" x1="2864" />
            <wire x2="2832" y1="624" y2="624" x1="2752" />
            <wire x2="2864" y1="800" y2="800" x1="2800" />
        </branch>
        <branch name="Enable190">
            <wire x2="3200" y1="592" y2="592" x1="3088" />
        </branch>
        <iomarker fontsize="28" x="3200" y="592" name="Enable190" orien="R0" />
    </sheet>
</drawing>