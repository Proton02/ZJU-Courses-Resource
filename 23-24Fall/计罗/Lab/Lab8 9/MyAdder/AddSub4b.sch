<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A(3:0)" />
        <signal name="S(3:0)" />
        <signal name="A(0)" />
        <signal name="A(1)" />
        <signal name="A(2)" />
        <signal name="A(3)" />
        <signal name="B(0)" />
        <signal name="B(1)" />
        <signal name="B(2)" />
        <signal name="B(3)" />
        <signal name="S(0)" />
        <signal name="S(1)" />
        <signal name="S(2)" />
        <signal name="S(3)" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="Co" />
        <signal name="Ctrl" />
        <signal name="B(3:0)" />
        <port polarity="Input" name="A(3:0)" />
        <port polarity="Output" name="S(3:0)" />
        <port polarity="Output" name="Co" />
        <port polarity="Input" name="Ctrl" />
        <port polarity="Input" name="B(3:0)" />
        <blockdef name="AddSub1b">
            <timestamp>2023-11-7T11:20:37</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="AddSub1b" name="XLXI_2">
            <blockpin signalname="XLXN_26" name="Ci" />
            <blockpin signalname="A(3)" name="A" />
            <blockpin signalname="B(3)" name="B" />
            <blockpin signalname="Ctrl" name="Ctrl" />
            <blockpin signalname="S(3)" name="S" />
            <blockpin signalname="Co" name="Co" />
        </block>
        <block symbolname="AddSub1b" name="XLXI_3">
            <blockpin signalname="XLXN_25" name="Ci" />
            <blockpin signalname="A(2)" name="A" />
            <blockpin signalname="B(2)" name="B" />
            <blockpin signalname="Ctrl" name="Ctrl" />
            <blockpin signalname="S(2)" name="S" />
            <blockpin signalname="XLXN_26" name="Co" />
        </block>
        <block symbolname="AddSub1b" name="XLXI_4">
            <blockpin signalname="XLXN_24" name="Ci" />
            <blockpin signalname="A(1)" name="A" />
            <blockpin signalname="B(1)" name="B" />
            <blockpin signalname="Ctrl" name="Ctrl" />
            <blockpin signalname="S(1)" name="S" />
            <blockpin signalname="XLXN_25" name="Co" />
        </block>
        <block symbolname="AddSub1b" name="XLXI_5">
            <blockpin signalname="Ctrl" name="Ci" />
            <blockpin signalname="A(0)" name="A" />
            <blockpin signalname="B(0)" name="B" />
            <blockpin signalname="Ctrl" name="Ctrl" />
            <blockpin signalname="S(0)" name="S" />
            <blockpin signalname="XLXN_24" name="Co" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2240" y="1808" name="XLXI_2" orien="R0">
        </instance>
        <instance x="2240" y="1376" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2240" y="944" name="XLXI_4" orien="R0">
        </instance>
        <instance x="2240" y="464" name="XLXI_5" orien="R0">
        </instance>
        <branch name="A(3:0)">
            <wire x2="1104" y1="624" y2="736" x1="1104" />
            <wire x2="1104" y1="736" y2="816" x1="1104" />
            <wire x2="1104" y1="816" y2="896" x1="1104" />
            <wire x2="1104" y1="896" y2="976" x1="1104" />
            <wire x2="1104" y1="976" y2="1056" x1="1104" />
        </branch>
        <branch name="S(3:0)">
            <wire x2="3296" y1="832" y2="928" x1="3296" />
            <wire x2="3296" y1="928" y2="1024" x1="3296" />
            <wire x2="3296" y1="1024" y2="1120" x1="3296" />
            <wire x2="3296" y1="1120" y2="1264" x1="3296" />
            <wire x2="3296" y1="1264" y2="1344" x1="3296" />
        </branch>
        <iomarker fontsize="28" x="1104" y="624" name="A(3:0)" orien="R270" />
        <iomarker fontsize="28" x="1104" y="1424" name="B(3:0)" orien="R270" />
        <iomarker fontsize="28" x="3296" y="832" name="S(3:0)" orien="R270" />
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1208" y="736" type="branch" />
            <wire x2="1216" y1="736" y2="736" x1="1200" />
            <wire x2="1232" y1="736" y2="736" x1="1216" />
            <wire x2="2240" y1="304" y2="304" x1="1232" />
            <wire x2="1232" y1="304" y2="608" x1="1232" />
            <wire x2="1232" y1="608" y2="736" x1="1232" />
        </branch>
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1208" y="816" type="branch" />
            <wire x2="1216" y1="816" y2="816" x1="1200" />
            <wire x2="2240" y1="784" y2="784" x1="1216" />
            <wire x2="1216" y1="784" y2="816" x1="1216" />
        </branch>
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1208" y="896" type="branch" />
            <wire x2="1216" y1="896" y2="896" x1="1200" />
            <wire x2="1728" y1="896" y2="896" x1="1216" />
            <wire x2="1728" y1="896" y2="1216" x1="1728" />
            <wire x2="2240" y1="1216" y2="1216" x1="1728" />
        </branch>
        <branch name="A(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1208" y="976" type="branch" />
            <wire x2="1216" y1="976" y2="976" x1="1200" />
            <wire x2="1712" y1="976" y2="976" x1="1216" />
            <wire x2="1712" y1="976" y2="1648" x1="1712" />
            <wire x2="2240" y1="1648" y2="1648" x1="1712" />
        </branch>
        <branch name="B(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1208" y="1520" type="branch" />
            <wire x2="1216" y1="1520" y2="1520" x1="1200" />
            <wire x2="1232" y1="1520" y2="1520" x1="1216" />
            <wire x2="1696" y1="1520" y2="1520" x1="1232" />
            <wire x2="1696" y1="368" y2="1520" x1="1696" />
            <wire x2="2240" y1="368" y2="368" x1="1696" />
        </branch>
        <branch name="B(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1208" y="1584" type="branch" />
            <wire x2="1216" y1="1584" y2="1584" x1="1200" />
            <wire x2="1232" y1="1584" y2="1584" x1="1216" />
            <wire x2="1680" y1="1584" y2="1584" x1="1232" />
            <wire x2="1680" y1="848" y2="1584" x1="1680" />
            <wire x2="2240" y1="848" y2="848" x1="1680" />
        </branch>
        <branch name="B(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1208" y="1648" type="branch" />
            <wire x2="1216" y1="1648" y2="1648" x1="1200" />
            <wire x2="1232" y1="1648" y2="1648" x1="1216" />
            <wire x2="1664" y1="1648" y2="1648" x1="1232" />
            <wire x2="1664" y1="1280" y2="1648" x1="1664" />
            <wire x2="2240" y1="1280" y2="1280" x1="1664" />
        </branch>
        <branch name="B(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1208" y="1712" type="branch" />
            <wire x2="1216" y1="1712" y2="1712" x1="1200" />
            <wire x2="1232" y1="1712" y2="1712" x1="1216" />
            <wire x2="2240" y1="1712" y2="1712" x1="1232" />
        </branch>
        <bustap x2="3200" y1="928" y2="928" x1="3296" />
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3176" y="928" type="branch" />
            <wire x2="3152" y1="240" y2="240" x1="2624" />
            <wire x2="3152" y1="240" y2="928" x1="3152" />
            <wire x2="3184" y1="928" y2="928" x1="3152" />
            <wire x2="3200" y1="928" y2="928" x1="3184" />
        </branch>
        <bustap x2="3200" y1="1024" y2="1024" x1="3296" />
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3184" y="1024" type="branch" />
            <wire x2="2896" y1="720" y2="720" x1="2624" />
            <wire x2="2896" y1="720" y2="1024" x1="2896" />
            <wire x2="3168" y1="1024" y2="1024" x1="2896" />
            <wire x2="3184" y1="1024" y2="1024" x1="3168" />
            <wire x2="3200" y1="1024" y2="1024" x1="3184" />
        </branch>
        <bustap x2="3200" y1="1120" y2="1120" x1="3296" />
        <branch name="S(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3192" y="1120" type="branch" />
            <wire x2="3184" y1="1152" y2="1152" x1="2624" />
            <wire x2="3200" y1="1120" y2="1120" x1="3184" />
            <wire x2="3184" y1="1120" y2="1152" x1="3184" />
        </branch>
        <bustap x2="3200" y1="1264" y2="1264" x1="3296" />
        <branch name="S(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3184" y="1264" type="branch" />
            <wire x2="3168" y1="1584" y2="1584" x1="2624" />
            <wire x2="3184" y1="1264" y2="1264" x1="3168" />
            <wire x2="3200" y1="1264" y2="1264" x1="3184" />
            <wire x2="3168" y1="1264" y2="1584" x1="3168" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="2240" y1="720" y2="720" x1="2160" />
            <wire x2="2160" y1="720" y2="1008" x1="2160" />
            <wire x2="2704" y1="1008" y2="1008" x1="2160" />
            <wire x2="2704" y1="432" y2="432" x1="2624" />
            <wire x2="2704" y1="432" y2="1008" x1="2704" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="2240" y1="1152" y2="1152" x1="2176" />
            <wire x2="2176" y1="1152" y2="1456" x1="2176" />
            <wire x2="2688" y1="1456" y2="1456" x1="2176" />
            <wire x2="2688" y1="912" y2="912" x1="2624" />
            <wire x2="2688" y1="912" y2="1456" x1="2688" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="2240" y1="1584" y2="1584" x1="2176" />
            <wire x2="2176" y1="1584" y2="1872" x1="2176" />
            <wire x2="2672" y1="1872" y2="1872" x1="2176" />
            <wire x2="2672" y1="1344" y2="1344" x1="2624" />
            <wire x2="2672" y1="1344" y2="1872" x1="2672" />
        </branch>
        <branch name="Co">
            <wire x2="2864" y1="1776" y2="1776" x1="2624" />
        </branch>
        <iomarker fontsize="28" x="2864" y="1776" name="Co" orien="R0" />
        <branch name="Ctrl">
            <wire x2="1936" y1="160" y2="160" x1="1136" />
            <wire x2="1936" y1="160" y2="240" x1="1936" />
            <wire x2="2240" y1="240" y2="240" x1="1936" />
            <wire x2="1936" y1="240" y2="432" x1="1936" />
            <wire x2="2240" y1="432" y2="432" x1="1936" />
            <wire x2="1936" y1="432" y2="912" x1="1936" />
            <wire x2="2240" y1="912" y2="912" x1="1936" />
            <wire x2="1936" y1="912" y2="1344" x1="1936" />
            <wire x2="1936" y1="1344" y2="1776" x1="1936" />
            <wire x2="2240" y1="1776" y2="1776" x1="1936" />
            <wire x2="2240" y1="1344" y2="1344" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="1136" y="160" name="Ctrl" orien="R180" />
        <branch name="B(3:0)">
            <wire x2="1104" y1="1424" y2="1520" x1="1104" />
            <wire x2="1104" y1="1520" y2="1584" x1="1104" />
            <wire x2="1104" y1="1584" y2="1648" x1="1104" />
            <wire x2="1104" y1="1648" y2="1712" x1="1104" />
            <wire x2="1104" y1="1712" y2="1808" x1="1104" />
        </branch>
        <bustap x2="1200" y1="976" y2="976" x1="1104" />
        <bustap x2="1200" y1="896" y2="896" x1="1104" />
        <bustap x2="1200" y1="816" y2="816" x1="1104" />
        <bustap x2="1200" y1="736" y2="736" x1="1104" />
        <bustap x2="1200" y1="1712" y2="1712" x1="1104" />
        <bustap x2="1200" y1="1648" y2="1648" x1="1104" />
        <bustap x2="1200" y1="1584" y2="1584" x1="1104" />
        <bustap x2="1200" y1="1520" y2="1520" x1="1104" />
    </sheet>
</drawing>