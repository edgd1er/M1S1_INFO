<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_14" />
        <signal name="clk" />
        <signal name="XLXN_1" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_13" />
        <signal name="XLXN_19" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_11" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="clk190" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55" />
        <signal name="XLXN_56" />
        <signal name="XLXN_57" />
        <signal name="XLXN_58" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="XLXN_63" />
        <signal name="XLXN_64" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68" />
        <signal name="XLXN_72" />
        <signal name="XLXN_73" />
        <signal name="XLXN_74" />
        <signal name="clksec" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="clk190" />
        <port polarity="Output" name="clksec" />
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
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="XLXN_23" name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="XLXN_4" name="I" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="fd" name="FD3">
            <blockpin signalname="XLXN_4" name="C" />
            <blockpin signalname="XLXN_5" name="D" />
            <blockpin signalname="XLXN_6" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="XLXN_6" name="I" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="fd" name="FD4">
            <blockpin signalname="XLXN_6" name="C" />
            <blockpin signalname="XLXN_7" name="D" />
            <blockpin signalname="XLXN_8" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="XLXN_8" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="fd" name="FD5">
            <blockpin signalname="XLXN_8" name="C" />
            <blockpin signalname="XLXN_9" name="D" />
            <blockpin signalname="XLXN_10" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="XLXN_10" name="I" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_12">
            <blockpin signalname="XLXN_19" name="I" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="fd" name="FD7">
            <blockpin signalname="XLXN_19" name="C" />
            <blockpin signalname="XLXN_13" name="D" />
            <blockpin signalname="XLXN_14" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_14">
            <blockpin signalname="XLXN_14" name="I" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="fd" name="FD1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_1" name="D" />
            <blockpin signalname="XLXN_23" name="Q" />
        </block>
        <block symbolname="fd" name="FD2">
            <blockpin signalname="XLXN_23" name="C" />
            <blockpin signalname="XLXN_22" name="D" />
            <blockpin signalname="XLXN_4" name="Q" />
        </block>
        <block symbolname="fd" name="FD6">
            <blockpin signalname="XLXN_10" name="C" />
            <blockpin signalname="XLXN_11" name="D" />
            <blockpin signalname="XLXN_19" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_16">
            <blockpin signalname="XLXN_41" name="I" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_17">
            <blockpin signalname="XLXN_29" name="I" />
            <blockpin signalname="XLXN_40" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_18">
            <blockpin signalname="XLXN_29" name="C" />
            <blockpin signalname="XLXN_30" name="D" />
            <blockpin signalname="XLXN_31" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_19">
            <blockpin signalname="XLXN_31" name="I" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_20">
            <blockpin signalname="XLXN_31" name="C" />
            <blockpin signalname="XLXN_32" name="D" />
            <blockpin signalname="XLXN_34" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_21">
            <blockpin signalname="XLXN_34" name="I" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_22">
            <blockpin signalname="XLXN_34" name="C" />
            <blockpin signalname="XLXN_35" name="D" />
            <blockpin signalname="XLXN_36" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_23">
            <blockpin signalname="XLXN_36" name="I" />
            <blockpin signalname="XLXN_35" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_24">
            <blockpin signalname="XLXN_39" name="I" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_25">
            <blockpin signalname="XLXN_39" name="C" />
            <blockpin signalname="XLXN_37" name="D" />
            <blockpin signalname="XLXN_38" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_26">
            <blockpin signalname="XLXN_38" name="I" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_27">
            <blockpin signalname="XLXN_14" name="C" />
            <blockpin signalname="XLXN_28" name="D" />
            <blockpin signalname="XLXN_41" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_28">
            <blockpin signalname="XLXN_41" name="C" />
            <blockpin signalname="XLXN_40" name="D" />
            <blockpin signalname="XLXN_29" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_29">
            <blockpin signalname="XLXN_36" name="C" />
            <blockpin signalname="XLXN_42" name="D" />
            <blockpin signalname="XLXN_39" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_30">
            <blockpin signalname="XLXN_57" name="I" />
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_31">
            <blockpin signalname="XLXN_45" name="I" />
            <blockpin signalname="XLXN_56" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_32">
            <blockpin signalname="XLXN_45" name="C" />
            <blockpin signalname="XLXN_46" name="D" />
            <blockpin signalname="XLXN_47" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_33">
            <blockpin signalname="XLXN_47" name="I" />
            <blockpin signalname="XLXN_46" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_34">
            <blockpin signalname="XLXN_47" name="C" />
            <blockpin signalname="XLXN_48" name="D" />
            <blockpin signalname="XLXN_50" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_35">
            <blockpin signalname="XLXN_50" name="I" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_36">
            <blockpin signalname="XLXN_50" name="C" />
            <blockpin signalname="XLXN_51" name="D" />
            <blockpin signalname="clk190" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_37">
            <blockpin signalname="clk190" name="I" />
            <blockpin signalname="XLXN_51" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_38">
            <blockpin signalname="XLXN_55" name="I" />
            <blockpin signalname="XLXN_58" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_39">
            <blockpin signalname="XLXN_55" name="C" />
            <blockpin signalname="XLXN_53" name="D" />
            <blockpin signalname="XLXN_54" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_40">
            <blockpin signalname="XLXN_54" name="I" />
            <blockpin signalname="XLXN_53" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_41">
            <blockpin signalname="XLXN_38" name="C" />
            <blockpin signalname="XLXN_44" name="D" />
            <blockpin signalname="XLXN_57" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_42">
            <blockpin signalname="XLXN_57" name="C" />
            <blockpin signalname="XLXN_56" name="D" />
            <blockpin signalname="XLXN_45" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_43">
            <blockpin signalname="clk190" name="C" />
            <blockpin signalname="XLXN_58" name="D" />
            <blockpin signalname="XLXN_55" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_44">
            <blockpin signalname="XLXN_73" name="I" />
            <blockpin signalname="XLXN_60" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_45">
            <blockpin signalname="XLXN_61" name="I" />
            <blockpin signalname="XLXN_72" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_46">
            <blockpin signalname="XLXN_61" name="C" />
            <blockpin signalname="XLXN_62" name="D" />
            <blockpin signalname="XLXN_63" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_47">
            <blockpin signalname="XLXN_63" name="I" />
            <blockpin signalname="XLXN_62" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_48">
            <blockpin signalname="XLXN_63" name="C" />
            <blockpin signalname="XLXN_64" name="D" />
            <blockpin signalname="XLXN_66" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_49">
            <blockpin signalname="XLXN_66" name="I" />
            <blockpin signalname="XLXN_64" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_50">
            <blockpin signalname="XLXN_66" name="C" />
            <blockpin signalname="XLXN_67" name="D" />
            <blockpin signalname="XLXN_68" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_51">
            <blockpin signalname="XLXN_68" name="I" />
            <blockpin signalname="XLXN_67" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_52">
            <blockpin signalname="clksec" name="I" />
            <blockpin signalname="XLXN_74" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_55">
            <blockpin signalname="XLXN_54" name="C" />
            <blockpin signalname="XLXN_60" name="D" />
            <blockpin signalname="XLXN_73" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_56">
            <blockpin signalname="XLXN_73" name="C" />
            <blockpin signalname="XLXN_72" name="D" />
            <blockpin signalname="XLXN_61" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_57">
            <blockpin signalname="XLXN_68" name="C" />
            <blockpin signalname="XLXN_74" name="D" />
            <blockpin signalname="clksec" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5382" height="3801">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="608" y="160" name="XLXI_2" orien="R180" />
        <branch name="XLXN_1">
            <wire x2="272" y1="192" y2="416" x1="272" />
            <wire x2="304" y1="416" y2="416" x1="272" />
            <wire x2="384" y1="192" y2="192" x1="272" />
        </branch>
        <instance x="1264" y="160" name="XLXI_4" orien="R180" />
        <branch name="XLXN_4">
            <wire x2="1424" y1="192" y2="192" x1="1264" />
            <wire x2="1424" y1="192" y2="416" x1="1424" />
            <wire x2="1424" y1="416" y2="560" x1="1424" />
            <wire x2="1632" y1="560" y2="560" x1="1424" />
            <wire x2="1424" y1="416" y2="416" x1="1328" />
        </branch>
        <instance x="1632" y="688" name="FD3" orien="R0" />
        <instance x="1952" y="176" name="XLXI_6" orien="R180" />
        <branch name="XLXN_5">
            <wire x2="1616" y1="208" y2="432" x1="1616" />
            <wire x2="1632" y1="432" y2="432" x1="1616" />
            <wire x2="1728" y1="208" y2="208" x1="1616" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="2112" y1="208" y2="208" x1="1952" />
            <wire x2="2112" y1="208" y2="432" x1="2112" />
            <wire x2="2112" y1="432" y2="560" x1="2112" />
            <wire x2="2304" y1="560" y2="560" x1="2112" />
            <wire x2="2112" y1="432" y2="432" x1="2016" />
        </branch>
        <instance x="2304" y="688" name="FD4" orien="R0" />
        <instance x="2624" y="176" name="XLXI_8" orien="R180" />
        <branch name="XLXN_7">
            <wire x2="2288" y1="208" y2="432" x1="2288" />
            <wire x2="2304" y1="432" y2="432" x1="2288" />
            <wire x2="2400" y1="208" y2="208" x1="2288" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="2784" y1="208" y2="208" x1="2624" />
            <wire x2="2784" y1="208" y2="432" x1="2784" />
            <wire x2="2784" y1="432" y2="560" x1="2784" />
            <wire x2="2784" y1="432" y2="432" x1="2688" />
            <wire x2="2768" y1="560" y2="576" x1="2768" />
            <wire x2="2896" y1="576" y2="576" x1="2768" />
            <wire x2="2784" y1="560" y2="560" x1="2768" />
        </branch>
        <instance x="2896" y="704" name="FD5" orien="R0" />
        <instance x="3216" y="192" name="XLXI_10" orien="R180" />
        <branch name="XLXN_9">
            <wire x2="2880" y1="224" y2="448" x1="2880" />
            <wire x2="2896" y1="448" y2="448" x1="2880" />
            <wire x2="2992" y1="224" y2="224" x1="2880" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="3376" y1="224" y2="224" x1="3216" />
            <wire x2="3376" y1="224" y2="448" x1="3376" />
            <wire x2="3376" y1="448" y2="592" x1="3376" />
            <wire x2="3600" y1="592" y2="592" x1="3376" />
            <wire x2="3376" y1="448" y2="448" x1="3280" />
        </branch>
        <instance x="3904" y="208" name="XLXI_12" orien="R180" />
        <instance x="4256" y="736" name="FD7" orien="R0" />
        <instance x="4576" y="224" name="XLXI_14" orien="R180" />
        <branch name="XLXN_13">
            <wire x2="4240" y1="256" y2="480" x1="4240" />
            <wire x2="4256" y1="480" y2="480" x1="4240" />
            <wire x2="4352" y1="256" y2="256" x1="4240" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="4080" y1="240" y2="240" x1="3904" />
            <wire x2="4080" y1="240" y2="464" x1="4080" />
            <wire x2="4080" y1="464" y2="608" x1="4080" />
            <wire x2="4256" y1="608" y2="608" x1="4080" />
            <wire x2="4080" y1="464" y2="464" x1="3984" />
        </branch>
        <instance x="304" y="672" name="FD1" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="928" y1="192" y2="416" x1="928" />
            <wire x2="944" y1="416" y2="416" x1="928" />
            <wire x2="1040" y1="192" y2="192" x1="928" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="704" y1="192" y2="192" x1="608" />
            <wire x2="704" y1="192" y2="416" x1="704" />
            <wire x2="704" y1="416" y2="544" x1="704" />
            <wire x2="944" y1="544" y2="544" x1="704" />
            <wire x2="704" y1="416" y2="416" x1="688" />
        </branch>
        <instance x="944" y="672" name="FD2" orien="R0" />
        <instance x="3600" y="720" name="FD6" orien="R0" />
        <branch name="XLXN_11">
            <wire x2="3584" y1="240" y2="464" x1="3584" />
            <wire x2="3600" y1="464" y2="464" x1="3584" />
            <wire x2="3680" y1="240" y2="240" x1="3584" />
        </branch>
        <branch name="clk">
            <wire x2="304" y1="544" y2="544" x1="256" />
        </branch>
        <instance x="640" y="1040" name="XLXI_16" orien="R180" />
        <branch name="XLXN_28">
            <wire x2="304" y1="1072" y2="1296" x1="304" />
            <wire x2="336" y1="1296" y2="1296" x1="304" />
            <wire x2="416" y1="1072" y2="1072" x1="304" />
        </branch>
        <instance x="1296" y="1040" name="XLXI_17" orien="R180" />
        <branch name="XLXN_29">
            <wire x2="1456" y1="1072" y2="1072" x1="1296" />
            <wire x2="1456" y1="1072" y2="1296" x1="1456" />
            <wire x2="1456" y1="1296" y2="1440" x1="1456" />
            <wire x2="1664" y1="1440" y2="1440" x1="1456" />
            <wire x2="1456" y1="1296" y2="1296" x1="1360" />
        </branch>
        <instance x="1664" y="1568" name="XLXI_18" orien="R0" />
        <instance x="1984" y="1056" name="XLXI_19" orien="R180" />
        <branch name="XLXN_30">
            <wire x2="1648" y1="1088" y2="1312" x1="1648" />
            <wire x2="1664" y1="1312" y2="1312" x1="1648" />
            <wire x2="1760" y1="1088" y2="1088" x1="1648" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="2144" y1="1088" y2="1088" x1="1984" />
            <wire x2="2144" y1="1088" y2="1312" x1="2144" />
            <wire x2="2144" y1="1312" y2="1440" x1="2144" />
            <wire x2="2336" y1="1440" y2="1440" x1="2144" />
            <wire x2="2144" y1="1312" y2="1312" x1="2048" />
        </branch>
        <instance x="2336" y="1568" name="XLXI_20" orien="R0" />
        <instance x="2656" y="1056" name="XLXI_21" orien="R180" />
        <branch name="XLXN_32">
            <wire x2="2320" y1="1088" y2="1312" x1="2320" />
            <wire x2="2336" y1="1312" y2="1312" x1="2320" />
            <wire x2="2432" y1="1088" y2="1088" x1="2320" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="2816" y1="1088" y2="1088" x1="2656" />
            <wire x2="2816" y1="1088" y2="1312" x1="2816" />
            <wire x2="2816" y1="1312" y2="1440" x1="2816" />
            <wire x2="2816" y1="1312" y2="1312" x1="2720" />
            <wire x2="2800" y1="1440" y2="1456" x1="2800" />
            <wire x2="2928" y1="1456" y2="1456" x1="2800" />
            <wire x2="2816" y1="1440" y2="1440" x1="2800" />
        </branch>
        <instance x="2928" y="1584" name="XLXI_22" orien="R0" />
        <instance x="3248" y="1072" name="XLXI_23" orien="R180" />
        <branch name="XLXN_35">
            <wire x2="2912" y1="1104" y2="1328" x1="2912" />
            <wire x2="2928" y1="1328" y2="1328" x1="2912" />
            <wire x2="3024" y1="1104" y2="1104" x1="2912" />
        </branch>
        <branch name="XLXN_36">
            <wire x2="3408" y1="1104" y2="1104" x1="3248" />
            <wire x2="3408" y1="1104" y2="1328" x1="3408" />
            <wire x2="3408" y1="1328" y2="1472" x1="3408" />
            <wire x2="3632" y1="1472" y2="1472" x1="3408" />
            <wire x2="3408" y1="1328" y2="1328" x1="3312" />
        </branch>
        <instance x="3936" y="1088" name="XLXI_24" orien="R180" />
        <instance x="4288" y="1616" name="XLXI_25" orien="R0" />
        <instance x="4608" y="1104" name="XLXI_26" orien="R180" />
        <branch name="XLXN_37">
            <wire x2="4272" y1="1136" y2="1360" x1="4272" />
            <wire x2="4288" y1="1360" y2="1360" x1="4272" />
            <wire x2="4384" y1="1136" y2="1136" x1="4272" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="4768" y1="1744" y2="1744" x1="304" />
            <wire x2="304" y1="1744" y2="2384" x1="304" />
            <wire x2="368" y1="2384" y2="2384" x1="304" />
            <wire x2="4768" y1="1136" y2="1136" x1="4608" />
            <wire x2="4768" y1="1136" y2="1360" x1="4768" />
            <wire x2="4768" y1="1360" y2="1744" x1="4768" />
            <wire x2="4768" y1="1360" y2="1360" x1="4672" />
        </branch>
        <branch name="XLXN_39">
            <wire x2="4112" y1="1120" y2="1120" x1="3936" />
            <wire x2="4112" y1="1120" y2="1344" x1="4112" />
            <wire x2="4112" y1="1344" y2="1488" x1="4112" />
            <wire x2="4288" y1="1488" y2="1488" x1="4112" />
            <wire x2="4112" y1="1344" y2="1344" x1="4016" />
        </branch>
        <instance x="336" y="1552" name="XLXI_27" orien="R0" />
        <branch name="XLXN_40">
            <wire x2="1056" y1="1072" y2="1072" x1="960" />
            <wire x2="1072" y1="1072" y2="1072" x1="1056" />
            <wire x2="960" y1="1072" y2="1296" x1="960" />
            <wire x2="976" y1="1296" y2="1296" x1="960" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="736" y1="1072" y2="1072" x1="640" />
            <wire x2="736" y1="1072" y2="1296" x1="736" />
            <wire x2="736" y1="1296" y2="1424" x1="736" />
            <wire x2="976" y1="1424" y2="1424" x1="736" />
            <wire x2="736" y1="1296" y2="1296" x1="720" />
        </branch>
        <instance x="976" y="1552" name="XLXI_28" orien="R0" />
        <instance x="3632" y="1600" name="XLXI_29" orien="R0" />
        <branch name="XLXN_42">
            <wire x2="3616" y1="1120" y2="1344" x1="3616" />
            <wire x2="3632" y1="1344" y2="1344" x1="3616" />
            <wire x2="3712" y1="1120" y2="1120" x1="3616" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="288" y1="736" y2="1424" x1="288" />
            <wire x2="336" y1="1424" y2="1424" x1="288" />
            <wire x2="4720" y1="736" y2="736" x1="288" />
            <wire x2="4736" y1="736" y2="736" x1="4720" />
            <wire x2="4736" y1="256" y2="256" x1="4576" />
            <wire x2="4736" y1="256" y2="736" x1="4736" />
            <wire x2="4720" y1="480" y2="480" x1="4640" />
            <wire x2="4720" y1="480" y2="736" x1="4720" />
        </branch>
        <iomarker fontsize="28" x="256" y="544" name="clk" orien="R180" />
        <instance x="672" y="2000" name="XLXI_30" orien="R180" />
        <branch name="XLXN_44">
            <wire x2="336" y1="2032" y2="2256" x1="336" />
            <wire x2="368" y1="2256" y2="2256" x1="336" />
            <wire x2="432" y1="2032" y2="2032" x1="336" />
            <wire x2="448" y1="2032" y2="2032" x1="432" />
        </branch>
        <instance x="1328" y="2000" name="XLXI_31" orien="R180" />
        <branch name="XLXN_45">
            <wire x2="1488" y1="2032" y2="2032" x1="1328" />
            <wire x2="1488" y1="2032" y2="2256" x1="1488" />
            <wire x2="1488" y1="2256" y2="2384" x1="1488" />
            <wire x2="1488" y1="2384" y2="2400" x1="1488" />
            <wire x2="1696" y1="2400" y2="2400" x1="1488" />
            <wire x2="1488" y1="2256" y2="2256" x1="1392" />
        </branch>
        <instance x="1696" y="2528" name="XLXI_32" orien="R0" />
        <instance x="2016" y="2016" name="XLXI_33" orien="R180" />
        <branch name="XLXN_46">
            <wire x2="1680" y1="2048" y2="2272" x1="1680" />
            <wire x2="1696" y1="2272" y2="2272" x1="1680" />
            <wire x2="1792" y1="2048" y2="2048" x1="1680" />
        </branch>
        <branch name="XLXN_47">
            <wire x2="2176" y1="2048" y2="2048" x1="2016" />
            <wire x2="2176" y1="2048" y2="2272" x1="2176" />
            <wire x2="2176" y1="2272" y2="2400" x1="2176" />
            <wire x2="2368" y1="2400" y2="2400" x1="2176" />
            <wire x2="2176" y1="2272" y2="2272" x1="2080" />
        </branch>
        <instance x="2368" y="2528" name="XLXI_34" orien="R0" />
        <instance x="2688" y="2016" name="XLXI_35" orien="R180" />
        <branch name="XLXN_48">
            <wire x2="2352" y1="2048" y2="2272" x1="2352" />
            <wire x2="2368" y1="2272" y2="2272" x1="2352" />
            <wire x2="2464" y1="2048" y2="2048" x1="2352" />
        </branch>
        <branch name="XLXN_50">
            <wire x2="2848" y1="2048" y2="2048" x1="2688" />
            <wire x2="2848" y1="2048" y2="2272" x1="2848" />
            <wire x2="2848" y1="2272" y2="2400" x1="2848" />
            <wire x2="2848" y1="2272" y2="2272" x1="2752" />
            <wire x2="2832" y1="2400" y2="2416" x1="2832" />
            <wire x2="2960" y1="2416" y2="2416" x1="2832" />
            <wire x2="2848" y1="2400" y2="2400" x1="2832" />
        </branch>
        <instance x="2960" y="2544" name="XLXI_36" orien="R0" />
        <instance x="3280" y="2032" name="XLXI_37" orien="R180" />
        <branch name="XLXN_51">
            <wire x2="2944" y1="2064" y2="2288" x1="2944" />
            <wire x2="2960" y1="2288" y2="2288" x1="2944" />
            <wire x2="3056" y1="2064" y2="2064" x1="2944" />
        </branch>
        <branch name="clk190">
            <wire x2="3440" y1="2064" y2="2064" x1="3280" />
            <wire x2="3440" y1="2064" y2="2288" x1="3440" />
            <wire x2="3440" y1="2288" y2="2432" x1="3440" />
            <wire x2="3520" y1="2432" y2="2432" x1="3440" />
            <wire x2="3664" y1="2432" y2="2432" x1="3520" />
            <wire x2="3520" y1="2432" y2="3616" x1="3520" />
            <wire x2="4400" y1="3616" y2="3616" x1="3520" />
            <wire x2="3440" y1="2288" y2="2288" x1="3344" />
        </branch>
        <instance x="3968" y="2048" name="XLXI_38" orien="R180" />
        <instance x="4320" y="2576" name="XLXI_39" orien="R0" />
        <instance x="4640" y="2064" name="XLXI_40" orien="R180" />
        <branch name="XLXN_53">
            <wire x2="4304" y1="2096" y2="2320" x1="4304" />
            <wire x2="4320" y1="2320" y2="2320" x1="4304" />
            <wire x2="4416" y1="2096" y2="2096" x1="4304" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="256" y1="2928" y2="3376" x1="256" />
            <wire x2="368" y1="3376" y2="3376" x1="256" />
            <wire x2="4800" y1="2928" y2="2928" x1="256" />
            <wire x2="4800" y1="2096" y2="2096" x1="4640" />
            <wire x2="4800" y1="2096" y2="2320" x1="4800" />
            <wire x2="4800" y1="2320" y2="2928" x1="4800" />
            <wire x2="4800" y1="2320" y2="2320" x1="4704" />
        </branch>
        <branch name="XLXN_55">
            <wire x2="4144" y1="2080" y2="2080" x1="3968" />
            <wire x2="4144" y1="2080" y2="2304" x1="4144" />
            <wire x2="4144" y1="2304" y2="2448" x1="4144" />
            <wire x2="4320" y1="2448" y2="2448" x1="4144" />
            <wire x2="4144" y1="2304" y2="2304" x1="4048" />
        </branch>
        <instance x="368" y="2512" name="XLXI_41" orien="R0" />
        <branch name="XLXN_56">
            <wire x2="1088" y1="2032" y2="2032" x1="992" />
            <wire x2="1104" y1="2032" y2="2032" x1="1088" />
            <wire x2="992" y1="2032" y2="2256" x1="992" />
            <wire x2="1008" y1="2256" y2="2256" x1="992" />
        </branch>
        <branch name="XLXN_57">
            <wire x2="768" y1="2032" y2="2032" x1="672" />
            <wire x2="768" y1="2032" y2="2256" x1="768" />
            <wire x2="768" y1="2256" y2="2384" x1="768" />
            <wire x2="1008" y1="2384" y2="2384" x1="768" />
            <wire x2="768" y1="2256" y2="2256" x1="752" />
        </branch>
        <instance x="1008" y="2512" name="XLXI_42" orien="R0" />
        <instance x="3664" y="2560" name="XLXI_43" orien="R0" />
        <branch name="XLXN_58">
            <wire x2="3648" y1="2080" y2="2304" x1="3648" />
            <wire x2="3664" y1="2304" y2="2304" x1="3648" />
            <wire x2="3744" y1="2080" y2="2080" x1="3648" />
        </branch>
        <instance x="672" y="2992" name="XLXI_44" orien="R180" />
        <branch name="XLXN_60">
            <wire x2="336" y1="3024" y2="3248" x1="336" />
            <wire x2="368" y1="3248" y2="3248" x1="336" />
            <wire x2="448" y1="3024" y2="3024" x1="336" />
        </branch>
        <instance x="1328" y="2992" name="XLXI_45" orien="R180" />
        <branch name="XLXN_61">
            <wire x2="1488" y1="3024" y2="3024" x1="1328" />
            <wire x2="1488" y1="3024" y2="3248" x1="1488" />
            <wire x2="1488" y1="3248" y2="3392" x1="1488" />
            <wire x2="1696" y1="3392" y2="3392" x1="1488" />
            <wire x2="1488" y1="3248" y2="3248" x1="1392" />
        </branch>
        <instance x="1696" y="3520" name="XLXI_46" orien="R0" />
        <instance x="2016" y="3008" name="XLXI_47" orien="R180" />
        <branch name="XLXN_62">
            <wire x2="1680" y1="3040" y2="3264" x1="1680" />
            <wire x2="1696" y1="3264" y2="3264" x1="1680" />
            <wire x2="1792" y1="3040" y2="3040" x1="1680" />
        </branch>
        <branch name="XLXN_63">
            <wire x2="2176" y1="3040" y2="3040" x1="2016" />
            <wire x2="2176" y1="3040" y2="3264" x1="2176" />
            <wire x2="2176" y1="3264" y2="3392" x1="2176" />
            <wire x2="2368" y1="3392" y2="3392" x1="2176" />
            <wire x2="2176" y1="3264" y2="3264" x1="2080" />
        </branch>
        <instance x="2368" y="3520" name="XLXI_48" orien="R0" />
        <instance x="2688" y="3008" name="XLXI_49" orien="R180" />
        <branch name="XLXN_64">
            <wire x2="2352" y1="3040" y2="3264" x1="2352" />
            <wire x2="2368" y1="3264" y2="3264" x1="2352" />
            <wire x2="2464" y1="3040" y2="3040" x1="2352" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="2848" y1="3040" y2="3040" x1="2688" />
            <wire x2="2848" y1="3040" y2="3264" x1="2848" />
            <wire x2="2848" y1="3264" y2="3392" x1="2848" />
            <wire x2="2848" y1="3264" y2="3264" x1="2752" />
            <wire x2="2832" y1="3392" y2="3408" x1="2832" />
            <wire x2="2960" y1="3408" y2="3408" x1="2832" />
            <wire x2="2848" y1="3392" y2="3392" x1="2832" />
        </branch>
        <instance x="2960" y="3536" name="XLXI_50" orien="R0" />
        <instance x="3280" y="3024" name="XLXI_51" orien="R180" />
        <branch name="XLXN_67">
            <wire x2="2944" y1="3056" y2="3280" x1="2944" />
            <wire x2="2960" y1="3280" y2="3280" x1="2944" />
            <wire x2="3056" y1="3056" y2="3056" x1="2944" />
        </branch>
        <branch name="XLXN_68">
            <wire x2="3440" y1="3056" y2="3056" x1="3280" />
            <wire x2="3440" y1="3056" y2="3280" x1="3440" />
            <wire x2="3440" y1="3280" y2="3424" x1="3440" />
            <wire x2="3664" y1="3424" y2="3424" x1="3440" />
            <wire x2="3440" y1="3280" y2="3280" x1="3344" />
        </branch>
        <instance x="3968" y="3040" name="XLXI_52" orien="R180" />
        <instance x="368" y="3504" name="XLXI_55" orien="R0" />
        <branch name="XLXN_72">
            <wire x2="992" y1="3024" y2="3248" x1="992" />
            <wire x2="1008" y1="3248" y2="3248" x1="992" />
            <wire x2="1104" y1="3024" y2="3024" x1="992" />
        </branch>
        <branch name="XLXN_73">
            <wire x2="768" y1="3024" y2="3024" x1="672" />
            <wire x2="768" y1="3024" y2="3248" x1="768" />
            <wire x2="768" y1="3248" y2="3376" x1="768" />
            <wire x2="1008" y1="3376" y2="3376" x1="768" />
            <wire x2="768" y1="3248" y2="3248" x1="752" />
        </branch>
        <instance x="1008" y="3504" name="XLXI_56" orien="R0" />
        <instance x="3664" y="3552" name="XLXI_57" orien="R0" />
        <branch name="XLXN_74">
            <wire x2="3648" y1="3072" y2="3296" x1="3648" />
            <wire x2="3664" y1="3296" y2="3296" x1="3648" />
            <wire x2="3744" y1="3072" y2="3072" x1="3648" />
        </branch>
        <branch name="clksec">
            <wire x2="4064" y1="3072" y2="3072" x1="3968" />
            <wire x2="4064" y1="3072" y2="3296" x1="4064" />
            <wire x2="4416" y1="3296" y2="3296" x1="4064" />
            <wire x2="4064" y1="3296" y2="3296" x1="4048" />
        </branch>
        <iomarker fontsize="28" x="4416" y="3296" name="clksec" orien="R0" />
        <iomarker fontsize="28" x="4400" y="3616" name="clk190" orien="R0" />
    </sheet>
</drawing>