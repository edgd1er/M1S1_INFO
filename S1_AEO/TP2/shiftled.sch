<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Q(7:0)" />
        <signal name="Q(7)" />
        <signal name="Q(6)" />
        <signal name="Q(5)" />
        <signal name="Q(4)" />
        <signal name="Q(3)" />
        <signal name="Q(2)" />
        <signal name="Q(1)" />
        <signal name="Q(0)" />
        <signal name="E" />
        <signal name="clk" />
        <port polarity="Output" name="Q(7:0)" />
        <port polarity="Input" name="E" />
        <port polarity="Input" name="clk" />
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
        <block symbolname="fde" name="XLXI_9">
            <attr value="1" name="INIT">
                <trait verilog="all:0 dp:1" />
                <trait vhdl="all:0 gm:1" />
                <trait valuetype="Bit" />
            </attr>
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="Q(7)" name="D" />
            <blockpin signalname="Q(0)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_10">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="Q(0)" name="D" />
            <blockpin signalname="Q(1)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_11">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="Q(1)" name="D" />
            <blockpin signalname="Q(2)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_12">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="Q(2)" name="D" />
            <blockpin signalname="Q(3)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_13">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="Q(3)" name="D" />
            <blockpin signalname="Q(4)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_14">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="Q(4)" name="D" />
            <blockpin signalname="Q(5)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_15">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="Q(5)" name="D" />
            <blockpin signalname="Q(6)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_16">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="Q(6)" name="D" />
            <blockpin signalname="Q(7)" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1632" y="416" name="XLXI_9" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="0" y="-408" type="instance" />
        </instance>
        <instance x="1632" y="736" name="XLXI_10" orien="R0" />
        <instance x="1632" y="1040" name="XLXI_11" orien="R0" />
        <instance x="1632" y="1344" name="XLXI_12" orien="R0" />
        <instance x="1632" y="1648" name="XLXI_13" orien="R0" />
        <instance x="1632" y="1984" name="XLXI_14" orien="R0" />
        <instance x="1632" y="2288" name="XLXI_15" orien="R0" />
        <instance x="1632" y="2624" name="XLXI_16" orien="R0" />
        <branch name="Q(7:0)">
            <attrtext style="alignment:SOFT-VLEFT" attrname="Name" x="2336" y="144" type="branch" />
            <wire x2="2336" y1="144" y2="160" x1="2336" />
            <wire x2="2336" y1="160" y2="480" x1="2336" />
            <wire x2="2336" y1="480" y2="784" x1="2336" />
            <wire x2="2336" y1="784" y2="1088" x1="2336" />
            <wire x2="2336" y1="1088" y2="1392" x1="2336" />
            <wire x2="2336" y1="1392" y2="1728" x1="2336" />
            <wire x2="2336" y1="1728" y2="2032" x1="2336" />
            <wire x2="2336" y1="2032" y2="2368" x1="2336" />
            <wire x2="2336" y1="2368" y2="2528" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2336" y="2528" name="Q(7:0)" orien="R90" />
        <bustap x2="2240" y1="2368" y2="2368" x1="2336" />
        <branch name="Q(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2128" y="2368" type="branch" />
            <wire x2="1632" y1="160" y2="160" x1="1392" />
            <wire x2="1392" y1="160" y2="2624" x1="1392" />
            <wire x2="2064" y1="2624" y2="2624" x1="1392" />
            <wire x2="2064" y1="2368" y2="2368" x1="2016" />
            <wire x2="2128" y1="2368" y2="2368" x1="2064" />
            <wire x2="2240" y1="2368" y2="2368" x1="2128" />
            <wire x2="2064" y1="2368" y2="2624" x1="2064" />
        </branch>
        <bustap x2="2240" y1="2032" y2="2032" x1="2336" />
        <branch name="Q(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2128" y="2032" type="branch" />
            <wire x2="1584" y1="2240" y2="2368" x1="1584" />
            <wire x2="1632" y1="2368" y2="2368" x1="1584" />
            <wire x2="2160" y1="2240" y2="2240" x1="1584" />
            <wire x2="2128" y1="2032" y2="2032" x1="2016" />
            <wire x2="2160" y1="2032" y2="2032" x1="2128" />
            <wire x2="2240" y1="2032" y2="2032" x1="2160" />
            <wire x2="2160" y1="2032" y2="2240" x1="2160" />
        </branch>
        <bustap x2="2240" y1="1728" y2="1728" x1="2336" />
        <branch name="Q(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2128" y="1728" type="branch" />
            <wire x2="2080" y1="1936" y2="1936" x1="1568" />
            <wire x2="1568" y1="1936" y2="2032" x1="1568" />
            <wire x2="1632" y1="2032" y2="2032" x1="1568" />
            <wire x2="2080" y1="1728" y2="1728" x1="2016" />
            <wire x2="2128" y1="1728" y2="1728" x1="2080" />
            <wire x2="2240" y1="1728" y2="1728" x1="2128" />
            <wire x2="2080" y1="1728" y2="1936" x1="2080" />
        </branch>
        <bustap x2="2240" y1="1392" y2="1392" x1="2336" />
        <branch name="Q(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2128" y="1392" type="branch" />
            <wire x2="1568" y1="1600" y2="1728" x1="1568" />
            <wire x2="1632" y1="1728" y2="1728" x1="1568" />
            <wire x2="2192" y1="1600" y2="1600" x1="1568" />
            <wire x2="2128" y1="1392" y2="1392" x1="2016" />
            <wire x2="2192" y1="1392" y2="1392" x1="2128" />
            <wire x2="2240" y1="1392" y2="1392" x1="2192" />
            <wire x2="2192" y1="1392" y2="1600" x1="2192" />
        </branch>
        <bustap x2="2240" y1="1088" y2="1088" x1="2336" />
        <branch name="Q(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2128" y="1088" type="branch" />
            <wire x2="1552" y1="1296" y2="1392" x1="1552" />
            <wire x2="1632" y1="1392" y2="1392" x1="1552" />
            <wire x2="2064" y1="1296" y2="1296" x1="1552" />
            <wire x2="2064" y1="1088" y2="1088" x1="2016" />
            <wire x2="2128" y1="1088" y2="1088" x1="2064" />
            <wire x2="2240" y1="1088" y2="1088" x1="2128" />
            <wire x2="2064" y1="1088" y2="1296" x1="2064" />
        </branch>
        <bustap x2="2240" y1="784" y2="784" x1="2336" />
        <branch name="Q(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2128" y="784" type="branch" />
            <wire x2="1552" y1="1008" y2="1088" x1="1552" />
            <wire x2="1632" y1="1088" y2="1088" x1="1552" />
            <wire x2="2112" y1="1008" y2="1008" x1="1552" />
            <wire x2="2112" y1="784" y2="784" x1="2016" />
            <wire x2="2128" y1="784" y2="784" x1="2112" />
            <wire x2="2240" y1="784" y2="784" x1="2128" />
            <wire x2="2112" y1="784" y2="1008" x1="2112" />
        </branch>
        <bustap x2="2240" y1="480" y2="480" x1="2336" />
        <branch name="Q(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2128" y="480" type="branch" />
            <wire x2="2048" y1="704" y2="704" x1="1568" />
            <wire x2="1568" y1="704" y2="784" x1="1568" />
            <wire x2="1632" y1="784" y2="784" x1="1568" />
            <wire x2="2048" y1="480" y2="480" x1="2016" />
            <wire x2="2128" y1="480" y2="480" x1="2048" />
            <wire x2="2240" y1="480" y2="480" x1="2128" />
            <wire x2="2048" y1="480" y2="704" x1="2048" />
        </branch>
        <bustap x2="2240" y1="160" y2="160" x1="2336" />
        <branch name="Q(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2128" y="160" type="branch" />
            <wire x2="1568" y1="368" y2="480" x1="1568" />
            <wire x2="1632" y1="480" y2="480" x1="1568" />
            <wire x2="2064" y1="368" y2="368" x1="1568" />
            <wire x2="2064" y1="160" y2="160" x1="2016" />
            <wire x2="2128" y1="160" y2="160" x1="2064" />
            <wire x2="2240" y1="160" y2="160" x1="2128" />
            <wire x2="2064" y1="160" y2="368" x1="2064" />
        </branch>
        <branch name="E">
            <wire x2="864" y1="2432" y2="2432" x1="816" />
            <wire x2="1632" y1="2432" y2="2432" x1="864" />
            <wire x2="864" y1="128" y2="224" x1="864" />
            <wire x2="864" y1="224" y2="544" x1="864" />
            <wire x2="864" y1="544" y2="848" x1="864" />
            <wire x2="1632" y1="848" y2="848" x1="864" />
            <wire x2="864" y1="848" y2="1152" x1="864" />
            <wire x2="864" y1="1152" y2="1456" x1="864" />
            <wire x2="864" y1="1456" y2="1792" x1="864" />
            <wire x2="864" y1="1792" y2="2096" x1="864" />
            <wire x2="864" y1="2096" y2="2432" x1="864" />
            <wire x2="1632" y1="2096" y2="2096" x1="864" />
            <wire x2="1632" y1="1792" y2="1792" x1="864" />
            <wire x2="1632" y1="1456" y2="1456" x1="864" />
            <wire x2="1632" y1="1152" y2="1152" x1="864" />
            <wire x2="1632" y1="544" y2="544" x1="864" />
            <wire x2="1632" y1="224" y2="224" x1="864" />
        </branch>
        <iomarker fontsize="28" x="864" y="128" name="E" orien="R270" />
        <branch name="clk">
            <wire x2="1200" y1="128" y2="288" x1="1200" />
            <wire x2="1200" y1="288" y2="608" x1="1200" />
            <wire x2="1200" y1="608" y2="912" x1="1200" />
            <wire x2="1200" y1="912" y2="1216" x1="1200" />
            <wire x2="1200" y1="1216" y2="1520" x1="1200" />
            <wire x2="1200" y1="1520" y2="1856" x1="1200" />
            <wire x2="1200" y1="1856" y2="2160" x1="1200" />
            <wire x2="1200" y1="2160" y2="2496" x1="1200" />
            <wire x2="1200" y1="2496" y2="2512" x1="1200" />
            <wire x2="1632" y1="2496" y2="2496" x1="1200" />
            <wire x2="1632" y1="2160" y2="2160" x1="1200" />
            <wire x2="1632" y1="1856" y2="1856" x1="1200" />
            <wire x2="1632" y1="1520" y2="1520" x1="1200" />
            <wire x2="1632" y1="1216" y2="1216" x1="1200" />
            <wire x2="1632" y1="912" y2="912" x1="1200" />
            <wire x2="1632" y1="608" y2="608" x1="1200" />
            <wire x2="1632" y1="288" y2="288" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="1200" y="128" name="clk" orien="R270" />
    </sheet>
</drawing>