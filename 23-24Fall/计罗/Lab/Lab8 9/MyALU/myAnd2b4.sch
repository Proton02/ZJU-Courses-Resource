<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A(3:0)" />
        <signal name="C(3:0)" />
        <signal name="A(3)" />
        <signal name="A(2)" />
        <signal name="A(1)" />
        <signal name="A(0)" />
        <signal name="B(3:0)" />
        <signal name="B(3)" />
        <signal name="B(2)" />
        <signal name="B(1)" />
        <signal name="B(0)" />
        <signal name="C(3)" />
        <signal name="C(2)" />
        <signal name="C(1)" />
        <signal name="C(0)" />
        <port polarity="Input" name="A(3:0)" />
        <port polarity="Output" name="C(3:0)" />
        <port polarity="Input" name="B(3:0)" />
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
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="B(0)" name="I0" />
            <blockpin signalname="A(0)" name="I1" />
            <blockpin signalname="C(0)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="B(1)" name="I0" />
            <blockpin signalname="A(1)" name="I1" />
            <blockpin signalname="C(1)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="B(2)" name="I0" />
            <blockpin signalname="A(2)" name="I1" />
            <blockpin signalname="C(2)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="B(3)" name="I0" />
            <blockpin signalname="A(3)" name="I1" />
            <blockpin signalname="C(3)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="A(3:0)">
            <wire x2="1072" y1="480" y2="480" x1="576" />
            <wire x2="1072" y1="480" y2="656" x1="1072" />
            <wire x2="1072" y1="656" y2="912" x1="1072" />
            <wire x2="1072" y1="912" y2="1152" x1="1072" />
            <wire x2="1072" y1="1152" y2="1392" x1="1072" />
            <wire x2="1072" y1="1392" y2="1488" x1="1072" />
        </branch>
        <iomarker fontsize="28" x="576" y="480" name="A(3:0)" orien="R180" />
        <branch name="C(3:0)">
            <wire x2="2176" y1="608" y2="608" x1="1840" />
            <wire x2="1840" y1="608" y2="688" x1="1840" />
            <wire x2="1840" y1="688" y2="944" x1="1840" />
            <wire x2="1840" y1="944" y2="1184" x1="1840" />
            <wire x2="1840" y1="1184" y2="1424" x1="1840" />
            <wire x2="1840" y1="1424" y2="1504" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="2176" y="608" name="C(3:0)" orien="R0" />
        <instance x="1392" y="784" name="XLXI_1" orien="R0" />
        <instance x="1392" y="1040" name="XLXI_2" orien="R0" />
        <instance x="1392" y="1280" name="XLXI_3" orien="R0" />
        <instance x="1392" y="1520" name="XLXI_4" orien="R0" />
        <bustap x2="1168" y1="1392" y2="1392" x1="1072" />
        <branch name="A(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="1392" type="branch" />
            <wire x2="1184" y1="1392" y2="1392" x1="1168" />
            <wire x2="1200" y1="1392" y2="1392" x1="1184" />
            <wire x2="1392" y1="1392" y2="1392" x1="1200" />
        </branch>
        <bustap x2="1168" y1="1152" y2="1152" x1="1072" />
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1192" y="1152" type="branch" />
            <wire x2="1200" y1="1152" y2="1152" x1="1168" />
            <wire x2="1216" y1="1152" y2="1152" x1="1200" />
            <wire x2="1392" y1="1152" y2="1152" x1="1216" />
        </branch>
        <bustap x2="1168" y1="912" y2="912" x1="1072" />
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1192" y="912" type="branch" />
            <wire x2="1200" y1="912" y2="912" x1="1168" />
            <wire x2="1216" y1="912" y2="912" x1="1200" />
            <wire x2="1376" y1="912" y2="912" x1="1216" />
            <wire x2="1392" y1="912" y2="912" x1="1376" />
        </branch>
        <bustap x2="1168" y1="656" y2="656" x1="1072" />
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1192" y="656" type="branch" />
            <wire x2="1200" y1="656" y2="656" x1="1168" />
            <wire x2="1216" y1="656" y2="656" x1="1200" />
            <wire x2="1392" y1="656" y2="656" x1="1216" />
        </branch>
        <branch name="B(3:0)">
            <wire x2="816" y1="624" y2="624" x1="384" />
            <wire x2="816" y1="624" y2="720" x1="816" />
            <wire x2="816" y1="720" y2="976" x1="816" />
            <wire x2="816" y1="976" y2="1216" x1="816" />
            <wire x2="816" y1="1216" y2="1456" x1="816" />
            <wire x2="816" y1="1456" y2="1872" x1="816" />
        </branch>
        <iomarker fontsize="28" x="384" y="624" name="B(3:0)" orien="R180" />
        <bustap x2="912" y1="1456" y2="1456" x1="816" />
        <branch name="B(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="928" y="1456" type="branch" />
            <wire x2="928" y1="1456" y2="1456" x1="912" />
            <wire x2="944" y1="1456" y2="1456" x1="928" />
            <wire x2="1376" y1="1456" y2="1456" x1="944" />
            <wire x2="1392" y1="1456" y2="1456" x1="1376" />
        </branch>
        <bustap x2="912" y1="1216" y2="1216" x1="816" />
        <branch name="B(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="928" y="1216" type="branch" />
            <wire x2="928" y1="1216" y2="1216" x1="912" />
            <wire x2="944" y1="1216" y2="1216" x1="928" />
            <wire x2="1392" y1="1216" y2="1216" x1="944" />
        </branch>
        <bustap x2="912" y1="976" y2="976" x1="816" />
        <branch name="B(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="928" y="976" type="branch" />
            <wire x2="928" y1="976" y2="976" x1="912" />
            <wire x2="944" y1="976" y2="976" x1="928" />
            <wire x2="1392" y1="976" y2="976" x1="944" />
        </branch>
        <bustap x2="912" y1="720" y2="720" x1="816" />
        <branch name="B(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="928" y="720" type="branch" />
            <wire x2="928" y1="720" y2="720" x1="912" />
            <wire x2="944" y1="720" y2="720" x1="928" />
            <wire x2="1392" y1="720" y2="720" x1="944" />
        </branch>
        <bustap x2="1744" y1="1424" y2="1424" x1="1840" />
        <branch name="C(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="1424" type="branch" />
            <wire x2="1712" y1="1424" y2="1424" x1="1648" />
            <wire x2="1728" y1="1424" y2="1424" x1="1712" />
            <wire x2="1744" y1="1424" y2="1424" x1="1728" />
        </branch>
        <bustap x2="1744" y1="1184" y2="1184" x1="1840" />
        <branch name="C(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1720" y="1184" type="branch" />
            <wire x2="1696" y1="1184" y2="1184" x1="1648" />
            <wire x2="1728" y1="1184" y2="1184" x1="1696" />
            <wire x2="1744" y1="1184" y2="1184" x1="1728" />
        </branch>
        <bustap x2="1744" y1="944" y2="944" x1="1840" />
        <branch name="C(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="944" type="branch" />
            <wire x2="1696" y1="944" y2="944" x1="1648" />
            <wire x2="1744" y1="944" y2="944" x1="1696" />
        </branch>
        <bustap x2="1744" y1="688" y2="688" x1="1840" />
        <branch name="C(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="688" type="branch" />
            <wire x2="1696" y1="688" y2="688" x1="1648" />
            <wire x2="1744" y1="688" y2="688" x1="1696" />
        </branch>
    </sheet>
</drawing>