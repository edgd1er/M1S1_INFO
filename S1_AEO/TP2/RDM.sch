<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Q(3:0)" />
        <signal name="Q(2)" />
        <signal name="Q(1)" />
        <signal name="Q(0)" />
        <signal name="clk" />
        <signal name="CE" />
        <signal name="XLXN_10" />
        <signal name="Q(3)" />
        <port polarity="Output" name="Q(3:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="CE" />
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
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="XLXN_10" name="D" />
            <blockpin signalname="Q(0)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_2">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="Q(0)" name="D" />
            <blockpin signalname="Q(1)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_3">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="Q(1)" name="D" />
            <blockpin signalname="Q(2)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_4">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="Q(2)" name="D" />
            <blockpin signalname="Q(3)" name="Q" />
        </block>
        <block symbolname="xor2" name="XLXI_5">
            <blockpin signalname="Q(3)" name="I0" />
            <blockpin signalname="Q(2)" name="I1" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="336" y="1680" name="XLXI_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="0" y="-408" type="instance" />
        </instance>
        <instance x="976" y="1680" name="XLXI_2" orien="R0" />
        <instance x="1696" y="1680" name="XLXI_3" orien="R0" />
        <instance x="2416" y="1680" name="XLXI_4" orien="R0" />
        <instance x="1664" y="1024" name="XLXI_5" orien="R180" />
        <branch name="Q(3:0)">
            <wire x2="800" y1="1840" y2="1840" x1="720" />
            <wire x2="1440" y1="1840" y2="1840" x1="800" />
            <wire x2="2144" y1="1840" y2="1840" x1="1440" />
            <wire x2="2880" y1="1840" y2="1840" x1="2144" />
            <wire x2="3040" y1="1840" y2="1840" x1="2880" />
        </branch>
        <iomarker fontsize="28" x="3040" y="1840" name="Q(3:0)" orien="R0" />
        <branch name="Q(2)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2144" y="1584" type="branch" />
            <wire x2="2240" y1="1152" y2="1152" x1="1664" />
            <wire x2="2240" y1="1152" y2="1424" x1="2240" />
            <wire x2="2416" y1="1424" y2="1424" x1="2240" />
            <wire x2="2144" y1="1424" y2="1424" x1="2080" />
            <wire x2="2240" y1="1424" y2="1424" x1="2144" />
            <wire x2="2144" y1="1424" y2="1584" x1="2144" />
            <wire x2="2144" y1="1584" y2="1744" x1="2144" />
        </branch>
        <branch name="Q(1)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1440" y="1584" type="branch" />
            <wire x2="1440" y1="1424" y2="1424" x1="1360" />
            <wire x2="1696" y1="1424" y2="1424" x1="1440" />
            <wire x2="1440" y1="1424" y2="1584" x1="1440" />
            <wire x2="1440" y1="1584" y2="1744" x1="1440" />
        </branch>
        <branch name="Q(0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="800" y="1584" type="branch" />
            <wire x2="800" y1="1424" y2="1424" x1="720" />
            <wire x2="976" y1="1424" y2="1424" x1="800" />
            <wire x2="800" y1="1424" y2="1584" x1="800" />
            <wire x2="800" y1="1584" y2="1744" x1="800" />
        </branch>
        <iomarker fontsize="28" x="176" y="1680" name="clk" orien="R180" />
        <iomarker fontsize="28" x="176" y="1760" name="CE" orien="R180" />
        <branch name="CE">
            <wire x2="272" y1="1760" y2="1760" x1="176" />
            <wire x2="880" y1="1760" y2="1760" x1="272" />
            <wire x2="1600" y1="1760" y2="1760" x1="880" />
            <wire x2="2240" y1="1760" y2="1760" x1="1600" />
            <wire x2="336" y1="1488" y2="1488" x1="272" />
            <wire x2="272" y1="1488" y2="1760" x1="272" />
            <wire x2="976" y1="1488" y2="1488" x1="880" />
            <wire x2="880" y1="1488" y2="1760" x1="880" />
            <wire x2="1696" y1="1488" y2="1488" x1="1600" />
            <wire x2="1600" y1="1488" y2="1760" x1="1600" />
            <wire x2="2416" y1="1488" y2="1488" x1="2240" />
            <wire x2="2240" y1="1488" y2="1760" x1="2240" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="240" y1="1120" y2="1424" x1="240" />
            <wire x2="336" y1="1424" y2="1424" x1="240" />
            <wire x2="1408" y1="1120" y2="1120" x1="240" />
        </branch>
        <branch name="clk">
            <wire x2="336" y1="1680" y2="1680" x1="176" />
            <wire x2="976" y1="1680" y2="1680" x1="336" />
            <wire x2="1696" y1="1680" y2="1680" x1="976" />
            <wire x2="2400" y1="1680" y2="1680" x1="1696" />
            <wire x2="336" y1="1552" y2="1680" x1="336" />
            <wire x2="976" y1="1552" y2="1680" x1="976" />
            <wire x2="1696" y1="1552" y2="1680" x1="1696" />
            <wire x2="2416" y1="1552" y2="1552" x1="2400" />
            <wire x2="2400" y1="1552" y2="1680" x1="2400" />
        </branch>
        <branch name="Q(3)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2880" y="1616" type="branch" />
            <wire x2="2880" y1="1088" y2="1088" x1="1664" />
            <wire x2="2880" y1="1088" y2="1424" x1="2880" />
            <wire x2="2880" y1="1424" y2="1488" x1="2880" />
            <wire x2="2880" y1="1488" y2="1616" x1="2880" />
            <wire x2="2880" y1="1616" y2="1744" x1="2880" />
            <wire x2="2880" y1="1424" y2="1424" x1="2800" />
        </branch>
        <bustap x2="2880" y1="1840" y2="1744" x1="2880" />
        <bustap x2="2144" y1="1840" y2="1744" x1="2144" />
        <bustap x2="1440" y1="1840" y2="1744" x1="1440" />
        <bustap x2="800" y1="1840" y2="1744" x1="800" />
    </sheet>
</drawing>