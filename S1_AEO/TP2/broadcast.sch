<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="din" />
        <signal name="dout(15:0)" />
        <signal name="dout(15)" />
        <signal name="dout(14)" />
        <signal name="dout(13)" />
        <signal name="dout(12)" />
        <signal name="dout(11)" />
        <signal name="dout(10)" />
        <signal name="dout(9)" />
        <signal name="dout(8)" />
        <signal name="dout(7)" />
        <signal name="dout(6)" />
        <signal name="dout(5)" />
        <signal name="dout(4)" />
        <signal name="dout(3)" />
        <signal name="dout(2)" />
        <signal name="dout(1)" />
        <signal name="dout(0)" />
        <port polarity="Input" name="din" />
        <port polarity="Output" name="dout(15:0)" />
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="buf" name="XLXI_1">
            <blockpin signalname="din" name="I" />
            <blockpin signalname="dout(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_2">
            <blockpin signalname="din" name="I" />
            <blockpin signalname="dout(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_3">
            <blockpin signalname="din" name="I" />
            <blockpin signalname="dout(2)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_4">
            <blockpin signalname="din" name="I" />
            <blockpin signalname="dout(3)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_5">
            <blockpin signalname="din" name="I" />
            <blockpin signalname="dout(4)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_6">
            <blockpin signalname="din" name="I" />
            <blockpin signalname="dout(5)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_7">
            <blockpin signalname="din" name="I" />
            <blockpin signalname="dout(6)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_8">
            <blockpin signalname="din" name="I" />
            <blockpin signalname="dout(7)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_9">
            <blockpin signalname="din" name="I" />
            <blockpin signalname="dout(8)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_10">
            <blockpin signalname="din" name="I" />
            <blockpin signalname="dout(9)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_11">
            <blockpin signalname="din" name="I" />
            <blockpin signalname="dout(10)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_12">
            <blockpin signalname="din" name="I" />
            <blockpin signalname="dout(11)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_13">
            <blockpin signalname="din" name="I" />
            <blockpin signalname="dout(12)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_14">
            <blockpin signalname="din" name="I" />
            <blockpin signalname="dout(13)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_15">
            <blockpin signalname="din" name="I" />
            <blockpin signalname="dout(14)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_16">
            <blockpin signalname="din" name="I" />
            <blockpin signalname="dout(15)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="din">
            <wire x2="320" y1="240" y2="576" x1="320" />
            <wire x2="320" y1="576" y2="672" x1="320" />
            <wire x2="320" y1="672" y2="768" x1="320" />
            <wire x2="320" y1="768" y2="832" x1="320" />
            <wire x2="320" y1="832" y2="928" x1="320" />
            <wire x2="320" y1="928" y2="1008" x1="320" />
            <wire x2="320" y1="1008" y2="1072" x1="320" />
            <wire x2="320" y1="1072" y2="1168" x1="320" />
            <wire x2="320" y1="1168" y2="1280" x1="320" />
            <wire x2="320" y1="1280" y2="1392" x1="320" />
            <wire x2="320" y1="1392" y2="1520" x1="320" />
            <wire x2="320" y1="1520" y2="1632" x1="320" />
            <wire x2="320" y1="1632" y2="1744" x1="320" />
            <wire x2="320" y1="1744" y2="1872" x1="320" />
            <wire x2="320" y1="1872" y2="1984" x1="320" />
            <wire x2="320" y1="1984" y2="2096" x1="320" />
            <wire x2="320" y1="2096" y2="2480" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="240" name="din" orien="R270" />
        <branch name="dout(15:0)">
            <wire x2="3264" y1="240" y2="576" x1="3264" />
            <wire x2="3264" y1="576" y2="672" x1="3264" />
            <wire x2="3264" y1="672" y2="768" x1="3264" />
            <wire x2="3264" y1="768" y2="832" x1="3264" />
            <wire x2="3264" y1="832" y2="928" x1="3264" />
            <wire x2="3264" y1="928" y2="1008" x1="3264" />
            <wire x2="3264" y1="1008" y2="1072" x1="3264" />
            <wire x2="3264" y1="1072" y2="1168" x1="3264" />
            <wire x2="3264" y1="1168" y2="1280" x1="3264" />
            <wire x2="3264" y1="1280" y2="1392" x1="3264" />
            <wire x2="3264" y1="1392" y2="1520" x1="3264" />
            <wire x2="3264" y1="1520" y2="1616" x1="3264" />
            <wire x2="3264" y1="1616" y2="1632" x1="3264" />
            <wire x2="3264" y1="1632" y2="1744" x1="3264" />
            <wire x2="3264" y1="1744" y2="1872" x1="3264" />
            <wire x2="3264" y1="1872" y2="1984" x1="3264" />
            <wire x2="3264" y1="1984" y2="2096" x1="3264" />
            <wire x2="3264" y1="2096" y2="2432" x1="3264" />
        </branch>
        <iomarker fontsize="28" x="3264" y="240" name="dout(15:0)" orien="R270" />
        <instance x="320" y="608" name="XLXI_1" orien="R0" />
        <instance x="320" y="704" name="XLXI_2" orien="R0" />
        <instance x="320" y="800" name="XLXI_3" orien="R0" />
        <instance x="320" y="960" name="XLXI_5" orien="R0" />
        <instance x="320" y="1040" name="XLXI_6" orien="R0" />
        <instance x="320" y="1200" name="XLXI_8" orien="R0" />
        <instance x="320" y="1552" name="XLXI_11" orien="R0" />
        <instance x="320" y="1664" name="XLXI_12" orien="R0" />
        <instance x="320" y="1776" name="XLXI_13" orien="R0" />
        <instance x="320" y="1904" name="XLXI_14" orien="R0" />
        <instance x="320" y="2016" name="XLXI_15" orien="R0" />
        <instance x="320" y="2128" name="XLXI_16" orien="R0" />
        <bustap x2="3168" y1="2096" y2="2096" x1="3264" />
        <branch name="dout(15)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1856" y="2096" type="branch" />
            <wire x2="1856" y1="2096" y2="2096" x1="544" />
            <wire x2="3168" y1="2096" y2="2096" x1="1856" />
        </branch>
        <bustap x2="3168" y1="1984" y2="1984" x1="3264" />
        <branch name="dout(14)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1856" y="1984" type="branch" />
            <wire x2="1856" y1="1984" y2="1984" x1="544" />
            <wire x2="3168" y1="1984" y2="1984" x1="1856" />
        </branch>
        <bustap x2="3168" y1="1872" y2="1872" x1="3264" />
        <branch name="dout(13)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1856" y="1872" type="branch" />
            <wire x2="1856" y1="1872" y2="1872" x1="544" />
            <wire x2="3168" y1="1872" y2="1872" x1="1856" />
        </branch>
        <bustap x2="3168" y1="1744" y2="1744" x1="3264" />
        <branch name="dout(12)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1856" y="1744" type="branch" />
            <wire x2="1856" y1="1744" y2="1744" x1="544" />
            <wire x2="3168" y1="1744" y2="1744" x1="1856" />
        </branch>
        <bustap x2="3168" y1="1632" y2="1632" x1="3264" />
        <branch name="dout(11)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1856" y="1632" type="branch" />
            <wire x2="1856" y1="1632" y2="1632" x1="544" />
            <wire x2="3168" y1="1632" y2="1632" x1="1856" />
        </branch>
        <bustap x2="3168" y1="1520" y2="1520" x1="3264" />
        <branch name="dout(10)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1856" y="1520" type="branch" />
            <wire x2="1856" y1="1520" y2="1520" x1="544" />
            <wire x2="3168" y1="1520" y2="1520" x1="1856" />
        </branch>
        <bustap x2="3168" y1="1392" y2="1392" x1="3264" />
        <branch name="dout(9)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1856" y="1392" type="branch" />
            <wire x2="1856" y1="1392" y2="1392" x1="544" />
            <wire x2="3168" y1="1392" y2="1392" x1="1856" />
        </branch>
        <bustap x2="3168" y1="1168" y2="1168" x1="3264" />
        <branch name="dout(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1856" y="1168" type="branch" />
            <wire x2="1856" y1="1168" y2="1168" x1="544" />
            <wire x2="3168" y1="1168" y2="1168" x1="1856" />
        </branch>
        <bustap x2="3168" y1="1072" y2="1072" x1="3264" />
        <branch name="dout(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1856" y="1072" type="branch" />
            <wire x2="1856" y1="1072" y2="1072" x1="544" />
            <wire x2="3168" y1="1072" y2="1072" x1="1856" />
        </branch>
        <bustap x2="3168" y1="1008" y2="1008" x1="3264" />
        <branch name="dout(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1856" y="1008" type="branch" />
            <wire x2="1856" y1="1008" y2="1008" x1="544" />
            <wire x2="3168" y1="1008" y2="1008" x1="1856" />
        </branch>
        <bustap x2="3168" y1="928" y2="928" x1="3264" />
        <branch name="dout(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1856" y="928" type="branch" />
            <wire x2="1856" y1="928" y2="928" x1="544" />
            <wire x2="3168" y1="928" y2="928" x1="1856" />
        </branch>
        <bustap x2="3168" y1="768" y2="768" x1="3264" />
        <branch name="dout(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1856" y="768" type="branch" />
            <wire x2="1856" y1="768" y2="768" x1="544" />
            <wire x2="3168" y1="768" y2="768" x1="1856" />
        </branch>
        <bustap x2="3168" y1="672" y2="672" x1="3264" />
        <branch name="dout(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1856" y="672" type="branch" />
            <wire x2="1856" y1="672" y2="672" x1="544" />
            <wire x2="3168" y1="672" y2="672" x1="1856" />
        </branch>
        <bustap x2="3168" y1="576" y2="576" x1="3264" />
        <branch name="dout(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1856" y="576" type="branch" />
            <wire x2="1856" y1="576" y2="576" x1="544" />
            <wire x2="3168" y1="576" y2="576" x1="1856" />
        </branch>
        <instance x="320" y="1104" name="XLXI_7" orien="R0" />
        <instance x="320" y="1424" name="XLXI_10" orien="R0" />
        <instance x="320" y="1312" name="XLXI_9" orien="R0" />
        <instance x="320" y="864" name="XLXI_4" orien="R0" />
        <bustap x2="3168" y1="1280" y2="1280" x1="3264" />
        <branch name="dout(8)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1856" y="1280" type="branch" />
            <wire x2="1856" y1="1280" y2="1280" x1="544" />
            <wire x2="3168" y1="1280" y2="1280" x1="1856" />
        </branch>
        <bustap x2="3168" y1="832" y2="832" x1="3264" />
        <branch name="dout(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1856" y="832" type="branch" />
            <wire x2="1856" y1="832" y2="832" x1="544" />
            <wire x2="3168" y1="832" y2="832" x1="1856" />
        </branch>
    </sheet>
</drawing>