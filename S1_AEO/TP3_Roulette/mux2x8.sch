<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="sel" />
        <signal name="b(7:0)" />
        <signal name="a(7:0)" />
        <signal name="c(7:0)" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
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
        <signal name="c(7)" />
        <signal name="c(6)" />
        <signal name="c(5)" />
        <signal name="c(4)" />
        <signal name="c(3)" />
        <signal name="c(2)" />
        <signal name="c(1)" />
        <signal name="c(0)" />
        <port polarity="Input" name="sel" />
        <port polarity="Input" name="b(7:0)" />
        <port polarity="Input" name="a(7:0)" />
        <port polarity="Output" name="c(7:0)" />
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
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="3120" y="624" name="XLXI_1" orien="R0" />
        <instance x="3136" y="960" name="XLXI_2" orien="R0" />
        <instance x="3152" y="1440" name="XLXI_3" orien="R0" />
        <instance x="3168" y="1776" name="XLXI_4" orien="R0" />
        <instance x="3184" y="2320" name="XLXI_5" orien="R0" />
        <instance x="3200" y="2656" name="XLXI_6" orien="R0" />
        <instance x="3200" y="3248" name="XLXI_7" orien="R0" />
        <instance x="3216" y="3584" name="XLXI_8" orien="R0" />
        <branch name="sel">
            <wire x2="2768" y1="256" y2="592" x1="2768" />
            <wire x2="3120" y1="592" y2="592" x1="2768" />
            <wire x2="2768" y1="592" y2="928" x1="2768" />
            <wire x2="3136" y1="928" y2="928" x1="2768" />
            <wire x2="2768" y1="928" y2="1408" x1="2768" />
            <wire x2="3152" y1="1408" y2="1408" x1="2768" />
            <wire x2="2768" y1="1408" y2="1744" x1="2768" />
            <wire x2="3152" y1="1744" y2="1744" x1="2768" />
            <wire x2="3168" y1="1744" y2="1744" x1="3152" />
            <wire x2="2768" y1="1744" y2="2288" x1="2768" />
            <wire x2="3184" y1="2288" y2="2288" x1="2768" />
            <wire x2="2768" y1="2288" y2="2624" x1="2768" />
            <wire x2="3200" y1="2624" y2="2624" x1="2768" />
            <wire x2="2768" y1="2624" y2="3216" x1="2768" />
            <wire x2="3184" y1="3216" y2="3216" x1="2768" />
            <wire x2="3200" y1="3216" y2="3216" x1="3184" />
            <wire x2="2768" y1="3216" y2="3552" x1="2768" />
            <wire x2="2768" y1="3552" y2="4224" x1="2768" />
            <wire x2="3216" y1="3552" y2="3552" x1="2768" />
        </branch>
        <branch name="b(7:0)">
            <wire x2="2400" y1="272" y2="528" x1="2400" />
            <wire x2="2400" y1="528" y2="864" x1="2400" />
            <wire x2="2400" y1="864" y2="1344" x1="2400" />
            <wire x2="2400" y1="1344" y2="1680" x1="2400" />
            <wire x2="2400" y1="1680" y2="2224" x1="2400" />
            <wire x2="2400" y1="2224" y2="2560" x1="2400" />
            <wire x2="2400" y1="2560" y2="3152" x1="2400" />
            <wire x2="2400" y1="3152" y2="3488" x1="2400" />
            <wire x2="2400" y1="3488" y2="4240" x1="2400" />
        </branch>
        <branch name="a(7:0)">
            <wire x2="2064" y1="304" y2="464" x1="2064" />
            <wire x2="2064" y1="464" y2="800" x1="2064" />
            <wire x2="2064" y1="800" y2="1280" x1="2064" />
            <wire x2="2064" y1="1280" y2="1616" x1="2064" />
            <wire x2="2064" y1="1616" y2="2160" x1="2064" />
            <wire x2="2064" y1="2160" y2="2496" x1="2064" />
            <wire x2="2064" y1="2496" y2="3088" x1="2064" />
            <wire x2="2064" y1="3088" y2="3424" x1="2064" />
            <wire x2="2064" y1="3424" y2="4272" x1="2064" />
        </branch>
        <branch name="c(7:0)">
            <wire x2="4000" y1="368" y2="496" x1="4000" />
            <wire x2="4000" y1="496" y2="832" x1="4000" />
            <wire x2="4000" y1="832" y2="1312" x1="4000" />
            <wire x2="4000" y1="1312" y2="1648" x1="4000" />
            <wire x2="4000" y1="1648" y2="2192" x1="4000" />
            <wire x2="4000" y1="2192" y2="2528" x1="4000" />
            <wire x2="4000" y1="2528" y2="3120" x1="4000" />
            <wire x2="4000" y1="3120" y2="3456" x1="4000" />
            <wire x2="4000" y1="3456" y2="4336" x1="4000" />
        </branch>
        <iomarker fontsize="28" x="2064" y="304" name="a(7:0)" orien="R270" />
        <iomarker fontsize="28" x="2400" y="272" name="b(7:0)" orien="R270" />
        <iomarker fontsize="28" x="2768" y="256" name="sel" orien="R270" />
        <iomarker fontsize="28" x="4000" y="368" name="c(7:0)" orien="R270" />
        <bustap x2="2160" y1="3424" y2="3424" x1="2064" />
        <branch name="a(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2688" y="3424" type="branch" />
            <wire x2="2688" y1="3424" y2="3424" x1="2160" />
            <wire x2="3216" y1="3424" y2="3424" x1="2688" />
        </branch>
        <bustap x2="2160" y1="3088" y2="3088" x1="2064" />
        <branch name="a(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2680" y="3088" type="branch" />
            <wire x2="2680" y1="3088" y2="3088" x1="2160" />
            <wire x2="3200" y1="3088" y2="3088" x1="2680" />
        </branch>
        <bustap x2="2160" y1="2496" y2="2496" x1="2064" />
        <branch name="a(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2680" y="2496" type="branch" />
            <wire x2="2680" y1="2496" y2="2496" x1="2160" />
            <wire x2="3200" y1="2496" y2="2496" x1="2680" />
        </branch>
        <bustap x2="2160" y1="2160" y2="2160" x1="2064" />
        <branch name="a(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2672" y="2160" type="branch" />
            <wire x2="2672" y1="2160" y2="2160" x1="2160" />
            <wire x2="3184" y1="2160" y2="2160" x1="2672" />
        </branch>
        <bustap x2="2160" y1="1616" y2="1616" x1="2064" />
        <branch name="a(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2664" y="1616" type="branch" />
            <wire x2="2664" y1="1616" y2="1616" x1="2160" />
            <wire x2="3168" y1="1616" y2="1616" x1="2664" />
        </branch>
        <bustap x2="2160" y1="1280" y2="1280" x1="2064" />
        <branch name="a(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2656" y="1280" type="branch" />
            <wire x2="2656" y1="1280" y2="1280" x1="2160" />
            <wire x2="3152" y1="1280" y2="1280" x1="2656" />
        </branch>
        <bustap x2="2160" y1="800" y2="800" x1="2064" />
        <branch name="a(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2648" y="800" type="branch" />
            <wire x2="2648" y1="800" y2="800" x1="2160" />
            <wire x2="3136" y1="800" y2="800" x1="2648" />
        </branch>
        <bustap x2="2160" y1="464" y2="464" x1="2064" />
        <branch name="a(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2640" y="464" type="branch" />
            <wire x2="2640" y1="464" y2="464" x1="2160" />
            <wire x2="3120" y1="464" y2="464" x1="2640" />
        </branch>
        <bustap x2="2496" y1="3488" y2="3488" x1="2400" />
        <branch name="b(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2856" y="3488" type="branch" />
            <wire x2="2856" y1="3488" y2="3488" x1="2496" />
            <wire x2="3216" y1="3488" y2="3488" x1="2856" />
        </branch>
        <bustap x2="2496" y1="3152" y2="3152" x1="2400" />
        <branch name="b(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2848" y="3152" type="branch" />
            <wire x2="2848" y1="3152" y2="3152" x1="2496" />
            <wire x2="3200" y1="3152" y2="3152" x1="2848" />
        </branch>
        <bustap x2="2496" y1="2560" y2="2560" x1="2400" />
        <branch name="b(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2848" y="2560" type="branch" />
            <wire x2="2848" y1="2560" y2="2560" x1="2496" />
            <wire x2="3200" y1="2560" y2="2560" x1="2848" />
        </branch>
        <bustap x2="2496" y1="2224" y2="2224" x1="2400" />
        <branch name="b(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2840" y="2224" type="branch" />
            <wire x2="2840" y1="2224" y2="2224" x1="2496" />
            <wire x2="3184" y1="2224" y2="2224" x1="2840" />
        </branch>
        <bustap x2="2496" y1="1680" y2="1680" x1="2400" />
        <branch name="b(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2832" y="1680" type="branch" />
            <wire x2="2832" y1="1680" y2="1680" x1="2496" />
            <wire x2="3168" y1="1680" y2="1680" x1="2832" />
        </branch>
        <bustap x2="2496" y1="1344" y2="1344" x1="2400" />
        <branch name="b(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2824" y="1344" type="branch" />
            <wire x2="2824" y1="1344" y2="1344" x1="2496" />
            <wire x2="3152" y1="1344" y2="1344" x1="2824" />
        </branch>
        <bustap x2="2496" y1="864" y2="864" x1="2400" />
        <branch name="b(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2816" y="864" type="branch" />
            <wire x2="2816" y1="864" y2="864" x1="2496" />
            <wire x2="3136" y1="864" y2="864" x1="2816" />
        </branch>
        <bustap x2="2496" y1="528" y2="528" x1="2400" />
        <branch name="b(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2808" y="528" type="branch" />
            <wire x2="2808" y1="528" y2="528" x1="2496" />
            <wire x2="3120" y1="528" y2="528" x1="2808" />
        </branch>
        <bustap x2="3904" y1="3456" y2="3456" x1="4000" />
        <branch name="c(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3720" y="3456" type="branch" />
            <wire x2="3720" y1="3456" y2="3456" x1="3536" />
            <wire x2="3904" y1="3456" y2="3456" x1="3720" />
        </branch>
        <bustap x2="3904" y1="3120" y2="3120" x1="4000" />
        <branch name="c(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3712" y="3120" type="branch" />
            <wire x2="3712" y1="3120" y2="3120" x1="3520" />
            <wire x2="3904" y1="3120" y2="3120" x1="3712" />
        </branch>
        <bustap x2="3904" y1="2528" y2="2528" x1="4000" />
        <branch name="c(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3712" y="2528" type="branch" />
            <wire x2="3712" y1="2528" y2="2528" x1="3520" />
            <wire x2="3904" y1="2528" y2="2528" x1="3712" />
        </branch>
        <bustap x2="3904" y1="2192" y2="2192" x1="4000" />
        <branch name="c(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3704" y="2192" type="branch" />
            <wire x2="3704" y1="2192" y2="2192" x1="3504" />
            <wire x2="3904" y1="2192" y2="2192" x1="3704" />
        </branch>
        <bustap x2="3904" y1="1648" y2="1648" x1="4000" />
        <branch name="c(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3696" y="1648" type="branch" />
            <wire x2="3696" y1="1648" y2="1648" x1="3488" />
            <wire x2="3904" y1="1648" y2="1648" x1="3696" />
        </branch>
        <bustap x2="3904" y1="1312" y2="1312" x1="4000" />
        <branch name="c(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3688" y="1312" type="branch" />
            <wire x2="3688" y1="1312" y2="1312" x1="3472" />
            <wire x2="3904" y1="1312" y2="1312" x1="3688" />
        </branch>
        <bustap x2="3904" y1="832" y2="832" x1="4000" />
        <branch name="c(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3680" y="832" type="branch" />
            <wire x2="3680" y1="832" y2="832" x1="3456" />
            <wire x2="3904" y1="832" y2="832" x1="3680" />
        </branch>
        <bustap x2="3904" y1="496" y2="496" x1="4000" />
        <branch name="c(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3672" y="496" type="branch" />
            <wire x2="3672" y1="496" y2="496" x1="3440" />
            <wire x2="3904" y1="496" y2="496" x1="3672" />
        </branch>
    </sheet>
</drawing>