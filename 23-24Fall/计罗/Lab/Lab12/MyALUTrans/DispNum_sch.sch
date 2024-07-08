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
        <signal name="XLXN_15" />
        <signal name="XLXN_17" />
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
        <blockdef name="DisplaySync">
            <timestamp>2023-11-1T3:19:53</timestamp>
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
            <timestamp>2023-11-1T3:20:15</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="MyMC14495">
            <timestamp>2023-11-1T3:22:39</timestamp>
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
        <block symbolname="DisplaySync" name="XLXI_1">
            <blockpin signalname="HEXS(15:0)" name="Hexs(15:0)" />
            <blockpin signalname="points(3:0)" name="point(3:0)" />
            <blockpin signalname="clkd(18:17)" name="Scan(1:0)" />
            <blockpin signalname="LES(3:0)" name="LES(3:0)" />
            <blockpin signalname="HEX(3:0)" name="HEX(3:0)" />
            <blockpin signalname="XLXN_15" name="p" />
            <blockpin signalname="XLXN_17" name="LE" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
        </block>
        <block symbolname="clkdiv" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="RST" name="rst" />
            <blockpin signalname="clkd(31:0)" name="clkdiv(31:0)" />
        </block>
        <block symbolname="MyMC14495" name="XLXI_3">
            <blockpin signalname="XLXN_15" name="point" />
            <blockpin signalname="HEX(0)" name="D0" />
            <blockpin signalname="HEX(1)" name="D1" />
            <blockpin signalname="HEX(2)" name="D2" />
            <blockpin signalname="HEX(3)" name="D3" />
            <blockpin signalname="XLXN_17" name="LE" />
            <blockpin signalname="Segment(6)" name="g" />
            <blockpin signalname="Segment(7)" name="p" />
            <blockpin signalname="Segment(5)" name="f" />
            <blockpin signalname="Segment(4)" name="e" />
            <blockpin signalname="Segment(3)" name="d" />
            <blockpin signalname="Segment(2)" name="c" />
            <blockpin signalname="Segment(1)" name="b" />
            <blockpin signalname="Segment(0)" name="a" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2000" y="1120" name="XLXI_3" orien="R0">
        </instance>
        <instance x="800" y="1504" name="XLXI_1" orien="R0">
        </instance>
        <instance x="704" y="736" name="XLXI_2" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="704" y1="640" y2="640" x1="528" />
        </branch>
        <branch name="RST">
            <wire x2="704" y1="704" y2="704" x1="528" />
        </branch>
        <iomarker fontsize="28" x="528" y="640" name="clk" orien="R180" />
        <iomarker fontsize="28" x="528" y="704" name="RST" orien="R180" />
        <branch name="HEXS(15:0)">
            <wire x2="800" y1="1280" y2="1280" x1="480" />
        </branch>
        <branch name="points(3:0)">
            <wire x2="800" y1="1344" y2="1344" x1="480" />
        </branch>
        <branch name="LES(3:0)">
            <wire x2="800" y1="1472" y2="1472" x1="480" />
        </branch>
        <iomarker fontsize="28" x="480" y="1280" name="HEXS(15:0)" orien="R180" />
        <iomarker fontsize="28" x="480" y="1344" name="points(3:0)" orien="R180" />
        <iomarker fontsize="28" x="480" y="1472" name="LES(3:0)" orien="R180" />
        <branch name="clkd(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="544" y="1040" type="branch" />
            <wire x2="1200" y1="1040" y2="1040" x1="544" />
            <wire x2="544" y1="1040" y2="1408" x1="544" />
            <wire x2="544" y1="1408" y2="1504" x1="544" />
            <wire x2="1200" y1="640" y2="640" x1="1088" />
            <wire x2="1200" y1="640" y2="1040" x1="1200" />
        </branch>
        <bustap x2="640" y1="1408" y2="1408" x1="544" />
        <branch name="clkd(18:17)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="720" y="1408" type="branch" />
            <wire x2="720" y1="1408" y2="1408" x1="640" />
            <wire x2="800" y1="1408" y2="1408" x1="720" />
        </branch>
        <branch name="HEX(3:0)">
            <wire x2="1632" y1="1280" y2="1280" x1="1184" />
            <wire x2="1632" y1="576" y2="720" x1="1632" />
            <wire x2="1632" y1="720" y2="800" x1="1632" />
            <wire x2="1632" y1="800" y2="880" x1="1632" />
            <wire x2="1632" y1="880" y2="960" x1="1632" />
            <wire x2="1632" y1="960" y2="1280" x1="1632" />
        </branch>
        <bustap x2="1728" y1="960" y2="960" x1="1632" />
        <branch name="HEX(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1864" y="960" type="branch" />
            <wire x2="1872" y1="960" y2="960" x1="1728" />
            <wire x2="2000" y1="960" y2="960" x1="1872" />
        </branch>
        <bustap x2="1728" y1="880" y2="880" x1="1632" />
        <branch name="HEX(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1864" y="880" type="branch" />
            <wire x2="1872" y1="880" y2="880" x1="1728" />
            <wire x2="2000" y1="880" y2="880" x1="1872" />
        </branch>
        <bustap x2="1728" y1="800" y2="800" x1="1632" />
        <branch name="HEX(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1864" y="800" type="branch" />
            <wire x2="1872" y1="800" y2="800" x1="1728" />
            <wire x2="2000" y1="800" y2="800" x1="1872" />
        </branch>
        <bustap x2="1728" y1="720" y2="720" x1="1632" />
        <branch name="HEX(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1864" y="720" type="branch" />
            <wire x2="1872" y1="720" y2="720" x1="1728" />
            <wire x2="2000" y1="720" y2="720" x1="1872" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1968" y1="1408" y2="1408" x1="1184" />
            <wire x2="1968" y1="640" y2="1408" x1="1968" />
            <wire x2="2000" y1="640" y2="640" x1="1968" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="2000" y1="1472" y2="1472" x1="1184" />
            <wire x2="2000" y1="1040" y2="1040" x1="1936" />
            <wire x2="1936" y1="1040" y2="1184" x1="1936" />
            <wire x2="2000" y1="1184" y2="1184" x1="1936" />
            <wire x2="2000" y1="1184" y2="1472" x1="2000" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="2592" y1="1536" y2="1536" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="2592" y="1536" name="AN(3:0)" orien="R0" />
        <branch name="Segment(7:0)">
            <wire x2="2640" y1="560" y2="640" x1="2640" />
            <wire x2="2640" y1="640" y2="704" x1="2640" />
            <wire x2="2640" y1="704" y2="768" x1="2640" />
            <wire x2="2640" y1="768" y2="832" x1="2640" />
            <wire x2="2640" y1="832" y2="896" x1="2640" />
            <wire x2="2640" y1="896" y2="960" x1="2640" />
            <wire x2="2640" y1="960" y2="1024" x1="2640" />
            <wire x2="2640" y1="1024" y2="1088" x1="2640" />
            <wire x2="2640" y1="1088" y2="1120" x1="2640" />
            <wire x2="2656" y1="1120" y2="1120" x1="2640" />
            <wire x2="2720" y1="1120" y2="1120" x1="2656" />
        </branch>
        <iomarker fontsize="28" x="2720" y="1120" name="Segment(7:0)" orien="R0" />
        <bustap x2="2544" y1="704" y2="704" x1="2640" />
        <branch name="Segment(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="704" type="branch" />
            <wire x2="2464" y1="704" y2="704" x1="2384" />
            <wire x2="2544" y1="704" y2="704" x1="2464" />
        </branch>
        <bustap x2="2544" y1="640" y2="640" x1="2640" />
        <branch name="Segment(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="640" type="branch" />
            <wire x2="2464" y1="640" y2="640" x1="2384" />
            <wire x2="2544" y1="640" y2="640" x1="2464" />
        </branch>
        <bustap x2="2544" y1="768" y2="768" x1="2640" />
        <branch name="Segment(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="768" type="branch" />
            <wire x2="2464" y1="768" y2="768" x1="2384" />
            <wire x2="2544" y1="768" y2="768" x1="2464" />
        </branch>
        <bustap x2="2544" y1="832" y2="832" x1="2640" />
        <branch name="Segment(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="832" type="branch" />
            <wire x2="2464" y1="832" y2="832" x1="2384" />
            <wire x2="2544" y1="832" y2="832" x1="2464" />
        </branch>
        <bustap x2="2544" y1="896" y2="896" x1="2640" />
        <branch name="Segment(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="896" type="branch" />
            <wire x2="2464" y1="896" y2="896" x1="2384" />
            <wire x2="2544" y1="896" y2="896" x1="2464" />
        </branch>
        <bustap x2="2544" y1="960" y2="960" x1="2640" />
        <branch name="Segment(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="960" type="branch" />
            <wire x2="2464" y1="960" y2="960" x1="2384" />
            <wire x2="2544" y1="960" y2="960" x1="2464" />
        </branch>
        <bustap x2="2544" y1="1024" y2="1024" x1="2640" />
        <branch name="Segment(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="1024" type="branch" />
            <wire x2="2464" y1="1024" y2="1024" x1="2384" />
            <wire x2="2544" y1="1024" y2="1024" x1="2464" />
        </branch>
        <bustap x2="2544" y1="1088" y2="1088" x1="2640" />
        <branch name="Segment(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="1088" type="branch" />
            <wire x2="2464" y1="1088" y2="1088" x1="2384" />
            <wire x2="2544" y1="1088" y2="1088" x1="2464" />
        </branch>
    </sheet>
</drawing>