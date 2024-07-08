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
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="or2" name="XLXI_5">
            <blockpin signalname="B(0)" name="I0" />
            <blockpin signalname="A(0)" name="I1" />
            <blockpin signalname="C(0)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_6">
            <blockpin signalname="B(1)" name="I0" />
            <blockpin signalname="A(1)" name="I1" />
            <blockpin signalname="C(1)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_7">
            <blockpin signalname="B(2)" name="I0" />
            <blockpin signalname="A(2)" name="I1" />
            <blockpin signalname="C(2)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_8">
            <blockpin signalname="B(3)" name="I0" />
            <blockpin signalname="A(3)" name="I1" />
            <blockpin signalname="C(3)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="A(3:0)">
            <wire x2="1600" y1="752" y2="752" x1="1104" />
            <wire x2="1600" y1="752" y2="928" x1="1600" />
            <wire x2="1600" y1="928" y2="1184" x1="1600" />
            <wire x2="1600" y1="1184" y2="1424" x1="1600" />
            <wire x2="1600" y1="1424" y2="1664" x1="1600" />
            <wire x2="1600" y1="1664" y2="1760" x1="1600" />
        </branch>
        <branch name="C(3:0)">
            <wire x2="2704" y1="880" y2="880" x1="2368" />
            <wire x2="2368" y1="880" y2="960" x1="2368" />
            <wire x2="2368" y1="960" y2="1216" x1="2368" />
            <wire x2="2368" y1="1216" y2="1456" x1="2368" />
            <wire x2="2368" y1="1456" y2="1696" x1="2368" />
            <wire x2="2368" y1="1696" y2="1776" x1="2368" />
        </branch>
        <bustap x2="1696" y1="1664" y2="1664" x1="1600" />
        <branch name="A(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="1664" type="branch" />
            <wire x2="1712" y1="1664" y2="1664" x1="1696" />
            <wire x2="1728" y1="1664" y2="1664" x1="1712" />
            <wire x2="1920" y1="1664" y2="1664" x1="1728" />
        </branch>
        <bustap x2="1696" y1="1424" y2="1424" x1="1600" />
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1720" y="1424" type="branch" />
            <wire x2="1728" y1="1424" y2="1424" x1="1696" />
            <wire x2="1744" y1="1424" y2="1424" x1="1728" />
            <wire x2="1920" y1="1424" y2="1424" x1="1744" />
        </branch>
        <bustap x2="1696" y1="1184" y2="1184" x1="1600" />
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1720" y="1184" type="branch" />
            <wire x2="1728" y1="1184" y2="1184" x1="1696" />
            <wire x2="1744" y1="1184" y2="1184" x1="1728" />
            <wire x2="1904" y1="1184" y2="1184" x1="1744" />
            <wire x2="1920" y1="1184" y2="1184" x1="1904" />
        </branch>
        <bustap x2="1696" y1="928" y2="928" x1="1600" />
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1720" y="928" type="branch" />
            <wire x2="1728" y1="928" y2="928" x1="1696" />
            <wire x2="1744" y1="928" y2="928" x1="1728" />
            <wire x2="1920" y1="928" y2="928" x1="1744" />
        </branch>
        <branch name="B(3:0)">
            <wire x2="1344" y1="896" y2="896" x1="912" />
            <wire x2="1344" y1="896" y2="992" x1="1344" />
            <wire x2="1344" y1="992" y2="1248" x1="1344" />
            <wire x2="1344" y1="1248" y2="1488" x1="1344" />
            <wire x2="1344" y1="1488" y2="1728" x1="1344" />
            <wire x2="1344" y1="1728" y2="2144" x1="1344" />
        </branch>
        <bustap x2="1440" y1="1728" y2="1728" x1="1344" />
        <branch name="B(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="1728" type="branch" />
            <wire x2="1456" y1="1728" y2="1728" x1="1440" />
            <wire x2="1472" y1="1728" y2="1728" x1="1456" />
            <wire x2="1904" y1="1728" y2="1728" x1="1472" />
            <wire x2="1920" y1="1728" y2="1728" x1="1904" />
        </branch>
        <bustap x2="1440" y1="1488" y2="1488" x1="1344" />
        <branch name="B(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="1488" type="branch" />
            <wire x2="1456" y1="1488" y2="1488" x1="1440" />
            <wire x2="1472" y1="1488" y2="1488" x1="1456" />
            <wire x2="1920" y1="1488" y2="1488" x1="1472" />
        </branch>
        <bustap x2="1440" y1="1248" y2="1248" x1="1344" />
        <branch name="B(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="1248" type="branch" />
            <wire x2="1456" y1="1248" y2="1248" x1="1440" />
            <wire x2="1472" y1="1248" y2="1248" x1="1456" />
            <wire x2="1920" y1="1248" y2="1248" x1="1472" />
        </branch>
        <bustap x2="1440" y1="992" y2="992" x1="1344" />
        <branch name="B(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="992" type="branch" />
            <wire x2="1456" y1="992" y2="992" x1="1440" />
            <wire x2="1472" y1="992" y2="992" x1="1456" />
            <wire x2="1920" y1="992" y2="992" x1="1472" />
        </branch>
        <bustap x2="2272" y1="1696" y2="1696" x1="2368" />
        <branch name="C(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1696" type="branch" />
            <wire x2="2240" y1="1696" y2="1696" x1="2176" />
            <wire x2="2256" y1="1696" y2="1696" x1="2240" />
            <wire x2="2272" y1="1696" y2="1696" x1="2256" />
        </branch>
        <bustap x2="2272" y1="1456" y2="1456" x1="2368" />
        <branch name="C(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2248" y="1456" type="branch" />
            <wire x2="2224" y1="1456" y2="1456" x1="2176" />
            <wire x2="2256" y1="1456" y2="1456" x1="2224" />
            <wire x2="2272" y1="1456" y2="1456" x1="2256" />
        </branch>
        <bustap x2="2272" y1="1216" y2="1216" x1="2368" />
        <branch name="C(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="1216" type="branch" />
            <wire x2="2224" y1="1216" y2="1216" x1="2176" />
            <wire x2="2272" y1="1216" y2="1216" x1="2224" />
        </branch>
        <bustap x2="2272" y1="960" y2="960" x1="2368" />
        <branch name="C(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="960" type="branch" />
            <wire x2="2224" y1="960" y2="960" x1="2176" />
            <wire x2="2272" y1="960" y2="960" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="1104" y="752" name="A(3:0)" orien="R180" />
        <iomarker fontsize="28" x="2704" y="880" name="C(3:0)" orien="R0" />
        <iomarker fontsize="28" x="912" y="896" name="B(3:0)" orien="R180" />
        <instance x="1920" y="1056" name="XLXI_5" orien="R0" />
        <instance x="1920" y="1312" name="XLXI_6" orien="R0" />
        <instance x="1920" y="1552" name="XLXI_7" orien="R0" />
        <instance x="1920" y="1792" name="XLXI_8" orien="R0" />
    </sheet>
</drawing>