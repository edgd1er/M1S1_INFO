<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="E" />
        <signal name="Q(7:0)" />
        <signal name="Q(7)" />
        <signal name="Q(6)" />
        <signal name="Q(5)" />
        <signal name="Q(4)" />
        <signal name="Q(3)" />
        <signal name="Q(2)" />
        <signal name="Q(1)" />
        <signal name="Q(0)" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="E" />
        <port polarity="Output" name="Q(7:0)" />
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
        <block symbolname="fde" name="XLXI_2">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="Q(0)" name="D" />
            <blockpin signalname="Q(1)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_3">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="Q(1)" name="D" />
            <blockpin signalname="Q(2)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_4">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="Q(2)" name="D" />
            <blockpin signalname="Q(3)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_5">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="Q(3)" name="D" />
            <blockpin signalname="Q(4)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_6">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="Q(4)" name="D" />
            <blockpin signalname="Q(5)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_7">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="Q(5)" name="D" />
            <blockpin signalname="Q(6)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_8">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="Q(6)" name="D" />
            <blockpin signalname="Q(7)" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="1456" y="1040" name="XLXI_2" orien="R0" />
        <instance x="1456" y="1584" name="XLXI_3" orien="R0" />
        <instance x="1456" y="2112" name="XLXI_4" orien="R0" />
        <instance x="1472" y="2720" name="XLXI_5" orien="R0" />
        <instance x="1488" y="3248" name="XLXI_6" orien="R0" />
        <instance x="1488" y="3792" name="XLXI_7" orien="R0" />
        <instance x="1488" y="4320" name="XLXI_8" orien="R0" />
        <branch name="clk">
            <wire x2="992" y1="96" y2="384" x1="992" />
            <wire x2="1456" y1="384" y2="384" x1="992" />
            <wire x2="992" y1="384" y2="912" x1="992" />
            <wire x2="1456" y1="912" y2="912" x1="992" />
            <wire x2="992" y1="912" y2="1456" x1="992" />
            <wire x2="1456" y1="1456" y2="1456" x1="992" />
            <wire x2="992" y1="1456" y2="1984" x1="992" />
            <wire x2="1456" y1="1984" y2="1984" x1="992" />
            <wire x2="992" y1="1984" y2="2592" x1="992" />
            <wire x2="1472" y1="2592" y2="2592" x1="992" />
            <wire x2="992" y1="2592" y2="3120" x1="992" />
            <wire x2="1488" y1="3120" y2="3120" x1="992" />
            <wire x2="992" y1="3120" y2="3664" x1="992" />
            <wire x2="1488" y1="3664" y2="3664" x1="992" />
            <wire x2="992" y1="3664" y2="4192" x1="992" />
            <wire x2="992" y1="4192" y2="4544" x1="992" />
            <wire x2="1488" y1="4192" y2="4192" x1="992" />
        </branch>
        <branch name="E">
            <wire x2="624" y1="128" y2="320" x1="624" />
            <wire x2="624" y1="320" y2="848" x1="624" />
            <wire x2="624" y1="848" y2="1392" x1="624" />
            <wire x2="624" y1="1392" y2="1920" x1="624" />
            <wire x2="624" y1="1920" y2="2528" x1="624" />
            <wire x2="624" y1="2528" y2="3056" x1="624" />
            <wire x2="624" y1="3056" y2="3600" x1="624" />
            <wire x2="624" y1="3600" y2="4128" x1="624" />
            <wire x2="624" y1="4128" y2="4576" x1="624" />
            <wire x2="1488" y1="4128" y2="4128" x1="624" />
            <wire x2="1488" y1="3600" y2="3600" x1="624" />
            <wire x2="1488" y1="3056" y2="3056" x1="624" />
            <wire x2="1472" y1="2528" y2="2528" x1="624" />
            <wire x2="1456" y1="1920" y2="1920" x1="624" />
            <wire x2="1456" y1="1392" y2="1392" x1="624" />
            <wire x2="1456" y1="848" y2="848" x1="624" />
            <wire x2="1456" y1="320" y2="320" x1="624" />
        </branch>
        <branch name="Q(7:0)">
            <wire x2="2720" y1="160" y2="256" x1="2720" />
            <wire x2="2720" y1="256" y2="784" x1="2720" />
            <wire x2="2720" y1="784" y2="1328" x1="2720" />
            <wire x2="2720" y1="1328" y2="1856" x1="2720" />
            <wire x2="2720" y1="1856" y2="2464" x1="2720" />
            <wire x2="2720" y1="2464" y2="2992" x1="2720" />
            <wire x2="2720" y1="2992" y2="3536" x1="2720" />
            <wire x2="2720" y1="3536" y2="4064" x1="2720" />
            <wire x2="2720" y1="4064" y2="4608" x1="2720" />
        </branch>
        <iomarker fontsize="28" x="624" y="128" name="E" orien="R270" />
        <iomarker fontsize="28" x="992" y="96" name="clk" orien="R270" />
        <iomarker fontsize="28" x="2720" y="4608" name="Q(7:0)" orien="R90" />
        <bustap x2="2624" y1="4064" y2="4064" x1="2720" />
        <branch name="Q(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2248" y="4064" type="branch" />
            <wire x2="1376" y1="16" y2="256" x1="1376" />
            <wire x2="1456" y1="256" y2="256" x1="1376" />
            <wire x2="2176" y1="16" y2="16" x1="1376" />
            <wire x2="2176" y1="16" y2="4064" x1="2176" />
            <wire x2="2248" y1="4064" y2="4064" x1="2176" />
            <wire x2="2624" y1="4064" y2="4064" x1="2248" />
            <wire x2="2176" y1="4064" y2="4064" x1="1872" />
        </branch>
        <bustap x2="2624" y1="3536" y2="3536" x1="2720" />
        <branch name="Q(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2248" y="3536" type="branch" />
            <wire x2="1408" y1="3936" y2="4064" x1="1408" />
            <wire x2="1488" y1="4064" y2="4064" x1="1408" />
            <wire x2="1952" y1="3936" y2="3936" x1="1408" />
            <wire x2="1952" y1="3536" y2="3536" x1="1872" />
            <wire x2="2248" y1="3536" y2="3536" x1="1952" />
            <wire x2="2624" y1="3536" y2="3536" x1="2248" />
            <wire x2="1952" y1="3536" y2="3936" x1="1952" />
        </branch>
        <bustap x2="2624" y1="2992" y2="2992" x1="2720" />
        <branch name="Q(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2248" y="2992" type="branch" />
            <wire x2="1488" y1="3536" y2="3536" x1="1424" />
            <wire x2="1424" y1="3536" y2="3792" x1="1424" />
            <wire x2="1920" y1="3792" y2="3792" x1="1424" />
            <wire x2="1920" y1="2992" y2="2992" x1="1872" />
            <wire x2="2248" y1="2992" y2="2992" x1="1920" />
            <wire x2="2624" y1="2992" y2="2992" x1="2248" />
            <wire x2="1920" y1="2992" y2="3792" x1="1920" />
        </branch>
        <bustap x2="2624" y1="2464" y2="2464" x1="2720" />
        <branch name="Q(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2240" y="2464" type="branch" />
            <wire x2="1424" y1="2864" y2="2992" x1="1424" />
            <wire x2="1488" y1="2992" y2="2992" x1="1424" />
            <wire x2="1920" y1="2864" y2="2864" x1="1424" />
            <wire x2="1920" y1="2464" y2="2464" x1="1856" />
            <wire x2="2240" y1="2464" y2="2464" x1="1920" />
            <wire x2="2624" y1="2464" y2="2464" x1="2240" />
            <wire x2="1920" y1="2464" y2="2864" x1="1920" />
        </branch>
        <bustap x2="2624" y1="1856" y2="1856" x1="2720" />
        <branch name="Q(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2232" y="1856" type="branch" />
            <wire x2="1408" y1="2336" y2="2464" x1="1408" />
            <wire x2="1472" y1="2464" y2="2464" x1="1408" />
            <wire x2="1952" y1="2336" y2="2336" x1="1408" />
            <wire x2="1952" y1="1856" y2="1856" x1="1840" />
            <wire x2="2232" y1="1856" y2="1856" x1="1952" />
            <wire x2="2624" y1="1856" y2="1856" x1="2232" />
            <wire x2="1952" y1="1856" y2="2336" x1="1952" />
        </branch>
        <bustap x2="2624" y1="1328" y2="1328" x1="2720" />
        <branch name="Q(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2232" y="1328" type="branch" />
            <wire x2="1456" y1="1856" y2="1856" x1="1392" />
            <wire x2="1392" y1="1856" y2="2128" x1="1392" />
            <wire x2="1920" y1="2128" y2="2128" x1="1392" />
            <wire x2="1920" y1="1328" y2="1328" x1="1840" />
            <wire x2="2232" y1="1328" y2="1328" x1="1920" />
            <wire x2="2624" y1="1328" y2="1328" x1="2232" />
            <wire x2="1920" y1="1328" y2="2128" x1="1920" />
        </branch>
        <bustap x2="2624" y1="784" y2="784" x1="2720" />
        <branch name="Q(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2232" y="784" type="branch" />
            <wire x2="1456" y1="1328" y2="1328" x1="1392" />
            <wire x2="1392" y1="1328" y2="1600" x1="1392" />
            <wire x2="1904" y1="1600" y2="1600" x1="1392" />
            <wire x2="1904" y1="784" y2="784" x1="1840" />
            <wire x2="2232" y1="784" y2="784" x1="1904" />
            <wire x2="2624" y1="784" y2="784" x1="2232" />
            <wire x2="1904" y1="784" y2="1600" x1="1904" />
        </branch>
        <bustap x2="2624" y1="256" y2="256" x1="2720" />
        <branch name="Q(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2224" y="256" type="branch" />
            <wire x2="1456" y1="784" y2="784" x1="1376" />
            <wire x2="1376" y1="784" y2="1040" x1="1376" />
            <wire x2="1920" y1="1040" y2="1040" x1="1376" />
            <wire x2="1920" y1="256" y2="256" x1="1840" />
            <wire x2="2224" y1="256" y2="256" x1="1920" />
            <wire x2="2624" y1="256" y2="256" x1="2224" />
            <wire x2="1920" y1="256" y2="1040" x1="1920" />
        </branch>
        <instance x="1456" y="512" name="XLXI_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="128" y="-264" type="instance" />
        </instance>
    </sheet>
</drawing>