<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="RST" />
        <signal name="HEXS(15:0)" />
        <signal name="points(3:0)" />
        <signal name="LES(3:0)" />
        <signal name="clkd(31:0)" />
        <signal name="clkd(18:17)" />
        <signal name="HEX(3:0)" />
        <signal name="HEX(3)" />
        <signal name="HEX(2)" />
        <signal name="HEX(1)" />
        <signal name="HEX(0)" />
        <signal name="XLXN_10" />
        <signal name="XLXN_12" />
        <signal name="AN(3:0)" />
        <signal name="Segment(7:0)" />
        <signal name="Segment(7)" />
        <signal name="Segment(6)" />
        <signal name="Segment(5)" />
        <signal name="Segment(4)" />
        <signal name="Segment(3)" />
        <signal name="Segment(2)" />
        <signal name="Segment(1)" />
        <signal name="Segment(0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="RST" />
        <port polarity="Input" name="HEXS(15:0)" />
        <port polarity="Input" name="points(3:0)" />
        <port polarity="Input" name="LES(3:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="Segment(7:0)" />
        <blockdef name="MyMC14495">
            <timestamp>2023-11-1T3:22:40</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-400" y2="-400" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="-240" y2="-240" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="DisplaySync">
            <timestamp>2023-11-1T3:19:54</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-256" height="320" />
        </blockdef>
        <blockdef name="clkdiv">
            <timestamp>2023-11-1T3:20:16</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="clkdiv" name="XLXI_4">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="RST" name="rst" />
            <blockpin signalname="clkd(31:0)" name="clkdiv(31:0)" />
        </block>
        <block symbolname="MyMC14495" name="XLXI_5">
            <blockpin signalname="XLXN_10" name="point" />
            <blockpin signalname="HEX(0)" name="D0" />
            <blockpin signalname="HEX(1)" name="D1" />
            <blockpin signalname="HEX(2)" name="D2" />
            <blockpin signalname="HEX(3)" name="D3" />
            <blockpin signalname="XLXN_12" name="LE" />
            <blockpin signalname="Segment(6)" name="g" />
            <blockpin signalname="Segment(7)" name="p" />
            <blockpin signalname="Segment(5)" name="f" />
            <blockpin signalname="Segment(4)" name="e" />
            <blockpin signalname="Segment(3)" name="d" />
            <blockpin signalname="Segment(2)" name="c" />
            <blockpin signalname="Segment(1)" name="b" />
            <blockpin signalname="Segment(0)" name="a" />
        </block>
        <block symbolname="DisplaySync" name="XLXI_6">
            <blockpin signalname="HEXS(15:0)" name="Hexs(15:0)" />
            <blockpin signalname="points(3:0)" name="point(3:0)" />
            <blockpin signalname="clkd(18:17)" name="Scan(1:0)" />
            <blockpin signalname="LES(3:0)" name="LES(3:0)" />
            <blockpin signalname="HEX(3:0)" name="HEX(3:0)" />
            <blockpin signalname="XLXN_10" name="p" />
            <blockpin signalname="XLXN_12" name="LE" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <wire x2="896" y1="848" y2="848" x1="720" />
        </branch>
        <branch name="RST">
            <wire x2="896" y1="912" y2="912" x1="720" />
        </branch>
        <branch name="HEXS(15:0)">
            <wire x2="992" y1="1488" y2="1488" x1="672" />
        </branch>
        <branch name="points(3:0)">
            <wire x2="992" y1="1552" y2="1552" x1="672" />
        </branch>
        <branch name="LES(3:0)">
            <wire x2="992" y1="1680" y2="1680" x1="672" />
        </branch>
        <branch name="clkd(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="736" y="1248" type="branch" />
            <wire x2="1392" y1="1248" y2="1248" x1="736" />
            <wire x2="736" y1="1248" y2="1616" x1="736" />
            <wire x2="736" y1="1616" y2="1712" x1="736" />
            <wire x2="1392" y1="848" y2="848" x1="1280" />
            <wire x2="1392" y1="848" y2="1248" x1="1392" />
        </branch>
        <bustap x2="832" y1="1616" y2="1616" x1="736" />
        <branch name="clkd(18:17)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="912" y="1616" type="branch" />
            <wire x2="912" y1="1616" y2="1616" x1="832" />
            <wire x2="992" y1="1616" y2="1616" x1="912" />
        </branch>
        <branch name="HEX(3:0)">
            <wire x2="1824" y1="1488" y2="1488" x1="1376" />
            <wire x2="1824" y1="784" y2="928" x1="1824" />
            <wire x2="1824" y1="928" y2="1008" x1="1824" />
            <wire x2="1824" y1="1008" y2="1088" x1="1824" />
            <wire x2="1824" y1="1088" y2="1168" x1="1824" />
            <wire x2="1824" y1="1168" y2="1488" x1="1824" />
        </branch>
        <bustap x2="1920" y1="1168" y2="1168" x1="1824" />
        <branch name="HEX(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2056" y="1168" type="branch" />
            <wire x2="2064" y1="1168" y2="1168" x1="1920" />
            <wire x2="2192" y1="1168" y2="1168" x1="2064" />
        </branch>
        <bustap x2="1920" y1="1088" y2="1088" x1="1824" />
        <branch name="HEX(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2056" y="1088" type="branch" />
            <wire x2="2064" y1="1088" y2="1088" x1="1920" />
            <wire x2="2192" y1="1088" y2="1088" x1="2064" />
        </branch>
        <bustap x2="1920" y1="1008" y2="1008" x1="1824" />
        <branch name="HEX(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2056" y="1008" type="branch" />
            <wire x2="2064" y1="1008" y2="1008" x1="1920" />
            <wire x2="2192" y1="1008" y2="1008" x1="2064" />
        </branch>
        <bustap x2="1920" y1="928" y2="928" x1="1824" />
        <branch name="HEX(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2056" y="928" type="branch" />
            <wire x2="2064" y1="928" y2="928" x1="1920" />
            <wire x2="2192" y1="928" y2="928" x1="2064" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="2160" y1="1616" y2="1616" x1="1376" />
            <wire x2="2160" y1="848" y2="1616" x1="2160" />
            <wire x2="2192" y1="848" y2="848" x1="2160" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="2192" y1="1680" y2="1680" x1="1376" />
            <wire x2="2192" y1="1248" y2="1248" x1="2128" />
            <wire x2="2128" y1="1248" y2="1392" x1="2128" />
            <wire x2="2192" y1="1392" y2="1392" x1="2128" />
            <wire x2="2192" y1="1392" y2="1680" x1="2192" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="2784" y1="1744" y2="1744" x1="1376" />
        </branch>
        <branch name="Segment(7:0)">
            <wire x2="2832" y1="768" y2="848" x1="2832" />
            <wire x2="2832" y1="848" y2="912" x1="2832" />
            <wire x2="2832" y1="912" y2="976" x1="2832" />
            <wire x2="2832" y1="976" y2="1040" x1="2832" />
            <wire x2="2832" y1="1040" y2="1104" x1="2832" />
            <wire x2="2832" y1="1104" y2="1168" x1="2832" />
            <wire x2="2832" y1="1168" y2="1232" x1="2832" />
            <wire x2="2832" y1="1232" y2="1296" x1="2832" />
            <wire x2="2832" y1="1296" y2="1328" x1="2832" />
            <wire x2="2848" y1="1328" y2="1328" x1="2832" />
            <wire x2="2912" y1="1328" y2="1328" x1="2848" />
        </branch>
        <bustap x2="2736" y1="912" y2="912" x1="2832" />
        <branch name="Segment(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="912" type="branch" />
            <wire x2="2656" y1="912" y2="912" x1="2576" />
            <wire x2="2736" y1="912" y2="912" x1="2656" />
        </branch>
        <bustap x2="2736" y1="848" y2="848" x1="2832" />
        <branch name="Segment(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="848" type="branch" />
            <wire x2="2656" y1="848" y2="848" x1="2576" />
            <wire x2="2736" y1="848" y2="848" x1="2656" />
        </branch>
        <bustap x2="2736" y1="976" y2="976" x1="2832" />
        <branch name="Segment(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="976" type="branch" />
            <wire x2="2656" y1="976" y2="976" x1="2576" />
            <wire x2="2736" y1="976" y2="976" x1="2656" />
        </branch>
        <bustap x2="2736" y1="1040" y2="1040" x1="2832" />
        <branch name="Segment(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="1040" type="branch" />
            <wire x2="2656" y1="1040" y2="1040" x1="2576" />
            <wire x2="2736" y1="1040" y2="1040" x1="2656" />
        </branch>
        <bustap x2="2736" y1="1104" y2="1104" x1="2832" />
        <branch name="Segment(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="1104" type="branch" />
            <wire x2="2656" y1="1104" y2="1104" x1="2576" />
            <wire x2="2736" y1="1104" y2="1104" x1="2656" />
        </branch>
        <bustap x2="2736" y1="1168" y2="1168" x1="2832" />
        <branch name="Segment(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="1168" type="branch" />
            <wire x2="2656" y1="1168" y2="1168" x1="2576" />
            <wire x2="2736" y1="1168" y2="1168" x1="2656" />
        </branch>
        <bustap x2="2736" y1="1232" y2="1232" x1="2832" />
        <branch name="Segment(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="1232" type="branch" />
            <wire x2="2656" y1="1232" y2="1232" x1="2576" />
            <wire x2="2736" y1="1232" y2="1232" x1="2656" />
        </branch>
        <bustap x2="2736" y1="1296" y2="1296" x1="2832" />
        <branch name="Segment(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="1296" type="branch" />
            <wire x2="2656" y1="1296" y2="1296" x1="2576" />
            <wire x2="2736" y1="1296" y2="1296" x1="2656" />
        </branch>
        <iomarker fontsize="28" x="720" y="848" name="clk" orien="R180" />
        <iomarker fontsize="28" x="720" y="912" name="RST" orien="R180" />
        <iomarker fontsize="28" x="672" y="1488" name="HEXS(15:0)" orien="R180" />
        <iomarker fontsize="28" x="672" y="1552" name="points(3:0)" orien="R180" />
        <iomarker fontsize="28" x="672" y="1680" name="LES(3:0)" orien="R180" />
        <iomarker fontsize="28" x="2784" y="1744" name="AN(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2912" y="1328" name="Segment(7:0)" orien="R0" />
        <instance x="896" y="944" name="XLXI_4" orien="R0">
        </instance>
        <instance x="2192" y="1328" name="XLXI_5" orien="R0">
        </instance>
        <instance x="992" y="1712" name="XLXI_6" orien="R0">
        </instance>
    </sheet>
</drawing>