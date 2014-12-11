<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_14(7:0)" />
        <signal name="switches(7:0)" />
        <signal name="Led(7:0)" />
        <port polarity="Input" name="switches(7:0)" />
        <port polarity="Output" name="Led(7:0)" />
        <blockdef name="obuf8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <rect width="64" x="0" y="-44" height="24" />
            <rect width="96" x="128" y="-44" height="24" />
        </blockdef>
        <blockdef name="ibuf8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="96" x="128" y="-44" height="24" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <block symbolname="ibuf8" name="XLXI_3">
            <blockpin signalname="switches(7:0)" name="I(7:0)" />
            <blockpin signalname="XLXN_14(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="obuf8" name="XLXI_1">
            <blockpin signalname="XLXN_14(7:0)" name="I(7:0)" />
            <blockpin signalname="Led(7:0)" name="O(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="48" y="400" name="XLXI_3" orien="R90" />
        <branch name="XLXN_14(7:0)">
            <wire x2="80" y1="624" y2="688" x1="80" />
            <wire x2="80" y1="688" y2="1264" x1="80" />
            <wire x2="848" y1="688" y2="688" x1="80" />
            <wire x2="1152" y1="688" y2="688" x1="848" />
            <wire x2="848" y1="688" y2="736" x1="848" />
        </branch>
        <branch name="switches(7:0)">
            <wire x2="80" y1="304" y2="320" x1="80" />
            <wire x2="80" y1="320" y2="400" x1="80" />
        </branch>
        <iomarker fontsize="28" x="80" y="304" name="switches(7:0)" orien="R270" />
        <instance x="816" y="736" name="XLXI_1" orien="R90" />
        <branch name="Led(7:0)">
            <wire x2="848" y1="960" y2="1056" x1="848" />
        </branch>
        <iomarker fontsize="28" x="848" y="1056" name="Led(7:0)" orien="R90" />
    </sheet>
</drawing>