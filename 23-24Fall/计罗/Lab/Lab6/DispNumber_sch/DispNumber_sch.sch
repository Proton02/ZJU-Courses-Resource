<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SW(7:0)" />
        <signal name="BTN(1:0)" />
        <signal name="BTN(1)" />
        <signal name="BTN(0)" />
        <signal name="SW(0)" />
        <signal name="SW(1)" />
        <signal name="SW(2)" />
        <signal name="SW(4)" />
        <signal name="SEGMENT(7:0)" />
        <signal name="SEGMENT(7)" />
        <signal name="SEGMENT(6)" />
        <signal name="SEGMENT(5)" />
        <signal name="SEGMENT(4)" />
        <signal name="SEGMENT(3)" />
        <signal name="SEGMENT(2)" />
        <signal name="SEGMENT(1)" />
        <signal name="SEGMENT(0)" />
        <signal name="SW(7)" />
        <signal name="SW(6)" />
        <signal name="SW(5)" />
        <signal name="AN(3:0)" />
        <signal name="AN(3)" />
        <signal name="AN(2)" />
        <signal name="AN(1)" />
        <signal name="AN(0)" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="SW(3)" />
        <signal name="XLXN_40" />
        <port polarity="Input" name="SW(7:0)" />
        <port polarity="Input" name="BTN(1:0)" />
        <port polarity="Output" name="SEGMENT(7:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <blockdef name="inv4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="160" y1="-96" y2="-96" x1="224" />
            <line x2="160" y1="-160" y2="-160" x1="224" />
            <line x2="160" y1="-224" y2="-224" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-96" y2="-96" x1="0" />
            <line x2="64" y1="-160" y2="-160" x1="0" />
            <line x2="64" y1="-224" y2="-224" x1="0" />
            <line x2="128" y1="-256" y2="-224" x1="64" />
            <line x2="64" y1="-224" y2="-192" x1="128" />
            <line x2="64" y1="-192" y2="-256" x1="64" />
            <circle r="16" cx="144" cy="-32" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="128" y1="-128" y2="-96" x1="64" />
            <line x2="64" y1="-96" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="-128" x1="64" />
            <circle r="16" cx="144" cy="-96" />
            <line x2="128" y1="-192" y2="-160" x1="64" />
            <line x2="64" y1="-160" y2="-128" x1="128" />
            <line x2="64" y1="-128" y2="-192" x1="64" />
            <circle r="16" cx="144" cy="-160" />
            <circle r="16" cx="144" cy="-224" />
        </blockdef>
        <blockdef name="MyMC14495">
            <timestamp>2023-10-26T8:10:10</timestamp>
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
        <block symbolname="inv4" name="XLXI_3">
            <blockpin signalname="SW(4)" name="I0" />
            <blockpin signalname="SW(5)" name="I1" />
            <blockpin signalname="SW(6)" name="I2" />
            <blockpin signalname="SW(7)" name="I3" />
            <blockpin signalname="AN(0)" name="O0" />
            <blockpin signalname="AN(1)" name="O1" />
            <blockpin signalname="AN(2)" name="O2" />
            <blockpin signalname="AN(3)" name="O3" />
        </block>
        <block symbolname="MyMC14495" name="XLXI_4">
            <blockpin signalname="BTN(0)" name="LE" />
            <blockpin signalname="BTN(1)" name="point" />
            <blockpin signalname="SW(3)" name="D3" />
            <blockpin signalname="SW(1)" name="D1" />
            <blockpin signalname="SW(0)" name="D0" />
            <blockpin signalname="SW(2)" name="D2" />
            <blockpin signalname="SEGMENT(7)" name="p" />
            <blockpin signalname="SEGMENT(6)" name="g" />
            <blockpin signalname="SEGMENT(5)" name="f" />
            <blockpin signalname="SEGMENT(4)" name="e" />
            <blockpin signalname="SEGMENT(1)" name="b" />
            <blockpin signalname="SEGMENT(2)" name="c" />
            <blockpin signalname="SEGMENT(3)" name="d" />
            <blockpin signalname="SEGMENT(0)" name="a" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="BTN(1:0)">
            <wire x2="1040" y1="1088" y2="1088" x1="720" />
            <wire x2="1040" y1="1088" y2="1120" x1="1040" />
            <wire x2="1040" y1="928" y2="960" x1="1040" />
            <wire x2="1040" y1="960" y2="1040" x1="1040" />
            <wire x2="1040" y1="1040" y2="1088" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="720" y="1088" name="BTN(1:0)" orien="R180" />
        <bustap x2="1136" y1="960" y2="960" x1="1040" />
        <bustap x2="1136" y1="1040" y2="1040" x1="1040" />
        <iomarker fontsize="28" x="720" y="1744" name="SW(7:0)" orien="R180" />
        <branch name="SEGMENT(7:0)">
            <wire x2="2400" y1="688" y2="720" x1="2400" />
            <wire x2="2400" y1="720" y2="768" x1="2400" />
            <wire x2="2400" y1="768" y2="816" x1="2400" />
            <wire x2="2400" y1="816" y2="864" x1="2400" />
            <wire x2="2400" y1="864" y2="896" x1="2400" />
            <wire x2="2560" y1="896" y2="896" x1="2400" />
            <wire x2="2400" y1="896" y2="912" x1="2400" />
            <wire x2="2400" y1="912" y2="960" x1="2400" />
            <wire x2="2400" y1="960" y2="1008" x1="2400" />
            <wire x2="2400" y1="1008" y2="1056" x1="2400" />
            <wire x2="2400" y1="1056" y2="1088" x1="2400" />
        </branch>
        <iomarker fontsize="28" x="2560" y="896" name="SEGMENT(7:0)" orien="R0" />
        <bustap x2="2304" y1="1056" y2="1056" x1="2400" />
        <branch name="SEGMENT(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="1056" type="branch" />
            <wire x2="2096" y1="640" y2="640" x1="1920" />
            <wire x2="2096" y1="640" y2="1056" x1="2096" />
            <wire x2="2288" y1="1056" y2="1056" x1="2096" />
            <wire x2="2304" y1="1056" y2="1056" x1="2288" />
        </branch>
        <bustap x2="2304" y1="1008" y2="1008" x1="2400" />
        <bustap x2="2304" y1="960" y2="960" x1="2400" />
        <bustap x2="2304" y1="912" y2="912" x1="2400" />
        <bustap x2="2304" y1="864" y2="864" x1="2400" />
        <bustap x2="2304" y1="816" y2="816" x1="2400" />
        <bustap x2="2304" y1="768" y2="768" x1="2400" />
        <bustap x2="2304" y1="720" y2="720" x1="2400" />
        <instance x="1408" y="1728" name="XLXI_3" orien="R0" />
        <branch name="SW(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1504" type="branch" />
            <wire x2="1024" y1="1504" y2="1504" x1="992" />
            <wire x2="1408" y1="1504" y2="1504" x1="1024" />
        </branch>
        <branch name="SW(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1568" type="branch" />
            <wire x2="1024" y1="1568" y2="1568" x1="992" />
            <wire x2="1408" y1="1568" y2="1568" x1="1024" />
        </branch>
        <branch name="SW(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1632" type="branch" />
            <wire x2="1024" y1="1632" y2="1632" x1="992" />
            <wire x2="1408" y1="1632" y2="1632" x1="1024" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="2240" y1="1440" y2="1504" x1="2240" />
            <wire x2="2240" y1="1504" y2="1568" x1="2240" />
            <wire x2="2240" y1="1568" y2="1600" x1="2240" />
            <wire x2="2320" y1="1600" y2="1600" x1="2240" />
            <wire x2="2240" y1="1600" y2="1632" x1="2240" />
            <wire x2="2240" y1="1632" y2="1696" x1="2240" />
            <wire x2="2240" y1="1696" y2="1760" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2320" y="1600" name="AN(3:0)" orien="R0" />
        <bustap x2="2144" y1="1504" y2="1504" x1="2240" />
        <branch name="AN(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2104" y="1504" type="branch" />
            <wire x2="2144" y1="1504" y2="1504" x1="1632" />
        </branch>
        <bustap x2="2144" y1="1568" y2="1568" x1="2240" />
        <branch name="AN(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2104" y="1568" type="branch" />
            <wire x2="2144" y1="1568" y2="1568" x1="1632" />
        </branch>
        <bustap x2="2144" y1="1632" y2="1632" x1="2240" />
        <branch name="AN(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2104" y="1632" type="branch" />
            <wire x2="2144" y1="1632" y2="1632" x1="1632" />
        </branch>
        <bustap x2="2144" y1="1696" y2="1696" x1="2240" />
        <branch name="AN(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2104" y="1696" type="branch" />
            <wire x2="2144" y1="1696" y2="1696" x1="1632" />
        </branch>
        <instance x="1536" y="1120" name="XLXI_4" orien="R0">
        </instance>
        <branch name="SEGMENT(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="720" type="branch" />
            <wire x2="2064" y1="1088" y2="1088" x1="1920" />
            <wire x2="2064" y1="704" y2="1088" x1="2064" />
            <wire x2="2272" y1="704" y2="704" x1="2064" />
            <wire x2="2272" y1="704" y2="720" x1="2272" />
            <wire x2="2288" y1="720" y2="720" x1="2272" />
            <wire x2="2304" y1="720" y2="720" x1="2288" />
        </branch>
        <branch name="SEGMENT(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="768" type="branch" />
            <wire x2="2080" y1="896" y2="896" x1="1920" />
            <wire x2="2080" y1="768" y2="896" x1="2080" />
            <wire x2="2288" y1="768" y2="768" x1="2080" />
            <wire x2="2304" y1="768" y2="768" x1="2288" />
        </branch>
        <branch name="SEGMENT(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="816" type="branch" />
            <wire x2="2048" y1="960" y2="960" x1="1920" />
            <wire x2="2048" y1="832" y2="960" x1="2048" />
            <wire x2="2272" y1="832" y2="832" x1="2048" />
            <wire x2="2288" y1="816" y2="816" x1="2272" />
            <wire x2="2304" y1="816" y2="816" x1="2288" />
            <wire x2="2272" y1="816" y2="832" x1="2272" />
        </branch>
        <branch name="SEGMENT(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="864" type="branch" />
            <wire x2="2272" y1="1024" y2="1024" x1="1920" />
            <wire x2="2288" y1="864" y2="864" x1="2272" />
            <wire x2="2304" y1="864" y2="864" x1="2288" />
            <wire x2="2272" y1="864" y2="1024" x1="2272" />
        </branch>
        <branch name="SEGMENT(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="960" type="branch" />
            <wire x2="1984" y1="768" y2="768" x1="1920" />
            <wire x2="1984" y1="720" y2="768" x1="1984" />
            <wire x2="2112" y1="720" y2="720" x1="1984" />
            <wire x2="2112" y1="720" y2="960" x1="2112" />
            <wire x2="2288" y1="960" y2="960" x1="2112" />
            <wire x2="2304" y1="960" y2="960" x1="2288" />
        </branch>
        <branch name="SEGMENT(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="912" type="branch" />
            <wire x2="2000" y1="832" y2="832" x1="1920" />
            <wire x2="2000" y1="832" y2="912" x1="2000" />
            <wire x2="2288" y1="912" y2="912" x1="2000" />
            <wire x2="2304" y1="912" y2="912" x1="2288" />
        </branch>
        <branch name="SEGMENT(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="1008" type="branch" />
            <wire x2="1968" y1="704" y2="704" x1="1920" />
            <wire x2="1968" y1="704" y2="1008" x1="1968" />
            <wire x2="2288" y1="1008" y2="1008" x1="1968" />
            <wire x2="2304" y1="1008" y2="1008" x1="2288" />
        </branch>
        <branch name="BTN(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1160" y="960" type="branch" />
            <wire x2="1200" y1="960" y2="960" x1="1136" />
            <wire x2="1200" y1="896" y2="960" x1="1200" />
            <wire x2="1360" y1="896" y2="896" x1="1200" />
            <wire x2="1360" y1="720" y2="896" x1="1360" />
            <wire x2="1536" y1="720" y2="720" x1="1360" />
        </branch>
        <branch name="BTN(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1160" y="1040" type="branch" />
            <wire x2="1200" y1="1040" y2="1040" x1="1136" />
            <wire x2="1200" y1="976" y2="1040" x1="1200" />
            <wire x2="1344" y1="976" y2="976" x1="1200" />
            <wire x2="1344" y1="640" y2="976" x1="1344" />
            <wire x2="1536" y1="640" y2="640" x1="1344" />
        </branch>
        <branch name="SW(7:0)">
            <wire x2="896" y1="1744" y2="1744" x1="720" />
            <wire x2="896" y1="608" y2="640" x1="896" />
            <wire x2="896" y1="640" y2="720" x1="896" />
            <wire x2="896" y1="720" y2="800" x1="896" />
            <wire x2="896" y1="800" y2="864" x1="896" />
            <wire x2="896" y1="864" y2="1504" x1="896" />
            <wire x2="896" y1="1504" y2="1568" x1="896" />
            <wire x2="896" y1="1568" y2="1632" x1="896" />
            <wire x2="896" y1="1632" y2="1696" x1="896" />
            <wire x2="896" y1="1696" y2="1744" x1="896" />
        </branch>
        <branch name="SW(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1032" y="1696" type="branch" />
            <wire x2="1032" y1="1696" y2="1696" x1="992" />
            <wire x2="1408" y1="1696" y2="1696" x1="1032" />
        </branch>
        <bustap x2="992" y1="1504" y2="1504" x1="896" />
        <bustap x2="992" y1="1568" y2="1568" x1="896" />
        <bustap x2="992" y1="1632" y2="1632" x1="896" />
        <bustap x2="992" y1="1696" y2="1696" x1="896" />
        <bustap x2="992" y1="640" y2="640" x1="896" />
        <bustap x2="992" y1="720" y2="720" x1="896" />
        <branch name="SW(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1048" y="720" type="branch" />
            <wire x2="1048" y1="720" y2="720" x1="992" />
            <wire x2="1104" y1="720" y2="720" x1="1048" />
            <wire x2="1312" y1="720" y2="720" x1="1104" />
            <wire x2="1312" y1="720" y2="1040" x1="1312" />
            <wire x2="1536" y1="1040" y2="1040" x1="1312" />
        </branch>
        <bustap x2="992" y1="800" y2="800" x1="896" />
        <bustap x2="992" y1="864" y2="864" x1="896" />
        <branch name="SW(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1016" y="864" type="branch" />
            <wire x2="1016" y1="864" y2="864" x1="992" />
            <wire x2="1040" y1="864" y2="864" x1="1016" />
            <wire x2="1280" y1="864" y2="864" x1="1040" />
            <wire x2="1280" y1="864" y2="960" x1="1280" />
            <wire x2="1536" y1="960" y2="960" x1="1280" />
        </branch>
        <branch name="SW(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="800" type="branch" />
            <wire x2="1056" y1="800" y2="800" x1="992" />
            <wire x2="1120" y1="800" y2="800" x1="1056" />
            <wire x2="1120" y1="800" y2="880" x1="1120" />
            <wire x2="1536" y1="880" y2="880" x1="1120" />
        </branch>
        <branch name="SW(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="640" type="branch" />
            <wire x2="1040" y1="640" y2="640" x1="992" />
            <wire x2="1280" y1="640" y2="640" x1="1040" />
            <wire x2="1280" y1="640" y2="800" x1="1280" />
            <wire x2="1536" y1="800" y2="800" x1="1280" />
        </branch>
    </sheet>
</drawing>