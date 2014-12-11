<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="enable190" />
        <signal name="anodes(3:0)" />
        <signal name="anodes(2)" />
        <signal name="anodes(1)" />
        <signal name="anodes(0)" />
        <signal name="anodes(3)" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="enable190" />
        <port polarity="Input" name="anodes(3:0)" />
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
        <block symbolname="fde" name="XLXI_1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="enable190" name="CE" />
            <blockpin signalname="XLXN_6" name="D" />
            <blockpin signalname="anodes(0)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_2">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="enable190" name="CE" />
            <blockpin signalname="anodes(0)" name="D" />
            <blockpin signalname="anodes(1)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_3">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="enable190" name="CE" />
            <blockpin signalname="anodes(1)" name="D" />
            <blockpin signalname="anodes(2)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_4">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="enable190" name="CE" />
            <blockpin signalname="anodes(2)" name="D" />
            <blockpin signalname="XLXN_6" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1264" y="672" name="XLXI_1" orien="R0" />
        <instance x="1280" y="1024" name="XLXI_2" orien="R0" />
        <instance x="1280" y="1376" name="XLXI_3" orien="R0" />
        <branch name="clk">
            <wire x2="640" y1="352" y2="544" x1="640" />
            <wire x2="1264" y1="544" y2="544" x1="640" />
            <wire x2="640" y1="544" y2="896" x1="640" />
            <wire x2="1280" y1="896" y2="896" x1="640" />
            <wire x2="640" y1="896" y2="1248" x1="640" />
            <wire x2="1280" y1="1248" y2="1248" x1="640" />
            <wire x2="640" y1="1248" y2="1584" x1="640" />
            <wire x2="640" y1="1584" y2="1760" x1="640" />
            <wire x2="992" y1="1584" y2="1584" x1="640" />
            <wire x2="992" y1="1584" y2="1760" x1="992" />
            <wire x2="1360" y1="1760" y2="1760" x1="992" />
        </branch>
        <iomarker fontsize="28" x="640" y="352" name="clk" orien="R270" />
        <branch name="enable190">
            <wire x2="400" y1="336" y2="480" x1="400" />
            <wire x2="1264" y1="480" y2="480" x1="400" />
            <wire x2="400" y1="480" y2="800" x1="400" />
            <wire x2="832" y1="800" y2="800" x1="400" />
            <wire x2="832" y1="800" y2="832" x1="832" />
            <wire x2="1280" y1="832" y2="832" x1="832" />
            <wire x2="400" y1="800" y2="1136" x1="400" />
            <wire x2="832" y1="1136" y2="1136" x1="400" />
            <wire x2="832" y1="1136" y2="1184" x1="832" />
            <wire x2="1280" y1="1184" y2="1184" x1="832" />
            <wire x2="400" y1="1136" y2="1520" x1="400" />
            <wire x2="400" y1="1520" y2="1824" x1="400" />
            <wire x2="880" y1="1520" y2="1520" x1="400" />
            <wire x2="880" y1="1520" y2="1696" x1="880" />
            <wire x2="1360" y1="1696" y2="1696" x1="880" />
        </branch>
        <iomarker fontsize="28" x="400" y="336" name="enable190" orien="R270" />
        <branch name="anodes(3:0)">
            <wire x2="1904" y1="144" y2="416" x1="1904" />
            <wire x2="1904" y1="416" y2="768" x1="1904" />
            <wire x2="1904" y1="768" y2="1120" x1="1904" />
            <wire x2="1904" y1="1120" y2="1456" x1="1904" />
            <wire x2="1904" y1="1456" y2="1680" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="1904" y="144" name="anodes(3:0)" orien="R270" />
        <bustap x2="1808" y1="1120" y2="1120" x1="1904" />
        <branch name="anodes(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1736" y="1120" type="branch" />
            <wire x2="1312" y1="1360" y2="1632" x1="1312" />
            <wire x2="1360" y1="1632" y2="1632" x1="1312" />
            <wire x2="1728" y1="1360" y2="1360" x1="1312" />
            <wire x2="1728" y1="1120" y2="1120" x1="1664" />
            <wire x2="1736" y1="1120" y2="1120" x1="1728" />
            <wire x2="1808" y1="1120" y2="1120" x1="1736" />
            <wire x2="1728" y1="1120" y2="1360" x1="1728" />
        </branch>
        <bustap x2="1808" y1="768" y2="768" x1="1904" />
        <branch name="anodes(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1736" y="768" type="branch" />
            <wire x2="1216" y1="992" y2="1120" x1="1216" />
            <wire x2="1280" y1="1120" y2="1120" x1="1216" />
            <wire x2="1728" y1="992" y2="992" x1="1216" />
            <wire x2="1728" y1="768" y2="768" x1="1664" />
            <wire x2="1736" y1="768" y2="768" x1="1728" />
            <wire x2="1808" y1="768" y2="768" x1="1736" />
            <wire x2="1728" y1="768" y2="992" x1="1728" />
        </branch>
        <bustap x2="1808" y1="416" y2="416" x1="1904" />
        <branch name="anodes(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1728" y="416" type="branch" />
            <wire x2="1232" y1="640" y2="768" x1="1232" />
            <wire x2="1280" y1="768" y2="768" x1="1232" />
            <wire x2="1728" y1="640" y2="640" x1="1232" />
            <wire x2="1728" y1="416" y2="416" x1="1648" />
            <wire x2="1808" y1="416" y2="416" x1="1728" />
            <wire x2="1728" y1="416" y2="640" x1="1728" />
        </branch>
        <bustap x2="1808" y1="1456" y2="1456" x1="1904" />
        <branch name="anodes(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1736" y="1456" type="branch" />
            <wire x2="1808" y1="1456" y2="1456" x1="1736" />
        </branch>
        <instance x="1360" y="1888" name="XLXI_4" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="1264" y1="416" y2="416" x1="1184" />
            <wire x2="1184" y1="416" y2="1456" x1="1184" />
            <wire x2="1728" y1="1456" y2="1456" x1="1184" />
            <wire x2="1728" y1="1440" y2="1456" x1="1728" />
            <wire x2="1792" y1="1440" y2="1440" x1="1728" />
            <wire x2="1792" y1="1440" y2="1632" x1="1792" />
            <wire x2="1792" y1="1632" y2="1632" x1="1744" />
        </branch>
    </sheet>
</drawing>