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
        <branch name="C(3:0)">
            <wire x2="2640" y1="800" y2="800" x1="2304" />
            <wire x2="2304" y1="800" y2="880" x1="2304" />
            <wire x2="2304" y1="880" y2="1136" x1="2304" />
            <wire x2="2304" y1="1136" y2="1376" x1="2304" />
            <wire x2="2304" y1="1376" y2="1616" x1="2304" />
            <wire x2="2304" y1="1616" y2="1696" x1="2304" />
        </branch>
        <bustap x2="1632" y1="1584" y2="1584" x1="1536" />
        <branch name="A(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="1584" type="branch" />
            <wire x2="1648" y1="1584" y2="1584" x1="1632" />
            <wire x2="1856" y1="1584" y2="1584" x1="1648" />
        </branch>
        <bustap x2="1632" y1="1344" y2="1344" x1="1536" />
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1656" y="1344" type="branch" />
            <wire x2="1664" y1="1344" y2="1344" x1="1632" />
            <wire x2="1856" y1="1344" y2="1344" x1="1664" />
        </branch>
        <bustap x2="1632" y1="1104" y2="1104" x1="1536" />
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1656" y="1104" type="branch" />
            <wire x2="1664" y1="1104" y2="1104" x1="1632" />
            <wire x2="1856" y1="1104" y2="1104" x1="1664" />
        </branch>
        <bustap x2="1632" y1="848" y2="848" x1="1536" />
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1656" y="848" type="branch" />
            <wire x2="1664" y1="848" y2="848" x1="1632" />
            <wire x2="1856" y1="848" y2="848" x1="1664" />
        </branch>
        <bustap x2="1376" y1="1648" y2="1648" x1="1280" />
        <branch name="B(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1648" type="branch" />
            <wire x2="1392" y1="1648" y2="1648" x1="1376" />
            <wire x2="1856" y1="1648" y2="1648" x1="1392" />
        </branch>
        <bustap x2="1376" y1="1408" y2="1408" x1="1280" />
        <branch name="B(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1408" type="branch" />
            <wire x2="1392" y1="1408" y2="1408" x1="1376" />
            <wire x2="1856" y1="1408" y2="1408" x1="1392" />
        </branch>
        <bustap x2="1376" y1="1168" y2="1168" x1="1280" />
        <branch name="B(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1168" type="branch" />
            <wire x2="1392" y1="1168" y2="1168" x1="1376" />
            <wire x2="1856" y1="1168" y2="1168" x1="1392" />
        </branch>
        <bustap x2="1376" y1="912" y2="912" x1="1280" />
        <branch name="B(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="912" type="branch" />
            <wire x2="1392" y1="912" y2="912" x1="1376" />
            <wire x2="1856" y1="912" y2="912" x1="1392" />
        </branch>
        <bustap x2="2208" y1="1616" y2="1616" x1="2304" />
        <branch name="C(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1616" type="branch" />
            <wire x2="2192" y1="1616" y2="1616" x1="2112" />
            <wire x2="2208" y1="1616" y2="1616" x1="2192" />
        </branch>
        <bustap x2="2208" y1="1376" y2="1376" x1="2304" />
        <branch name="C(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2184" y="1376" type="branch" />
            <wire x2="2192" y1="1376" y2="1376" x1="2112" />
            <wire x2="2208" y1="1376" y2="1376" x1="2192" />
        </branch>
        <bustap x2="2208" y1="1136" y2="1136" x1="2304" />
        <branch name="C(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="1136" type="branch" />
            <wire x2="2160" y1="1136" y2="1136" x1="2112" />
            <wire x2="2208" y1="1136" y2="1136" x1="2160" />
        </branch>
        <bustap x2="2208" y1="880" y2="880" x1="2304" />
        <branch name="C(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="880" type="branch" />
            <wire x2="2160" y1="880" y2="880" x1="2112" />
            <wire x2="2208" y1="880" y2="880" x1="2160" />
        </branch>
        <instance x="1856" y="976" name="XLXI_5" orien="R0" />
        <instance x="1856" y="1232" name="XLXI_6" orien="R0" />
        <instance x="1856" y="1472" name="XLXI_7" orien="R0" />
        <instance x="1856" y="1712" name="XLXI_8" orien="R0" />
        <branch name="B(3:0)">
            <wire x2="1280" y1="832" y2="832" x1="720" />
            <wire x2="1280" y1="832" y2="912" x1="1280" />
            <wire x2="1280" y1="912" y2="1168" x1="1280" />
            <wire x2="1280" y1="1168" y2="1408" x1="1280" />
            <wire x2="1280" y1="1408" y2="1648" x1="1280" />
            <wire x2="1280" y1="1648" y2="2064" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="2640" y="800" name="C(3:0)" orien="R0" />
        <iomarker fontsize="28" x="720" y="832" name="B(3:0)" orien="R180" />
        <iomarker fontsize="28" x="896" y="656" name="A(3:0)" orien="R180" />
        <branch name="A(3:0)">
            <wire x2="1536" y1="656" y2="656" x1="896" />
            <wire x2="1536" y1="656" y2="848" x1="1536" />
            <wire x2="1536" y1="848" y2="1104" x1="1536" />
            <wire x2="1536" y1="1104" y2="1344" x1="1536" />
            <wire x2="1536" y1="1344" y2="1584" x1="1536" />
            <wire x2="1536" y1="1584" y2="1680" x1="1536" />
        </branch>
    </sheet>
</drawing>