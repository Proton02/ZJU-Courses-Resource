<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="A" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="B" />
        <signal name="C" />
        <signal name="Y(1)" />
        <signal name="Y(2)" />
        <signal name="Y(3)" />
        <signal name="Y(4)" />
        <signal name="Y(5)" />
        <signal name="Y(6)" />
        <signal name="Y(7)" />
        <signal name="Y(7:0)" />
        <signal name="XLXN_48" />
        <signal name="G2A" />
        <signal name="G" />
        <signal name="G2B" />
        <signal name="Y(0)" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="C" />
        <port polarity="Output" name="Y(7:0)" />
        <port polarity="Input" name="G2A" />
        <port polarity="Input" name="G" />
        <port polarity="Input" name="G2B" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
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
        <blockdef name="nor3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
        </blockdef>
        <blockdef name="nand3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="A" name="I" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="B" name="I" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="G" name="I" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_9">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_2" name="I2" />
            <blockpin signalname="Y(0)" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_10">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_4" name="I2" />
            <blockpin signalname="Y(1)" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_11">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_5" name="I2" />
            <blockpin signalname="Y(2)" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_12">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_6" name="I2" />
            <blockpin signalname="Y(3)" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_13">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_2" name="I2" />
            <blockpin signalname="Y(4)" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_14">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_4" name="I2" />
            <blockpin signalname="Y(5)" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_15">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_5" name="I2" />
            <blockpin signalname="Y(6)" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_16">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_6" name="I2" />
            <blockpin signalname="Y(7)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_17">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="nor3" name="XLXI_8">
            <blockpin signalname="G2B" name="I0" />
            <blockpin signalname="G2A" name="I1" />
            <blockpin signalname="XLXN_48" name="I2" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_19">
            <blockpin signalname="C" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="608" y="432" name="XLXI_1" orien="R0" />
        <instance x="1136" y="336" name="XLXI_3" orien="R0" />
        <instance x="1136" y="640" name="XLXI_4" orien="R0" />
        <instance x="1136" y="912" name="XLXI_5" orien="R0" />
        <instance x="1632" y="384" name="XLXI_9" orien="R0" />
        <instance x="1632" y="688" name="XLXI_10" orien="R0" />
        <instance x="1632" y="960" name="XLXI_11" orien="R0" />
        <instance x="1632" y="1248" name="XLXI_12" orien="R0" />
        <instance x="1632" y="1808" name="XLXI_14" orien="R0" />
        <instance x="1632" y="2128" name="XLXI_15" orien="R0" />
        <instance x="1632" y="2432" name="XLXI_16" orien="R0" />
        <instance x="1136" y="1200" name="XLXI_17" orien="R0" />
        <instance x="1136" y="2432" name="XLXI_8" orien="R0" />
        <instance x="608" y="2272" name="XLXI_7" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="1440" y1="240" y2="240" x1="1392" />
            <wire x2="1440" y1="240" y2="1328" x1="1440" />
            <wire x2="1632" y1="1328" y2="1328" x1="1440" />
            <wire x2="1440" y1="192" y2="240" x1="1440" />
            <wire x2="1632" y1="192" y2="192" x1="1440" />
        </branch>
        <instance x="1632" y="1520" name="XLXI_13" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="1472" y1="544" y2="544" x1="1392" />
            <wire x2="1472" y1="544" y2="1616" x1="1472" />
            <wire x2="1632" y1="1616" y2="1616" x1="1472" />
            <wire x2="1472" y1="496" y2="544" x1="1472" />
            <wire x2="1616" y1="496" y2="496" x1="1472" />
            <wire x2="1632" y1="496" y2="496" x1="1616" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1504" y1="816" y2="816" x1="1392" />
            <wire x2="1504" y1="816" y2="1936" x1="1504" />
            <wire x2="1632" y1="1936" y2="1936" x1="1504" />
            <wire x2="1504" y1="768" y2="816" x1="1504" />
            <wire x2="1632" y1="768" y2="768" x1="1504" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1536" y1="1104" y2="1104" x1="1392" />
            <wire x2="1536" y1="1104" y2="2240" x1="1536" />
            <wire x2="1632" y1="2240" y2="2240" x1="1536" />
            <wire x2="1536" y1="1056" y2="1104" x1="1536" />
            <wire x2="1632" y1="1056" y2="1056" x1="1536" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1568" y1="1296" y2="1296" x1="1392" />
            <wire x2="1632" y1="320" y2="320" x1="1568" />
            <wire x2="1568" y1="320" y2="624" x1="1568" />
            <wire x2="1632" y1="624" y2="624" x1="1568" />
            <wire x2="1568" y1="624" y2="896" x1="1568" />
            <wire x2="1568" y1="896" y2="1184" x1="1568" />
            <wire x2="1632" y1="1184" y2="1184" x1="1568" />
            <wire x2="1568" y1="1184" y2="1296" x1="1568" />
            <wire x2="1632" y1="896" y2="896" x1="1568" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1600" y1="2304" y2="2304" x1="1392" />
            <wire x2="1632" y1="2304" y2="2304" x1="1600" />
            <wire x2="1632" y1="256" y2="256" x1="1600" />
            <wire x2="1600" y1="256" y2="560" x1="1600" />
            <wire x2="1632" y1="560" y2="560" x1="1600" />
            <wire x2="1600" y1="560" y2="832" x1="1600" />
            <wire x2="1600" y1="832" y2="1120" x1="1600" />
            <wire x2="1600" y1="1120" y2="1392" x1="1600" />
            <wire x2="1600" y1="1392" y2="1680" x1="1600" />
            <wire x2="1600" y1="1680" y2="2000" x1="1600" />
            <wire x2="1600" y1="2000" y2="2304" x1="1600" />
            <wire x2="1632" y1="2000" y2="2000" x1="1600" />
            <wire x2="1632" y1="1680" y2="1680" x1="1600" />
            <wire x2="1632" y1="1392" y2="1392" x1="1600" />
            <wire x2="1632" y1="1120" y2="1120" x1="1600" />
            <wire x2="1632" y1="832" y2="832" x1="1600" />
        </branch>
        <branch name="A">
            <wire x2="592" y1="512" y2="512" x1="240" />
            <wire x2="608" y1="512" y2="512" x1="592" />
            <wire x2="992" y1="512" y2="512" x1="608" />
            <wire x2="1136" y1="512" y2="512" x1="992" />
            <wire x2="992" y1="512" y2="1072" x1="992" />
            <wire x2="1136" y1="1072" y2="1072" x1="992" />
            <wire x2="608" y1="400" y2="400" x1="592" />
            <wire x2="592" y1="400" y2="512" x1="592" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="960" y1="400" y2="400" x1="832" />
            <wire x2="960" y1="400" y2="784" x1="960" />
            <wire x2="1136" y1="784" y2="784" x1="960" />
            <wire x2="960" y1="208" y2="400" x1="960" />
            <wire x2="1136" y1="208" y2="208" x1="960" />
        </branch>
        <instance x="608" y="800" name="XLXI_2" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="1024" y1="768" y2="768" x1="832" />
            <wire x2="1024" y1="272" y2="576" x1="1024" />
            <wire x2="1024" y1="576" y2="768" x1="1024" />
            <wire x2="1136" y1="576" y2="576" x1="1024" />
            <wire x2="1136" y1="272" y2="272" x1="1024" />
        </branch>
        <branch name="B">
            <wire x2="592" y1="880" y2="880" x1="240" />
            <wire x2="608" y1="880" y2="880" x1="592" />
            <wire x2="1040" y1="880" y2="880" x1="608" />
            <wire x2="1040" y1="880" y2="1136" x1="1040" />
            <wire x2="1136" y1="1136" y2="1136" x1="1040" />
            <wire x2="608" y1="768" y2="768" x1="592" />
            <wire x2="592" y1="768" y2="880" x1="592" />
            <wire x2="1040" y1="848" y2="880" x1="1040" />
            <wire x2="1136" y1="848" y2="848" x1="1040" />
        </branch>
        <instance x="1168" y="1328" name="XLXI_19" orien="R0" />
        <branch name="C">
            <wire x2="1152" y1="1456" y2="1456" x1="240" />
            <wire x2="1168" y1="1456" y2="1456" x1="1152" />
            <wire x2="1568" y1="1456" y2="1456" x1="1168" />
            <wire x2="1632" y1="1456" y2="1456" x1="1568" />
            <wire x2="1568" y1="1456" y2="1744" x1="1568" />
            <wire x2="1568" y1="1744" y2="2064" x1="1568" />
            <wire x2="1568" y1="2064" y2="2368" x1="1568" />
            <wire x2="1632" y1="2368" y2="2368" x1="1568" />
            <wire x2="1632" y1="2064" y2="2064" x1="1568" />
            <wire x2="1632" y1="1744" y2="1744" x1="1568" />
            <wire x2="1168" y1="1296" y2="1296" x1="1152" />
            <wire x2="1152" y1="1296" y2="1456" x1="1152" />
        </branch>
        <branch name="Y(7:0)">
            <wire x2="2976" y1="784" y2="928" x1="2976" />
            <wire x2="2976" y1="928" y2="944" x1="2976" />
            <wire x2="2976" y1="944" y2="1056" x1="2976" />
            <wire x2="2976" y1="1056" y2="1184" x1="2976" />
            <wire x2="2976" y1="1184" y2="1296" x1="2976" />
            <wire x2="2976" y1="1296" y2="1392" x1="2976" />
            <wire x2="3104" y1="1392" y2="1392" x1="2976" />
            <wire x2="2976" y1="1392" y2="1488" x1="2976" />
            <wire x2="2976" y1="1488" y2="1600" x1="2976" />
            <wire x2="2976" y1="1600" y2="1760" x1="2976" />
            <wire x2="2976" y1="1760" y2="1904" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="3104" y="1392" name="Y(7:0)" orien="R0" />
        <branch name="Y(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2816" y="1184" type="branch" />
            <wire x2="1904" y1="832" y2="832" x1="1888" />
            <wire x2="2224" y1="832" y2="832" x1="1904" />
            <wire x2="2224" y1="832" y2="1184" x1="2224" />
            <wire x2="2752" y1="1184" y2="1184" x1="2224" />
            <wire x2="2816" y1="1184" y2="1184" x1="2752" />
            <wire x2="2880" y1="1184" y2="1184" x1="2816" />
        </branch>
        <branch name="Y(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2816" y="1296" type="branch" />
            <wire x2="2192" y1="1120" y2="1120" x1="1888" />
            <wire x2="2192" y1="1120" y2="1296" x1="2192" />
            <wire x2="2752" y1="1296" y2="1296" x1="2192" />
            <wire x2="2816" y1="1296" y2="1296" x1="2752" />
            <wire x2="2880" y1="1296" y2="1296" x1="2816" />
        </branch>
        <branch name="Y(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2816" y="1392" type="branch" />
            <wire x2="1904" y1="1392" y2="1392" x1="1888" />
            <wire x2="2752" y1="1392" y2="1392" x1="1904" />
            <wire x2="2816" y1="1392" y2="1392" x1="2752" />
            <wire x2="2880" y1="1392" y2="1392" x1="2816" />
        </branch>
        <branch name="Y(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2816" y="1488" type="branch" />
            <wire x2="2208" y1="1680" y2="1680" x1="1888" />
            <wire x2="2208" y1="1488" y2="1680" x1="2208" />
            <wire x2="2736" y1="1488" y2="1488" x1="2208" />
            <wire x2="2752" y1="1488" y2="1488" x1="2736" />
            <wire x2="2816" y1="1488" y2="1488" x1="2752" />
            <wire x2="2880" y1="1488" y2="1488" x1="2816" />
        </branch>
        <branch name="Y(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2816" y="1600" type="branch" />
            <wire x2="2240" y1="2000" y2="2000" x1="1888" />
            <wire x2="2240" y1="1600" y2="2000" x1="2240" />
            <wire x2="2752" y1="1600" y2="1600" x1="2240" />
            <wire x2="2816" y1="1600" y2="1600" x1="2752" />
            <wire x2="2880" y1="1600" y2="1600" x1="2816" />
        </branch>
        <branch name="Y(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2816" y="1760" type="branch" />
            <wire x2="2288" y1="2304" y2="2304" x1="1888" />
            <wire x2="2288" y1="1760" y2="2304" x1="2288" />
            <wire x2="2752" y1="1760" y2="1760" x1="2288" />
            <wire x2="2816" y1="1760" y2="1760" x1="2752" />
            <wire x2="2880" y1="1760" y2="1760" x1="2816" />
        </branch>
        <branch name="Y(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2800" y="1056" type="branch" />
            <wire x2="1904" y1="560" y2="560" x1="1888" />
            <wire x2="2272" y1="560" y2="560" x1="1904" />
            <wire x2="2272" y1="560" y2="1056" x1="2272" />
            <wire x2="2752" y1="1056" y2="1056" x1="2272" />
            <wire x2="2800" y1="1056" y2="1056" x1="2752" />
            <wire x2="2880" y1="1056" y2="1056" x1="2800" />
        </branch>
        <bustap x2="2880" y1="1184" y2="1184" x1="2976" />
        <bustap x2="2880" y1="1296" y2="1296" x1="2976" />
        <bustap x2="2880" y1="1392" y2="1392" x1="2976" />
        <bustap x2="2880" y1="1488" y2="1488" x1="2976" />
        <bustap x2="2880" y1="1600" y2="1600" x1="2976" />
        <bustap x2="2880" y1="1760" y2="1760" x1="2976" />
        <branch name="XLXN_48">
            <wire x2="1136" y1="2240" y2="2240" x1="832" />
        </branch>
        <branch name="G2A">
            <wire x2="608" y1="2304" y2="2304" x1="240" />
            <wire x2="1136" y1="2304" y2="2304" x1="608" />
        </branch>
        <branch name="G">
            <wire x2="608" y1="2240" y2="2240" x1="240" />
        </branch>
        <branch name="G2B">
            <wire x2="1136" y1="2368" y2="2368" x1="240" />
        </branch>
        <iomarker fontsize="28" x="240" y="512" name="A" orien="R180" />
        <iomarker fontsize="28" x="240" y="880" name="B" orien="R180" />
        <iomarker fontsize="28" x="240" y="1456" name="C" orien="R180" />
        <iomarker fontsize="28" x="240" y="2240" name="G" orien="R180" />
        <iomarker fontsize="28" x="240" y="2304" name="G2A" orien="R180" />
        <iomarker fontsize="28" x="240" y="2368" name="G2B" orien="R180" />
        <bustap x2="2880" y1="1056" y2="1056" x1="2976" />
        <branch name="Y(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2816" y="928" type="branch" />
            <wire x2="1904" y1="256" y2="256" x1="1888" />
            <wire x2="2304" y1="256" y2="256" x1="1904" />
            <wire x2="2304" y1="256" y2="928" x1="2304" />
            <wire x2="2752" y1="928" y2="928" x1="2304" />
            <wire x2="2816" y1="928" y2="928" x1="2752" />
            <wire x2="2880" y1="928" y2="928" x1="2816" />
        </branch>
        <bustap x2="2880" y1="928" y2="928" x1="2976" />
    </sheet>
</drawing>