<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Q(3:0)" />
        <signal name="XLXN_2" />
        <signal name="CE" />
        <signal name="Q(0)" />
        <signal name="Q(1)" />
        <signal name="Q(2)" />
        <signal name="Q(3)" />
        <signal name="clk" />
        <port polarity="Output" name="Q(3:0)" />
        <port polarity="Input" name="CE" />
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
        <block symbolname="fde" name="FDE_1">
            <attr value="1" name="INIT">
                <trait verilog="all:0 dp:1" />
                <trait vhdl="all:0 gm:1" />
                <trait valuetype="Bit" />
            </attr>
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="XLXN_2" name="D" />
            <blockpin signalname="Q(0)" name="Q" />
        </block>
        <block symbolname="fde" name="FDE_2">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="Q(0)" name="D" />
            <blockpin signalname="Q(1)" name="Q" />
        </block>
        <block symbolname="fde" name="FDE_3">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="Q(1)" name="D" />
            <blockpin signalname="Q(2)" name="Q" />
        </block>
        <block symbolname="fde" name="FDE_4">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="Q(2)" name="D" />
            <blockpin signalname="Q(3)" name="Q" />
        </block>
        <block symbolname="xor2" name="myXOR2">
            <blockpin signalname="Q(3)" name="I0" />
            <blockpin signalname="Q(2)" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="Q(3:0)">
            <wire x2="1024" y1="1792" y2="1792" x1="384" />
            <wire x2="1712" y1="1792" y2="1792" x1="1024" />
            <wire x2="2416" y1="1792" y2="1792" x1="1712" />
            <wire x2="2976" y1="1792" y2="1792" x1="2416" />
            <wire x2="3232" y1="1792" y2="1792" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="3232" y="1792" name="Q(3:0)" orien="R0" />
        <instance x="2128" y="272" name="myXOR2" orien="R180" />
        <branch name="Q(0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1056" y="1368" type="branch" />
            <wire x2="1056" y1="1040" y2="1040" x1="1024" />
            <wire x2="1056" y1="1040" y2="1368" x1="1056" />
            <wire x2="1056" y1="1368" y2="1696" x1="1056" />
            <wire x2="1264" y1="1040" y2="1040" x1="1056" />
            <wire x2="1056" y1="1696" y2="1696" x1="1024" />
        </branch>
        <branch name="Q(1)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1712" y="1368" type="branch" />
            <wire x2="1712" y1="1040" y2="1040" x1="1648" />
            <wire x2="1712" y1="1040" y2="1368" x1="1712" />
            <wire x2="1712" y1="1368" y2="1696" x1="1712" />
            <wire x2="1952" y1="1040" y2="1040" x1="1712" />
        </branch>
        <instance x="640" y="1296" name="FDE_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="0" y="-408" type="instance" />
        </instance>
        <branch name="XLXN_2">
            <wire x2="608" y1="368" y2="1040" x1="608" />
            <wire x2="640" y1="1040" y2="1040" x1="608" />
            <wire x2="1872" y1="368" y2="368" x1="608" />
        </branch>
        <branch name="CE">
            <wire x2="544" y1="1680" y2="1680" x1="304" />
            <wire x2="1104" y1="1680" y2="1680" x1="544" />
            <wire x2="1792" y1="1680" y2="1680" x1="1104" />
            <wire x2="2480" y1="1680" y2="1680" x1="1792" />
            <wire x2="640" y1="1104" y2="1104" x1="544" />
            <wire x2="544" y1="1104" y2="1680" x1="544" />
            <wire x2="1264" y1="1104" y2="1104" x1="1104" />
            <wire x2="1104" y1="1104" y2="1680" x1="1104" />
            <wire x2="1792" y1="1104" y2="1680" x1="1792" />
            <wire x2="1952" y1="1104" y2="1104" x1="1792" />
            <wire x2="2480" y1="1104" y2="1680" x1="2480" />
            <wire x2="2592" y1="1104" y2="1104" x1="2480" />
        </branch>
        <iomarker fontsize="28" x="304" y="1680" name="CE" orien="R180" />
        <bustap x2="1024" y1="1792" y2="1696" x1="1024" />
        <bustap x2="1712" y1="1792" y2="1696" x1="1712" />
        <branch name="Q(2)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2416" y="1368" type="branch" />
            <wire x2="2528" y1="400" y2="400" x1="2128" />
            <wire x2="2528" y1="400" y2="1040" x1="2528" />
            <wire x2="2592" y1="1040" y2="1040" x1="2528" />
            <wire x2="2416" y1="1040" y2="1040" x1="2336" />
            <wire x2="2416" y1="1040" y2="1368" x1="2416" />
            <wire x2="2416" y1="1368" y2="1696" x1="2416" />
            <wire x2="2528" y1="1040" y2="1040" x1="2416" />
        </branch>
        <bustap x2="2416" y1="1792" y2="1696" x1="2416" />
        <bustap x2="2976" y1="1792" y2="1696" x1="2976" />
        <branch name="Q(3)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2992" y="1344" type="branch" />
            <wire x2="3008" y1="336" y2="336" x1="2128" />
            <wire x2="3008" y1="336" y2="1040" x1="3008" />
            <wire x2="2992" y1="1040" y2="1040" x1="2976" />
            <wire x2="2992" y1="1040" y2="1344" x1="2992" />
            <wire x2="2992" y1="1344" y2="1696" x1="2992" />
            <wire x2="3008" y1="1040" y2="1040" x1="2992" />
            <wire x2="2992" y1="1696" y2="1696" x1="2976" />
        </branch>
        <instance x="2592" y="1296" name="FDE_4" orien="R0" />
        <instance x="1264" y="1296" name="FDE_2" orien="R0" />
        <instance x="1952" y="1296" name="FDE_3" orien="R0" />
        <branch name="clk">
            <wire x2="624" y1="1616" y2="1616" x1="336" />
            <wire x2="1168" y1="1616" y2="1616" x1="624" />
            <wire x2="1888" y1="1616" y2="1616" x1="1168" />
            <wire x2="2592" y1="1616" y2="1616" x1="1888" />
            <wire x2="640" y1="1168" y2="1168" x1="624" />
            <wire x2="624" y1="1168" y2="1616" x1="624" />
            <wire x2="1264" y1="1168" y2="1168" x1="1168" />
            <wire x2="1168" y1="1168" y2="1616" x1="1168" />
            <wire x2="1952" y1="1168" y2="1168" x1="1888" />
            <wire x2="1888" y1="1168" y2="1616" x1="1888" />
            <wire x2="2592" y1="1168" y2="1168" x1="2528" />
            <wire x2="2528" y1="1168" y2="1296" x1="2528" />
            <wire x2="2592" y1="1296" y2="1296" x1="2528" />
            <wire x2="2592" y1="1296" y2="1616" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="336" y="1616" name="clk" orien="R180" />
    </sheet>
</drawing>