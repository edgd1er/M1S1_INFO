<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="c(7:0)" />
        <signal name="c(7)" />
        <signal name="c(6)" />
        <signal name="c(5)" />
        <signal name="c(4)" />
        <signal name="c(3)" />
        <signal name="c(2)" />
        <signal name="c(1)" />
        <signal name="c(0)" />
        <signal name="sel" />
        <signal name="a(7:0)" />
        <signal name="b(7:0)" />
        <signal name="a(7)" />
        <signal name="a(6)" />
        <signal name="a(5)" />
        <signal name="a(4)" />
        <signal name="a(3)" />
        <signal name="a(2)" />
        <signal name="a(1)" />
        <signal name="a(0)" />
        <signal name="b(7)" />
        <signal name="b(6)" />
        <signal name="b(5)" />
        <signal name="b(4)" />
        <signal name="b(3)" />
        <signal name="b(2)" />
        <signal name="b(1)" />
        <signal name="b(0)" />
        <port polarity="Output" name="c(7:0)" />
        <port polarity="Input" name="sel" />
        <port polarity="Input" name="a(7:0)" />
        <port polarity="Input" name="b(7:0)" />
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <block symbolname="m2_1" name="XLXI_1">
            <blockpin signalname="a(0)" name="D0" />
            <blockpin signalname="b(0)" name="D1" />
            <blockpin signalname="sel" name="S0" />
            <blockpin signalname="c(0)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_2">
            <blockpin signalname="a(1)" name="D0" />
            <blockpin signalname="b(1)" name="D1" />
            <blockpin signalname="sel" name="S0" />
            <blockpin signalname="c(1)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_3">
            <blockpin signalname="a(2)" name="D0" />
            <blockpin signalname="b(2)" name="D1" />
            <blockpin signalname="sel" name="S0" />
            <blockpin signalname="c(2)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_4">
            <blockpin signalname="a(3)" name="D0" />
            <blockpin signalname="b(3)" name="D1" />
            <blockpin signalname="sel" name="S0" />
            <blockpin signalname="c(3)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_5">
            <blockpin signalname="a(4)" name="D0" />
            <blockpin signalname="b(4)" name="D1" />
            <blockpin signalname="sel" name="S0" />
            <blockpin signalname="c(4)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_6">
            <blockpin signalname="a(5)" name="D0" />
            <blockpin signalname="b(5)" name="D1" />
            <blockpin signalname="sel" name="S0" />
            <blockpin signalname="c(5)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_7">
            <blockpin signalname="a(6)" name="D0" />
            <blockpin signalname="b(6)" name="D1" />
            <blockpin signalname="sel" name="S0" />
            <blockpin signalname="c(6)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_8">
            <blockpin signalname="a(7)" name="D0" />
            <blockpin signalname="b(7)" name="D1" />
            <blockpin signalname="sel" name="S0" />
            <blockpin signalname="c(7)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="c(7:0)">
            <attrtext style="alignment:SOFT-VLEFT" attrname="Name" x="3152" y="224" type="branch" />
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3152" y="777" type="branch" />
            <wire x2="3152" y1="224" y2="368" x1="3152" />
            <wire x2="3152" y1="368" y2="560" x1="3152" />
            <wire x2="3152" y1="560" y2="768" x1="3152" />
            <wire x2="3152" y1="768" y2="777" x1="3152" />
            <wire x2="3152" y1="777" y2="1024" x1="3152" />
            <wire x2="3152" y1="1024" y2="1232" x1="3152" />
            <wire x2="3152" y1="1232" y2="1504" x1="3152" />
            <wire x2="3152" y1="1504" y2="1776" x1="3152" />
            <wire x2="3152" y1="1776" y2="2048" x1="3152" />
            <wire x2="3152" y1="2048" y2="2448" x1="3152" />
        </branch>
        <iomarker fontsize="28" x="3152" y="2448" name="c(7:0)" orien="R90" />
        <instance x="2384" y="496" name="XLXI_1" orien="R0" />
        <instance x="2384" y="688" name="XLXI_2" orien="R0" />
        <instance x="2400" y="896" name="XLXI_3" orien="R0" />
        <instance x="2384" y="1152" name="XLXI_4" orien="R0" />
        <instance x="2384" y="1360" name="XLXI_5" orien="R0" />
        <instance x="2384" y="1632" name="XLXI_6" orien="R0" />
        <instance x="2368" y="1904" name="XLXI_7" orien="R0" />
        <instance x="2368" y="2176" name="XLXI_8" orien="R0" />
        <bustap x2="3056" y1="2048" y2="2048" x1="3152" />
        <branch name="c(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2872" y="2048" type="branch" />
            <wire x2="2872" y1="2048" y2="2048" x1="2688" />
            <wire x2="3056" y1="2048" y2="2048" x1="2872" />
        </branch>
        <bustap x2="3056" y1="1776" y2="1776" x1="3152" />
        <branch name="c(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2872" y="1776" type="branch" />
            <wire x2="2872" y1="1776" y2="1776" x1="2688" />
            <wire x2="3056" y1="1776" y2="1776" x1="2872" />
        </branch>
        <bustap x2="3056" y1="1504" y2="1504" x1="3152" />
        <branch name="c(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2880" y="1504" type="branch" />
            <wire x2="2880" y1="1504" y2="1504" x1="2704" />
            <wire x2="3056" y1="1504" y2="1504" x1="2880" />
        </branch>
        <bustap x2="3056" y1="1232" y2="1232" x1="3152" />
        <branch name="c(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2880" y="1232" type="branch" />
            <wire x2="2880" y1="1232" y2="1232" x1="2704" />
            <wire x2="3056" y1="1232" y2="1232" x1="2880" />
        </branch>
        <bustap x2="3056" y1="1024" y2="1024" x1="3152" />
        <branch name="c(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2880" y="1024" type="branch" />
            <wire x2="2880" y1="1024" y2="1024" x1="2704" />
            <wire x2="3056" y1="1024" y2="1024" x1="2880" />
        </branch>
        <bustap x2="3056" y1="768" y2="768" x1="3152" />
        <branch name="c(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2888" y="768" type="branch" />
            <wire x2="2888" y1="768" y2="768" x1="2720" />
            <wire x2="3056" y1="768" y2="768" x1="2888" />
        </branch>
        <bustap x2="3056" y1="560" y2="560" x1="3152" />
        <branch name="c(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2880" y="560" type="branch" />
            <wire x2="2880" y1="560" y2="560" x1="2704" />
            <wire x2="3056" y1="560" y2="560" x1="2880" />
        </branch>
        <bustap x2="3056" y1="368" y2="368" x1="3152" />
        <branch name="c(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2880" y="368" type="branch" />
            <wire x2="2880" y1="368" y2="368" x1="2704" />
            <wire x2="3056" y1="368" y2="368" x1="2880" />
        </branch>
        <branch name="sel">
            <wire x2="2208" y1="144" y2="464" x1="2208" />
            <wire x2="2208" y1="464" y2="656" x1="2208" />
            <wire x2="2208" y1="656" y2="864" x1="2208" />
            <wire x2="2208" y1="864" y2="1120" x1="2208" />
            <wire x2="2208" y1="1120" y2="1328" x1="2208" />
            <wire x2="2208" y1="1328" y2="1600" x1="2208" />
            <wire x2="2208" y1="1600" y2="1872" x1="2208" />
            <wire x2="2208" y1="1872" y2="2144" x1="2208" />
            <wire x2="2368" y1="2144" y2="2144" x1="2208" />
            <wire x2="2368" y1="1872" y2="1872" x1="2208" />
            <wire x2="2384" y1="1600" y2="1600" x1="2208" />
            <wire x2="2384" y1="1328" y2="1328" x1="2208" />
            <wire x2="2384" y1="1120" y2="1120" x1="2208" />
            <wire x2="2400" y1="864" y2="864" x1="2208" />
            <wire x2="2384" y1="656" y2="656" x1="2208" />
            <wire x2="2384" y1="464" y2="464" x1="2208" />
        </branch>
        <iomarker fontsize="28" x="2208" y="144" name="sel" orien="R270" />
        <branch name="a(7:0)">
            <wire x2="1856" y1="128" y2="336" x1="1856" />
            <wire x2="1856" y1="336" y2="528" x1="1856" />
            <wire x2="1856" y1="528" y2="736" x1="1856" />
            <wire x2="1856" y1="736" y2="992" x1="1856" />
            <wire x2="1856" y1="992" y2="1200" x1="1856" />
            <wire x2="1856" y1="1200" y2="1472" x1="1856" />
            <wire x2="1856" y1="1472" y2="1744" x1="1856" />
            <wire x2="1856" y1="1744" y2="2016" x1="1856" />
            <wire x2="1856" y1="2016" y2="2208" x1="1856" />
        </branch>
        <iomarker fontsize="28" x="1856" y="128" name="a(7:0)" orien="R270" />
        <branch name="b(7:0)">
            <wire x2="2032" y1="128" y2="384" x1="2032" />
            <wire x2="2032" y1="384" y2="400" x1="2032" />
            <wire x2="2032" y1="400" y2="592" x1="2032" />
            <wire x2="2032" y1="592" y2="800" x1="2032" />
            <wire x2="2032" y1="800" y2="1056" x1="2032" />
            <wire x2="2032" y1="1056" y2="1264" x1="2032" />
            <wire x2="2032" y1="1264" y2="1536" x1="2032" />
            <wire x2="2032" y1="1536" y2="1808" x1="2032" />
            <wire x2="2032" y1="1808" y2="2080" x1="2032" />
            <wire x2="2032" y1="2080" y2="2208" x1="2032" />
        </branch>
        <bustap x2="1952" y1="2016" y2="2016" x1="1856" />
        <branch name="a(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2160" y="2016" type="branch" />
            <wire x2="2160" y1="2016" y2="2016" x1="1952" />
            <wire x2="2368" y1="2016" y2="2016" x1="2160" />
        </branch>
        <bustap x2="1952" y1="1744" y2="1744" x1="1856" />
        <branch name="a(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2160" y="1744" type="branch" />
            <wire x2="2160" y1="1744" y2="1744" x1="1952" />
            <wire x2="2368" y1="1744" y2="1744" x1="2160" />
        </branch>
        <bustap x2="1952" y1="1472" y2="1472" x1="1856" />
        <branch name="a(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2168" y="1472" type="branch" />
            <wire x2="2168" y1="1472" y2="1472" x1="1952" />
            <wire x2="2384" y1="1472" y2="1472" x1="2168" />
        </branch>
        <bustap x2="1952" y1="1200" y2="1200" x1="1856" />
        <branch name="a(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2168" y="1200" type="branch" />
            <wire x2="2168" y1="1200" y2="1200" x1="1952" />
            <wire x2="2384" y1="1200" y2="1200" x1="2168" />
        </branch>
        <bustap x2="1952" y1="992" y2="992" x1="1856" />
        <branch name="a(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2168" y="992" type="branch" />
            <wire x2="2168" y1="992" y2="992" x1="1952" />
            <wire x2="2384" y1="992" y2="992" x1="2168" />
        </branch>
        <bustap x2="1952" y1="736" y2="736" x1="1856" />
        <branch name="a(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2176" y="736" type="branch" />
            <wire x2="2176" y1="736" y2="736" x1="1952" />
            <wire x2="2400" y1="736" y2="736" x1="2176" />
        </branch>
        <bustap x2="1952" y1="528" y2="528" x1="1856" />
        <branch name="a(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2168" y="528" type="branch" />
            <wire x2="2168" y1="528" y2="528" x1="1952" />
            <wire x2="2384" y1="528" y2="528" x1="2168" />
        </branch>
        <bustap x2="1952" y1="336" y2="336" x1="1856" />
        <branch name="a(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2168" y="336" type="branch" />
            <wire x2="2168" y1="336" y2="336" x1="1952" />
            <wire x2="2384" y1="336" y2="336" x1="2168" />
        </branch>
        <bustap x2="2128" y1="2080" y2="2080" x1="2032" />
        <branch name="b(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2248" y="2080" type="branch" />
            <wire x2="2248" y1="2080" y2="2080" x1="2128" />
            <wire x2="2368" y1="2080" y2="2080" x1="2248" />
        </branch>
        <bustap x2="2128" y1="1808" y2="1808" x1="2032" />
        <branch name="b(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2248" y="1808" type="branch" />
            <wire x2="2248" y1="1808" y2="1808" x1="2128" />
            <wire x2="2368" y1="1808" y2="1808" x1="2248" />
        </branch>
        <bustap x2="2128" y1="1536" y2="1536" x1="2032" />
        <branch name="b(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2256" y="1536" type="branch" />
            <wire x2="2256" y1="1536" y2="1536" x1="2128" />
            <wire x2="2384" y1="1536" y2="1536" x1="2256" />
        </branch>
        <bustap x2="2128" y1="1264" y2="1264" x1="2032" />
        <branch name="b(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2256" y="1264" type="branch" />
            <wire x2="2256" y1="1264" y2="1264" x1="2128" />
            <wire x2="2384" y1="1264" y2="1264" x1="2256" />
        </branch>
        <bustap x2="2128" y1="1056" y2="1056" x1="2032" />
        <branch name="b(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2256" y="1056" type="branch" />
            <wire x2="2256" y1="1056" y2="1056" x1="2128" />
            <wire x2="2384" y1="1056" y2="1056" x1="2256" />
        </branch>
        <bustap x2="2128" y1="800" y2="800" x1="2032" />
        <branch name="b(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2264" y="800" type="branch" />
            <wire x2="2264" y1="800" y2="800" x1="2128" />
            <wire x2="2400" y1="800" y2="800" x1="2264" />
        </branch>
        <bustap x2="2128" y1="592" y2="592" x1="2032" />
        <branch name="b(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2256" y="592" type="branch" />
            <wire x2="2256" y1="592" y2="592" x1="2128" />
            <wire x2="2384" y1="592" y2="592" x1="2256" />
        </branch>
        <bustap x2="2128" y1="400" y2="400" x1="2032" />
        <branch name="b(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2256" y="400" type="branch" />
            <wire x2="2256" y1="400" y2="400" x1="2128" />
            <wire x2="2384" y1="400" y2="400" x1="2256" />
        </branch>
        <iomarker fontsize="28" x="2032" y="128" name="b(7:0)" orien="R270" />
    </sheet>
</drawing>