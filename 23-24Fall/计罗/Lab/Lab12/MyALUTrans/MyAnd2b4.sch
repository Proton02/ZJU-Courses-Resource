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
        <signal name="B(3)" />
        <signal name="B(2)" />
        <signal name="B(1)" />
        <signal name="B(0)" />
        <signal name="C(3)" />
        <signal name="C(2)" />
        <signal name="C(1)" />
        <signal name="C(0)" />
        <signal name="B(3:0)" />
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
        <branch name="C(3:0)">
            <wire x2="2784" y1="848" y2="848" x1="2448" />
            <wire x2="2448" y1="848" y2="928" x1="2448" />
            <wire x2="2448" y1="928" y2="1184" x1="2448" />
            <wire x2="2448" y1="1184" y2="1424" x1="2448" />
            <wire x2="2448" y1="1424" y2="1664" x1="2448" />
            <wire x2="2448" y1="1664" y2="1744" x1="2448" />
        </branch>
        <instance x="2000" y="1024" name="XLXI_1" orien="R0" />
        <instance x="2000" y="1280" name="XLXI_2" orien="R0" />
        <instance x="2000" y="1520" name="XLXI_3" orien="R0" />
        <instance x="2000" y="1760" name="XLXI_4" orien="R0" />
        <bustap x2="1776" y1="1632" y2="1632" x1="1680" />
        <branch name="A(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="1632" type="branch" />
            <wire x2="1792" y1="1632" y2="1632" x1="1776" />
            <wire x2="2000" y1="1632" y2="1632" x1="1792" />
        </branch>
        <bustap x2="1776" y1="1392" y2="1392" x1="1680" />
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1800" y="1392" type="branch" />
            <wire x2="1808" y1="1392" y2="1392" x1="1776" />
            <wire x2="2000" y1="1392" y2="1392" x1="1808" />
        </branch>
        <bustap x2="1776" y1="1152" y2="1152" x1="1680" />
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1800" y="1152" type="branch" />
            <wire x2="1808" y1="1152" y2="1152" x1="1776" />
            <wire x2="2000" y1="1152" y2="1152" x1="1808" />
        </branch>
        <bustap x2="1776" y1="896" y2="896" x1="1680" />
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1800" y="896" type="branch" />
            <wire x2="1808" y1="896" y2="896" x1="1776" />
            <wire x2="2000" y1="896" y2="896" x1="1808" />
        </branch>
        <bustap x2="1520" y1="1696" y2="1696" x1="1424" />
        <branch name="B(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1696" type="branch" />
            <wire x2="1536" y1="1696" y2="1696" x1="1520" />
            <wire x2="2000" y1="1696" y2="1696" x1="1536" />
        </branch>
        <bustap x2="1520" y1="1456" y2="1456" x1="1424" />
        <branch name="B(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1456" type="branch" />
            <wire x2="1536" y1="1456" y2="1456" x1="1520" />
            <wire x2="2000" y1="1456" y2="1456" x1="1536" />
        </branch>
        <bustap x2="1520" y1="1216" y2="1216" x1="1424" />
        <branch name="B(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1216" type="branch" />
            <wire x2="1536" y1="1216" y2="1216" x1="1520" />
            <wire x2="2000" y1="1216" y2="1216" x1="1536" />
        </branch>
        <bustap x2="1520" y1="960" y2="960" x1="1424" />
        <branch name="B(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="960" type="branch" />
            <wire x2="1536" y1="960" y2="960" x1="1520" />
            <wire x2="2000" y1="960" y2="960" x1="1536" />
        </branch>
        <bustap x2="2352" y1="1664" y2="1664" x1="2448" />
        <branch name="C(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="1664" type="branch" />
            <wire x2="2336" y1="1664" y2="1664" x1="2256" />
            <wire x2="2352" y1="1664" y2="1664" x1="2336" />
        </branch>
        <bustap x2="2352" y1="1424" y2="1424" x1="2448" />
        <branch name="C(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2328" y="1424" type="branch" />
            <wire x2="2336" y1="1424" y2="1424" x1="2256" />
            <wire x2="2352" y1="1424" y2="1424" x1="2336" />
        </branch>
        <bustap x2="2352" y1="1184" y2="1184" x1="2448" />
        <branch name="C(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2304" y="1184" type="branch" />
            <wire x2="2304" y1="1184" y2="1184" x1="2256" />
            <wire x2="2352" y1="1184" y2="1184" x1="2304" />
        </branch>
        <bustap x2="2352" y1="928" y2="928" x1="2448" />
        <branch name="C(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2304" y="928" type="branch" />
            <wire x2="2304" y1="928" y2="928" x1="2256" />
            <wire x2="2352" y1="928" y2="928" x1="2304" />
        </branch>
        <branch name="B(3:0)">
            <wire x2="1424" y1="848" y2="848" x1="736" />
            <wire x2="1424" y1="848" y2="960" x1="1424" />
            <wire x2="1424" y1="960" y2="1216" x1="1424" />
            <wire x2="1424" y1="1216" y2="1456" x1="1424" />
            <wire x2="1424" y1="1456" y2="1696" x1="1424" />
            <wire x2="1424" y1="1696" y2="2112" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="2784" y="848" name="C(3:0)" orien="R0" />
        <iomarker fontsize="28" x="736" y="848" name="B(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1104" y="720" name="A(3:0)" orien="R180" />
        <branch name="A(3:0)">
            <wire x2="1680" y1="720" y2="720" x1="1104" />
            <wire x2="1680" y1="720" y2="896" x1="1680" />
            <wire x2="1680" y1="896" y2="1152" x1="1680" />
            <wire x2="1680" y1="1152" y2="1392" x1="1680" />
            <wire x2="1680" y1="1392" y2="1632" x1="1680" />
            <wire x2="1680" y1="1632" y2="1728" x1="1680" />
        </branch>
    </sheet>
</drawing>