<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="rst" />
        <signal name="clkd(31:0)" />
        <signal name="clkd(18:17)" />
        <signal name="XLXN_5(1:0)" />
        <signal name="Hexs(15:0)" />
        <signal name="points(3:0)" />
        <signal name="LES(3:0)" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="Hex(3:0)" />
        <signal name="Hex(2)" />
        <signal name="Hex(1)" />
        <signal name="Hex(0)" />
        <signal name="Hex(3)" />
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
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="Hexs(15:0)" />
        <port polarity="Input" name="points(3:0)" />
        <port polarity="Input" name="LES(3:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="Segment(7:0)" />
        <blockdef name="clkdiv">
            <timestamp>2023-11-1T11:43:24</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="DisplaySync">
            <timestamp>2023-11-1T8:59:37</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
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
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="MyMC14495">
            <timestamp>2023-10-24T13:31:59</timestamp>
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
        <block symbolname="clkdiv" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clkd(31:0)" name="clkdiv(31:0)" />
        </block>
        <block symbolname="DisplaySync" name="XLXI_2">
            <blockpin signalname="clkd(18:17)" name="Scan(1:0)" />
            <blockpin signalname="Hexs(15:0)" name="Hexs(15:0)" />
            <blockpin signalname="points(3:0)" name="points(3:0)" />
            <blockpin signalname="LES(3:0)" name="LES(3:0)" />
            <blockpin signalname="Hex(3:0)" name="Hex(3:0)" />
            <blockpin signalname="XLXN_9" name="p" />
            <blockpin signalname="XLXN_10" name="LE" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
        </block>
        <block symbolname="MyMC14495" name="XLXI_3">
            <blockpin signalname="XLXN_10" name="LE" />
            <blockpin signalname="XLXN_9" name="point" />
            <blockpin signalname="Hex(3)" name="D3" />
            <blockpin signalname="Hex(2)" name="D2" />
            <blockpin signalname="Hex(1)" name="D1" />
            <blockpin signalname="Hex(0)" name="D0" />
            <blockpin signalname="Segment(6)" name="g" />
            <blockpin signalname="Segment(5)" name="f" />
            <blockpin signalname="Segment(4)" name="e" />
            <blockpin signalname="Segment(3)" name="d" />
            <blockpin signalname="Segment(2)" name="c" />
            <blockpin signalname="Segment(1)" name="b" />
            <blockpin signalname="Segment(0)" name="a" />
            <blockpin signalname="Segment(7)" name="p" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="640" y="736" name="XLXI_1" orien="R0">
        </instance>
        <instance x="656" y="1472" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1712" y="1040" name="XLXI_3" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="640" y1="640" y2="640" x1="416" />
        </branch>
        <iomarker fontsize="28" x="416" y="640" name="clk" orien="R180" />
        <branch name="rst">
            <wire x2="640" y1="704" y2="704" x1="400" />
        </branch>
        <iomarker fontsize="28" x="400" y="704" name="rst" orien="R180" />
        <branch name="clkd(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1075" y="640" type="branch" />
            <wire x2="1200" y1="1056" y2="1056" x1="400" />
            <wire x2="400" y1="1056" y2="1232" x1="400" />
            <wire x2="400" y1="1232" y2="1248" x1="400" />
            <wire x2="1075" y1="640" y2="640" x1="1024" />
            <wire x2="1200" y1="640" y2="640" x1="1075" />
            <wire x2="1200" y1="640" y2="1056" x1="1200" />
        </branch>
        <bustap x2="496" y1="1232" y2="1232" x1="400" />
        <branch name="clkd(18:17)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="504" y="1232" type="branch" />
            <wire x2="504" y1="1232" y2="1232" x1="496" />
            <wire x2="560" y1="1232" y2="1232" x1="504" />
            <wire x2="560" y1="1232" y2="1248" x1="560" />
            <wire x2="656" y1="1248" y2="1248" x1="560" />
        </branch>
        <branch name="Hexs(15:0)">
            <wire x2="656" y1="1312" y2="1312" x1="368" />
        </branch>
        <iomarker fontsize="28" x="368" y="1312" name="Hexs(15:0)" orien="R180" />
        <branch name="points(3:0)">
            <wire x2="656" y1="1376" y2="1376" x1="368" />
        </branch>
        <iomarker fontsize="28" x="368" y="1376" name="points(3:0)" orien="R180" />
        <branch name="LES(3:0)">
            <wire x2="656" y1="1440" y2="1440" x1="368" />
        </branch>
        <iomarker fontsize="28" x="368" y="1440" name="LES(3:0)" orien="R180" />
        <branch name="XLXN_9">
            <wire x2="1424" y1="1312" y2="1312" x1="1040" />
            <wire x2="1424" y1="640" y2="1312" x1="1424" />
            <wire x2="1712" y1="640" y2="640" x1="1424" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1360" y1="1376" y2="1376" x1="1040" />
            <wire x2="1712" y1="560" y2="560" x1="1360" />
            <wire x2="1360" y1="560" y2="1376" x1="1360" />
        </branch>
        <branch name="Hex(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="1248" type="branch" />
            <wire x2="1056" y1="1248" y2="1248" x1="1040" />
            <wire x2="1504" y1="1248" y2="1248" x1="1056" />
            <wire x2="1504" y1="688" y2="720" x1="1504" />
            <wire x2="1504" y1="720" y2="800" x1="1504" />
            <wire x2="1504" y1="800" y2="880" x1="1504" />
            <wire x2="1504" y1="880" y2="960" x1="1504" />
            <wire x2="1504" y1="960" y2="1248" x1="1504" />
        </branch>
        <bustap x2="1600" y1="800" y2="800" x1="1504" />
        <branch name="Hex(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="800" type="branch" />
            <wire x2="1616" y1="800" y2="800" x1="1600" />
            <wire x2="1712" y1="800" y2="800" x1="1616" />
        </branch>
        <bustap x2="1600" y1="880" y2="880" x1="1504" />
        <branch name="Hex(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1640" y="880" type="branch" />
            <wire x2="1640" y1="880" y2="880" x1="1600" />
            <wire x2="1712" y1="880" y2="880" x1="1640" />
        </branch>
        <bustap x2="1600" y1="960" y2="960" x1="1504" />
        <branch name="Hex(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="960" type="branch" />
            <wire x2="1632" y1="960" y2="960" x1="1600" />
            <wire x2="1712" y1="960" y2="960" x1="1632" />
        </branch>
        <bustap x2="1600" y1="720" y2="720" x1="1504" />
        <branch name="Hex(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1624" y="720" type="branch" />
            <wire x2="1624" y1="720" y2="720" x1="1600" />
            <wire x2="1712" y1="720" y2="720" x1="1624" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="1840" y1="1440" y2="1440" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1840" y="1440" name="AN(3:0)" orien="R0" />
        <branch name="Segment(7:0)">
            <wire x2="2432" y1="464" y2="544" x1="2432" />
            <wire x2="2432" y1="544" y2="624" x1="2432" />
            <wire x2="2432" y1="624" y2="688" x1="2432" />
            <wire x2="2432" y1="688" y2="768" x1="2432" />
            <wire x2="2432" y1="768" y2="832" x1="2432" />
            <wire x2="2432" y1="832" y2="896" x1="2432" />
            <wire x2="2432" y1="896" y2="960" x1="2432" />
            <wire x2="2432" y1="960" y2="1040" x1="2432" />
            <wire x2="2432" y1="1040" y2="1152" x1="2432" />
            <wire x2="2720" y1="1152" y2="1152" x1="2432" />
        </branch>
        <iomarker fontsize="28" x="2720" y="1152" name="Segment(7:0)" orien="R0" />
        <bustap x2="2336" y1="1040" y2="1040" x1="2432" />
        <branch name="Segment(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2312" y="1040" type="branch" />
            <wire x2="2096" y1="1008" y2="1040" x1="2096" />
            <wire x2="2312" y1="1040" y2="1040" x1="2096" />
            <wire x2="2336" y1="1040" y2="1040" x1="2312" />
        </branch>
        <bustap x2="2336" y1="544" y2="544" x1="2432" />
        <branch name="Segment(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="544" type="branch" />
            <wire x2="2096" y1="544" y2="560" x1="2096" />
            <wire x2="2320" y1="544" y2="544" x1="2096" />
            <wire x2="2336" y1="544" y2="544" x1="2320" />
        </branch>
        <bustap x2="2336" y1="624" y2="624" x1="2432" />
        <branch name="Segment(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2304" y="624" type="branch" />
            <wire x2="2304" y1="624" y2="624" x1="2096" />
            <wire x2="2336" y1="624" y2="624" x1="2304" />
        </branch>
        <bustap x2="2336" y1="688" y2="688" x1="2432" />
        <branch name="Segment(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2304" y="688" type="branch" />
            <wire x2="2304" y1="688" y2="688" x1="2096" />
            <wire x2="2336" y1="688" y2="688" x1="2304" />
        </branch>
        <bustap x2="2336" y1="768" y2="768" x1="2432" />
        <branch name="Segment(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2312" y="768" type="branch" />
            <wire x2="2096" y1="752" y2="768" x1="2096" />
            <wire x2="2312" y1="768" y2="768" x1="2096" />
            <wire x2="2336" y1="768" y2="768" x1="2312" />
        </branch>
        <bustap x2="2336" y1="832" y2="832" x1="2432" />
        <branch name="Segment(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="832" type="branch" />
            <wire x2="2096" y1="816" y2="832" x1="2096" />
            <wire x2="2288" y1="832" y2="832" x1="2096" />
            <wire x2="2336" y1="832" y2="832" x1="2288" />
        </branch>
        <bustap x2="2336" y1="896" y2="896" x1="2432" />
        <branch name="Segment(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2296" y="896" type="branch" />
            <wire x2="2096" y1="880" y2="896" x1="2096" />
            <wire x2="2296" y1="896" y2="896" x1="2096" />
            <wire x2="2336" y1="896" y2="896" x1="2296" />
        </branch>
        <bustap x2="2336" y1="960" y2="960" x1="2432" />
        <branch name="Segment(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="960" type="branch" />
            <wire x2="2096" y1="944" y2="960" x1="2096" />
            <wire x2="2288" y1="960" y2="960" x1="2096" />
            <wire x2="2336" y1="960" y2="960" x1="2288" />
        </branch>
    </sheet>
</drawing>