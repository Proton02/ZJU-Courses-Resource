<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="s(1:0)" />
        <signal name="s(1)" />
        <signal name="s(0)" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_21" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_27" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="o(3:0)" />
        <signal name="o(3)" />
        <signal name="o(2)" />
        <signal name="o(1)" />
        <signal name="o(0)" />
        <signal name="I0(3:0)" />
        <signal name="I2(3:0)" />
        <signal name="I3(3:0)" />
        <signal name="I1(3:0)" />
        <signal name="I0(1)" />
        <signal name="I0(2)" />
        <signal name="I0(3)" />
        <signal name="I1(0)" />
        <signal name="I1(1)" />
        <signal name="I1(2)" />
        <signal name="I1(3)" />
        <signal name="I2(0)" />
        <signal name="I3(0)" />
        <signal name="I2(1)" />
        <signal name="I3(1)" />
        <signal name="I2(2)" />
        <signal name="I3(2)" />
        <signal name="I2(3)" />
        <signal name="I3(3)" />
        <signal name="I0(0)" />
        <port polarity="Input" name="s(1:0)" />
        <port polarity="Output" name="o(3:0)" />
        <port polarity="Input" name="I0(3:0)" />
        <port polarity="Input" name="I2(3:0)" />
        <port polarity="Input" name="I3(3:0)" />
        <port polarity="Input" name="I1(3:0)" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
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
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="s(0)" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="s(1)" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="s(1)" name="I0" />
            <blockpin signalname="s(0)" name="I1" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="s(1)" name="I" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="s(0)" name="I" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="I0(0)" name="I0" />
            <blockpin signalname="XLXN_21" name="I1" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="I1(0)" name="I0" />
            <blockpin signalname="XLXN_23" name="I1" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="I2(0)" name="I0" />
            <blockpin signalname="XLXN_24" name="I1" />
            <blockpin signalname="XLXN_34" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="I3(0)" name="I0" />
            <blockpin signalname="XLXN_27" name="I1" />
            <blockpin signalname="XLXN_35" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_11">
            <blockpin signalname="I0(1)" name="I0" />
            <blockpin signalname="XLXN_21" name="I1" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_12">
            <blockpin signalname="I1(1)" name="I0" />
            <blockpin signalname="XLXN_23" name="I1" />
            <blockpin signalname="XLXN_38" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_13">
            <blockpin signalname="I2(1)" name="I0" />
            <blockpin signalname="XLXN_24" name="I1" />
            <blockpin signalname="XLXN_39" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_14">
            <blockpin signalname="I3(1)" name="I0" />
            <blockpin signalname="XLXN_27" name="I1" />
            <blockpin signalname="XLXN_40" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_15">
            <blockpin signalname="I0(2)" name="I0" />
            <blockpin signalname="XLXN_21" name="I1" />
            <blockpin signalname="XLXN_41" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_16">
            <blockpin signalname="I1(2)" name="I0" />
            <blockpin signalname="XLXN_23" name="I1" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_17">
            <blockpin signalname="I2(2)" name="I0" />
            <blockpin signalname="XLXN_24" name="I1" />
            <blockpin signalname="XLXN_43" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_18">
            <blockpin signalname="I3(2)" name="I0" />
            <blockpin signalname="XLXN_27" name="I1" />
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_19">
            <blockpin signalname="I0(3)" name="I0" />
            <blockpin signalname="XLXN_21" name="I1" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_20">
            <blockpin signalname="I1(3)" name="I0" />
            <blockpin signalname="XLXN_23" name="I1" />
            <blockpin signalname="XLXN_46" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_21">
            <blockpin signalname="I2(3)" name="I0" />
            <blockpin signalname="XLXN_24" name="I1" />
            <blockpin signalname="XLXN_47" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_22">
            <blockpin signalname="I3(3)" name="I0" />
            <blockpin signalname="XLXN_27" name="I1" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_23">
            <blockpin signalname="XLXN_35" name="I0" />
            <blockpin signalname="XLXN_34" name="I1" />
            <blockpin signalname="XLXN_33" name="I2" />
            <blockpin signalname="XLXN_32" name="I3" />
            <blockpin signalname="o(0)" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_24">
            <blockpin signalname="XLXN_40" name="I0" />
            <blockpin signalname="XLXN_39" name="I1" />
            <blockpin signalname="XLXN_38" name="I2" />
            <blockpin signalname="XLXN_37" name="I3" />
            <blockpin signalname="o(1)" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_25">
            <blockpin signalname="XLXN_44" name="I0" />
            <blockpin signalname="XLXN_43" name="I1" />
            <blockpin signalname="XLXN_42" name="I2" />
            <blockpin signalname="XLXN_41" name="I3" />
            <blockpin signalname="o(2)" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_26">
            <blockpin signalname="XLXN_48" name="I0" />
            <blockpin signalname="XLXN_47" name="I1" />
            <blockpin signalname="XLXN_46" name="I2" />
            <blockpin signalname="XLXN_45" name="I3" />
            <blockpin signalname="o(3)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="1216" y="432" name="XLXI_1" orien="R0" />
        <instance x="672" y="336" name="XLXI_5" orien="R0" />
        <instance x="672" y="448" name="XLXI_6" orien="R0" />
        <branch name="s(1:0)">
            <wire x2="240" y1="384" y2="384" x1="192" />
            <wire x2="240" y1="384" y2="448" x1="240" />
            <wire x2="240" y1="448" y2="528" x1="240" />
            <wire x2="240" y1="224" y2="304" x1="240" />
            <wire x2="240" y1="304" y2="384" x1="240" />
        </branch>
        <iomarker fontsize="28" x="192" y="384" name="s(1:0)" orien="R180" />
        <bustap x2="336" y1="304" y2="304" x1="240" />
        <branch name="s(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="376" y="304" type="branch" />
            <wire x2="448" y1="304" y2="304" x1="336" />
            <wire x2="672" y1="304" y2="304" x1="448" />
            <wire x2="448" y1="304" y2="768" x1="448" />
            <wire x2="448" y1="768" y2="976" x1="448" />
            <wire x2="1216" y1="976" y2="976" x1="448" />
            <wire x2="1216" y1="768" y2="768" x1="448" />
        </branch>
        <bustap x2="336" y1="448" y2="448" x1="240" />
        <branch name="s(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="448" type="branch" />
            <wire x2="368" y1="448" y2="448" x1="336" />
            <wire x2="400" y1="448" y2="448" x1="368" />
            <wire x2="400" y1="416" y2="448" x1="400" />
            <wire x2="576" y1="416" y2="416" x1="400" />
            <wire x2="672" y1="416" y2="416" x1="576" />
            <wire x2="576" y1="416" y2="576" x1="576" />
            <wire x2="576" y1="576" y2="912" x1="576" />
            <wire x2="1216" y1="912" y2="912" x1="576" />
            <wire x2="1216" y1="576" y2="576" x1="576" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1056" y1="416" y2="416" x1="896" />
            <wire x2="1056" y1="416" y2="704" x1="1056" />
            <wire x2="1216" y1="704" y2="704" x1="1056" />
            <wire x2="1056" y1="368" y2="416" x1="1056" />
            <wire x2="1216" y1="368" y2="368" x1="1056" />
        </branch>
        <instance x="1216" y="640" name="XLXI_2" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="1136" y1="304" y2="304" x1="896" />
            <wire x2="1216" y1="304" y2="304" x1="1136" />
            <wire x2="1136" y1="304" y2="512" x1="1136" />
            <wire x2="1216" y1="512" y2="512" x1="1136" />
        </branch>
        <instance x="1216" y="832" name="XLXI_3" orien="R0" />
        <instance x="1216" y="1040" name="XLXI_4" orien="R0" />
        <branch name="XLXN_21">
            <wire x2="1920" y1="336" y2="336" x1="1472" />
            <wire x2="2832" y1="336" y2="336" x1="1920" />
            <wire x2="1920" y1="336" y2="1344" x1="1920" />
            <wire x2="2848" y1="1344" y2="1344" x1="1920" />
            <wire x2="1920" y1="1344" y2="2320" x1="1920" />
            <wire x2="2864" y1="2320" y2="2320" x1="1920" />
            <wire x2="1920" y1="2320" y2="3328" x1="1920" />
            <wire x2="2864" y1="3328" y2="3328" x1="1920" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="1792" y1="544" y2="544" x1="1472" />
            <wire x2="2832" y1="544" y2="544" x1="1792" />
            <wire x2="1792" y1="544" y2="1552" x1="1792" />
            <wire x2="2848" y1="1552" y2="1552" x1="1792" />
            <wire x2="1792" y1="1552" y2="2528" x1="1792" />
            <wire x2="2864" y1="2528" y2="2528" x1="1792" />
            <wire x2="1792" y1="2528" y2="3536" x1="1792" />
            <wire x2="2864" y1="3536" y2="3536" x1="1792" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1680" y1="736" y2="736" x1="1472" />
            <wire x2="2832" y1="736" y2="736" x1="1680" />
            <wire x2="1680" y1="736" y2="1744" x1="1680" />
            <wire x2="2848" y1="1744" y2="1744" x1="1680" />
            <wire x2="1680" y1="1744" y2="2720" x1="1680" />
            <wire x2="2864" y1="2720" y2="2720" x1="1680" />
            <wire x2="1680" y1="2720" y2="3728" x1="1680" />
            <wire x2="2864" y1="3728" y2="3728" x1="1680" />
        </branch>
        <instance x="2832" y="464" name="XLXI_7" orien="R0" />
        <instance x="2832" y="672" name="XLXI_8" orien="R0" />
        <instance x="2832" y="864" name="XLXI_9" orien="R0" />
        <instance x="2848" y="1072" name="XLXI_10" orien="R0" />
        <branch name="XLXN_27">
            <wire x2="1536" y1="944" y2="944" x1="1472" />
            <wire x2="2848" y1="944" y2="944" x1="1536" />
            <wire x2="1536" y1="944" y2="1952" x1="1536" />
            <wire x2="2864" y1="1952" y2="1952" x1="1536" />
            <wire x2="1536" y1="1952" y2="2928" x1="1536" />
            <wire x2="2880" y1="2928" y2="2928" x1="1536" />
            <wire x2="1536" y1="2928" y2="3936" x1="1536" />
            <wire x2="2880" y1="3936" y2="3936" x1="1536" />
        </branch>
        <instance x="2848" y="1472" name="XLXI_11" orien="R0" />
        <instance x="2848" y="1680" name="XLXI_12" orien="R0" />
        <instance x="2848" y="1872" name="XLXI_13" orien="R0" />
        <instance x="2864" y="2080" name="XLXI_14" orien="R0" />
        <instance x="2864" y="2448" name="XLXI_15" orien="R0" />
        <instance x="2864" y="2656" name="XLXI_16" orien="R0" />
        <instance x="2864" y="2848" name="XLXI_17" orien="R0" />
        <instance x="2880" y="3056" name="XLXI_18" orien="R0" />
        <instance x="2864" y="3456" name="XLXI_19" orien="R0" />
        <instance x="2864" y="3664" name="XLXI_20" orien="R0" />
        <instance x="2864" y="3856" name="XLXI_21" orien="R0" />
        <instance x="2880" y="4064" name="XLXI_22" orien="R0" />
        <instance x="3536" y="816" name="XLXI_23" orien="R0" />
        <instance x="3552" y="1856" name="XLXI_24" orien="R0" />
        <instance x="3552" y="2800" name="XLXI_25" orien="R0" />
        <instance x="3472" y="3824" name="XLXI_26" orien="R0" />
        <branch name="XLXN_32">
            <wire x2="3536" y1="368" y2="368" x1="3088" />
            <wire x2="3536" y1="368" y2="560" x1="3536" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="3312" y1="576" y2="576" x1="3088" />
            <wire x2="3312" y1="576" y2="624" x1="3312" />
            <wire x2="3536" y1="624" y2="624" x1="3312" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="3312" y1="768" y2="768" x1="3088" />
            <wire x2="3312" y1="688" y2="768" x1="3312" />
            <wire x2="3536" y1="688" y2="688" x1="3312" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="3536" y1="976" y2="976" x1="3104" />
            <wire x2="3536" y1="752" y2="976" x1="3536" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="3552" y1="1376" y2="1376" x1="3104" />
            <wire x2="3552" y1="1376" y2="1600" x1="3552" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="3328" y1="1584" y2="1584" x1="3104" />
            <wire x2="3328" y1="1584" y2="1664" x1="3328" />
            <wire x2="3552" y1="1664" y2="1664" x1="3328" />
        </branch>
        <branch name="XLXN_39">
            <wire x2="3328" y1="1776" y2="1776" x1="3104" />
            <wire x2="3328" y1="1728" y2="1776" x1="3328" />
            <wire x2="3552" y1="1728" y2="1728" x1="3328" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="3552" y1="1984" y2="1984" x1="3120" />
            <wire x2="3552" y1="1792" y2="1984" x1="3552" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="3552" y1="2352" y2="2352" x1="3120" />
            <wire x2="3552" y1="2352" y2="2544" x1="3552" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="3328" y1="2560" y2="2560" x1="3120" />
            <wire x2="3328" y1="2560" y2="2608" x1="3328" />
            <wire x2="3552" y1="2608" y2="2608" x1="3328" />
        </branch>
        <branch name="XLXN_43">
            <wire x2="3328" y1="2752" y2="2752" x1="3120" />
            <wire x2="3328" y1="2672" y2="2752" x1="3328" />
            <wire x2="3552" y1="2672" y2="2672" x1="3328" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="3552" y1="2960" y2="2960" x1="3136" />
            <wire x2="3552" y1="2736" y2="2960" x1="3552" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="3472" y1="3360" y2="3360" x1="3120" />
            <wire x2="3472" y1="3360" y2="3568" x1="3472" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="3296" y1="3568" y2="3568" x1="3120" />
            <wire x2="3296" y1="3568" y2="3632" x1="3296" />
            <wire x2="3472" y1="3632" y2="3632" x1="3296" />
        </branch>
        <branch name="XLXN_47">
            <wire x2="3296" y1="3760" y2="3760" x1="3120" />
            <wire x2="3296" y1="3696" y2="3760" x1="3296" />
            <wire x2="3472" y1="3696" y2="3696" x1="3296" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="3472" y1="3968" y2="3968" x1="3136" />
            <wire x2="3472" y1="3760" y2="3968" x1="3472" />
        </branch>
        <branch name="o(3:0)">
            <wire x2="4208" y1="656" y2="672" x1="4208" />
            <wire x2="4208" y1="672" y2="1696" x1="4208" />
            <wire x2="4208" y1="1696" y2="2016" x1="4208" />
            <wire x2="4464" y1="2016" y2="2016" x1="4208" />
            <wire x2="4208" y1="2016" y2="2656" x1="4208" />
            <wire x2="4208" y1="2656" y2="3648" x1="4208" />
            <wire x2="4208" y1="3648" y2="3664" x1="4208" />
        </branch>
        <iomarker fontsize="28" x="4464" y="2016" name="o(3:0)" orien="R0" />
        <bustap x2="4112" y1="3648" y2="3648" x1="4208" />
        <branch name="o(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4072" y="3648" type="branch" />
            <wire x2="4032" y1="3664" y2="3664" x1="3728" />
            <wire x2="4032" y1="3648" y2="3664" x1="4032" />
            <wire x2="4112" y1="3648" y2="3648" x1="4032" />
        </branch>
        <bustap x2="4112" y1="2656" y2="2656" x1="4208" />
        <branch name="o(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4080" y="2656" type="branch" />
            <wire x2="4048" y1="2640" y2="2640" x1="3808" />
            <wire x2="4048" y1="2640" y2="2656" x1="4048" />
            <wire x2="4080" y1="2656" y2="2656" x1="4048" />
            <wire x2="4112" y1="2656" y2="2656" x1="4080" />
        </branch>
        <bustap x2="4112" y1="1696" y2="1696" x1="4208" />
        <bustap x2="4112" y1="672" y2="672" x1="4208" />
        <branch name="o(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4096" y="672" type="branch" />
            <wire x2="4080" y1="656" y2="656" x1="3792" />
            <wire x2="4080" y1="656" y2="672" x1="4080" />
            <wire x2="4096" y1="672" y2="672" x1="4080" />
            <wire x2="4112" y1="672" y2="672" x1="4096" />
        </branch>
        <branch name="o(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4064" y="1696" type="branch" />
            <wire x2="4064" y1="1696" y2="1696" x1="3808" />
            <wire x2="4112" y1="1696" y2="1696" x1="4064" />
        </branch>
        <iomarker fontsize="28" x="416" y="2608" name="I1(3:0)" orien="R180" />
        <branch name="I3(3:0)">
            <wire x2="2256" y1="3008" y2="3008" x1="416" />
            <wire x2="2320" y1="3008" y2="3008" x1="2256" />
            <wire x2="2320" y1="3008" y2="3040" x1="2320" />
            <wire x2="2256" y1="3008" y2="3984" x1="2256" />
            <wire x2="2256" y1="3984" y2="4000" x1="2256" />
            <wire x2="2256" y1="1008" y2="1024" x1="2256" />
            <wire x2="2256" y1="1024" y2="2032" x1="2256" />
            <wire x2="2256" y1="2032" y2="3008" x1="2256" />
            <wire x2="2304" y1="2032" y2="2032" x1="2256" />
            <wire x2="2304" y1="2032" y2="2064" x1="2304" />
            <wire x2="2304" y1="1984" y2="2032" x1="2304" />
            <wire x2="2320" y1="2976" y2="3008" x1="2320" />
        </branch>
        <iomarker fontsize="28" x="416" y="3008" name="I3(3:0)" orien="R180" />
        <iomarker fontsize="28" x="416" y="2800" name="I2(3:0)" orien="R180" />
        <branch name="I2(3:0)">
            <wire x2="2176" y1="2800" y2="2800" x1="416" />
            <wire x2="2176" y1="2800" y2="3792" x1="2176" />
            <wire x2="2288" y1="3792" y2="3792" x1="2176" />
            <wire x2="2288" y1="3792" y2="3824" x1="2288" />
            <wire x2="2320" y1="2800" y2="2800" x1="2176" />
            <wire x2="2320" y1="2800" y2="2848" x1="2320" />
            <wire x2="2176" y1="800" y2="816" x1="2176" />
            <wire x2="2176" y1="816" y2="1824" x1="2176" />
            <wire x2="2176" y1="1824" y2="2800" x1="2176" />
            <wire x2="2304" y1="1824" y2="1824" x1="2176" />
            <wire x2="2304" y1="1824" y2="1872" x1="2304" />
            <wire x2="2288" y1="3760" y2="3792" x1="2288" />
            <wire x2="2304" y1="1776" y2="1824" x1="2304" />
            <wire x2="2320" y1="2752" y2="2800" x1="2320" />
        </branch>
        <branch name="I1(3:0)">
            <wire x2="2096" y1="2608" y2="2608" x1="416" />
            <wire x2="2096" y1="2608" y2="3616" x1="2096" />
            <wire x2="2288" y1="3616" y2="3616" x1="2096" />
            <wire x2="2288" y1="3616" y2="3664" x1="2288" />
            <wire x2="2320" y1="2608" y2="2608" x1="2096" />
            <wire x2="2320" y1="2608" y2="2656" x1="2320" />
            <wire x2="2096" y1="608" y2="624" x1="2096" />
            <wire x2="2096" y1="624" y2="1632" x1="2096" />
            <wire x2="2096" y1="1632" y2="2608" x1="2096" />
            <wire x2="2304" y1="1632" y2="1632" x1="2096" />
            <wire x2="2304" y1="1632" y2="1680" x1="2304" />
            <wire x2="2288" y1="3568" y2="3616" x1="2288" />
            <wire x2="2304" y1="1584" y2="1632" x1="2304" />
            <wire x2="2320" y1="2560" y2="2608" x1="2320" />
        </branch>
        <bustap x2="2416" y1="1408" y2="1408" x1="2320" />
        <branch name="I0(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2440" y="1408" type="branch" />
            <wire x2="2848" y1="1408" y2="1408" x1="2416" />
        </branch>
        <bustap x2="2416" y1="2400" y2="2400" x1="2320" />
        <branch name="I0(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2440" y="2400" type="branch" />
            <wire x2="2608" y1="2400" y2="2400" x1="2416" />
            <wire x2="2864" y1="2384" y2="2384" x1="2608" />
            <wire x2="2608" y1="2384" y2="2400" x1="2608" />
        </branch>
        <bustap x2="2384" y1="3408" y2="3408" x1="2288" />
        <branch name="I0(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2424" y="3408" type="branch" />
            <wire x2="2608" y1="3408" y2="3408" x1="2384" />
            <wire x2="2864" y1="3392" y2="3392" x1="2608" />
            <wire x2="2608" y1="3392" y2="3408" x1="2608" />
        </branch>
        <bustap x2="2192" y1="624" y2="624" x1="2096" />
        <branch name="I1(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2216" y="624" type="branch" />
            <wire x2="2240" y1="624" y2="624" x1="2192" />
            <wire x2="2832" y1="608" y2="608" x1="2240" />
            <wire x2="2240" y1="608" y2="624" x1="2240" />
        </branch>
        <bustap x2="2400" y1="1632" y2="1632" x1="2304" />
        <branch name="I1(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2456" y="1632" type="branch" />
            <wire x2="2512" y1="1632" y2="1632" x1="2400" />
            <wire x2="2848" y1="1616" y2="1616" x1="2512" />
            <wire x2="2512" y1="1616" y2="1632" x1="2512" />
        </branch>
        <bustap x2="2416" y1="2608" y2="2608" x1="2320" />
        <branch name="I1(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2448" y="2608" type="branch" />
            <wire x2="2448" y1="2608" y2="2608" x1="2416" />
            <wire x2="2480" y1="2608" y2="2608" x1="2448" />
            <wire x2="2864" y1="2592" y2="2592" x1="2480" />
            <wire x2="2480" y1="2592" y2="2608" x1="2480" />
        </branch>
        <bustap x2="2384" y1="3616" y2="3616" x1="2288" />
        <branch name="I1(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2440" y="3616" type="branch" />
            <wire x2="2496" y1="3616" y2="3616" x1="2384" />
            <wire x2="2864" y1="3600" y2="3600" x1="2496" />
            <wire x2="2496" y1="3600" y2="3616" x1="2496" />
        </branch>
        <bustap x2="2272" y1="816" y2="816" x1="2176" />
        <branch name="I2(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2304" y="816" type="branch" />
            <wire x2="2304" y1="816" y2="816" x1="2272" />
            <wire x2="2336" y1="816" y2="816" x1="2304" />
            <wire x2="2832" y1="800" y2="800" x1="2336" />
            <wire x2="2336" y1="800" y2="816" x1="2336" />
        </branch>
        <bustap x2="2352" y1="1024" y2="1024" x1="2256" />
        <branch name="I3(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="1024" type="branch" />
            <wire x2="2384" y1="1024" y2="1024" x1="2352" />
            <wire x2="2416" y1="1024" y2="1024" x1="2384" />
            <wire x2="2848" y1="1008" y2="1008" x1="2416" />
            <wire x2="2416" y1="1008" y2="1024" x1="2416" />
        </branch>
        <bustap x2="2400" y1="1824" y2="1824" x1="2304" />
        <branch name="I2(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2424" y="1824" type="branch" />
            <wire x2="2448" y1="1824" y2="1824" x1="2400" />
            <wire x2="2848" y1="1808" y2="1808" x1="2448" />
            <wire x2="2448" y1="1808" y2="1824" x1="2448" />
        </branch>
        <bustap x2="2400" y1="2032" y2="2032" x1="2304" />
        <branch name="I3(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2432" y="2032" type="branch" />
            <wire x2="2432" y1="2032" y2="2032" x1="2400" />
            <wire x2="2464" y1="2032" y2="2032" x1="2432" />
            <wire x2="2864" y1="2016" y2="2016" x1="2464" />
            <wire x2="2464" y1="2016" y2="2032" x1="2464" />
        </branch>
        <bustap x2="2416" y1="2800" y2="2800" x1="2320" />
        <branch name="I2(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2456" y="2800" type="branch" />
            <wire x2="2496" y1="2800" y2="2800" x1="2416" />
            <wire x2="2864" y1="2784" y2="2784" x1="2496" />
            <wire x2="2496" y1="2784" y2="2800" x1="2496" />
        </branch>
        <bustap x2="2416" y1="3008" y2="3008" x1="2320" />
        <branch name="I3(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2432" y="3008" type="branch" />
            <wire x2="2432" y1="3008" y2="3008" x1="2416" />
            <wire x2="2448" y1="3008" y2="3008" x1="2432" />
            <wire x2="2880" y1="2992" y2="2992" x1="2448" />
            <wire x2="2448" y1="2992" y2="3008" x1="2448" />
        </branch>
        <bustap x2="2384" y1="3792" y2="3792" x1="2288" />
        <bustap x2="2352" y1="3984" y2="3984" x1="2256" />
        <branch name="I3(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="3984" type="branch" />
            <wire x2="2384" y1="3984" y2="3984" x1="2352" />
            <wire x2="2416" y1="3984" y2="3984" x1="2384" />
            <wire x2="2416" y1="3984" y2="4000" x1="2416" />
            <wire x2="2880" y1="4000" y2="4000" x1="2416" />
        </branch>
        <branch name="I2(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2424" y="3792" type="branch" />
            <wire x2="2864" y1="3792" y2="3792" x1="2384" />
        </branch>
        <branch name="I0(3:0)">
            <wire x2="384" y1="2368" y2="2400" x1="384" />
            <wire x2="2000" y1="2400" y2="2400" x1="384" />
            <wire x2="2000" y1="2400" y2="3408" x1="2000" />
            <wire x2="2288" y1="3408" y2="3408" x1="2000" />
            <wire x2="2288" y1="3408" y2="3440" x1="2288" />
            <wire x2="2320" y1="2400" y2="2400" x1="2000" />
            <wire x2="2320" y1="2400" y2="2448" x1="2320" />
            <wire x2="2000" y1="416" y2="1408" x1="2000" />
            <wire x2="2000" y1="1408" y2="2400" x1="2000" />
            <wire x2="2320" y1="1408" y2="1408" x1="2000" />
            <wire x2="2320" y1="1408" y2="1472" x1="2320" />
            <wire x2="2128" y1="416" y2="416" x1="2000" />
            <wire x2="2128" y1="416" y2="432" x1="2128" />
            <wire x2="2128" y1="400" y2="416" x1="2128" />
            <wire x2="2288" y1="3376" y2="3408" x1="2288" />
            <wire x2="2320" y1="1360" y2="1408" x1="2320" />
            <wire x2="2320" y1="2352" y2="2400" x1="2320" />
        </branch>
        <bustap x2="2224" y1="416" y2="416" x1="2128" />
        <branch name="I0(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2264" y="416" type="branch" />
            <wire x2="2272" y1="416" y2="416" x1="2224" />
            <wire x2="2304" y1="416" y2="416" x1="2272" />
            <wire x2="2832" y1="400" y2="400" x1="2304" />
            <wire x2="2304" y1="400" y2="416" x1="2304" />
        </branch>
        <iomarker fontsize="28" x="384" y="2368" name="I0(3:0)" orien="R270" />
    </sheet>
</drawing>