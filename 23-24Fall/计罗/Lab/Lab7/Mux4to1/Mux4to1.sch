<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="s(1:0)" />
        <signal name="XLXN_3" />
        <signal name="XLXN_5" />
        <signal name="s(1)" />
        <signal name="s(0)" />
        <signal name="I0" />
        <signal name="I1" />
        <signal name="I2" />
        <signal name="I3" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="o" />
        <port polarity="Input" name="s(1:0)" />
        <port polarity="Input" name="I0" />
        <port polarity="Input" name="I1" />
        <port polarity="Input" name="I2" />
        <port polarity="Input" name="I3" />
        <port polarity="Output" name="o" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="XLXN_3" name="I1" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="s(0)" name="I0" />
            <blockpin signalname="XLXN_3" name="I1" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="s(1)" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="s(1)" name="I0" />
            <blockpin signalname="s(0)" name="I1" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="s(1)" name="I" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="s(0)" name="I" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="I0" name="I0" />
            <blockpin signalname="XLXN_24" name="I1" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="I1" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="I2" name="I0" />
            <blockpin signalname="XLXN_26" name="I1" />
            <blockpin signalname="XLXN_31" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="I3" name="I0" />
            <blockpin signalname="XLXN_27" name="I1" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_11">
            <blockpin signalname="XLXN_32" name="I0" />
            <blockpin signalname="XLXN_31" name="I1" />
            <blockpin signalname="XLXN_30" name="I2" />
            <blockpin signalname="XLXN_29" name="I3" />
            <blockpin signalname="o" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1728" y="848" name="XLXI_1" orien="R0" />
        <instance x="1728" y="1008" name="XLXI_2" orien="R0" />
        <instance x="1728" y="1168" name="XLXI_3" orien="R0" />
        <instance x="1728" y="1328" name="XLXI_4" orien="R0" />
        <branch name="s(1:0)">
            <wire x2="928" y1="784" y2="784" x1="768" />
            <wire x2="928" y1="784" y2="816" x1="928" />
            <wire x2="928" y1="816" y2="848" x1="928" />
            <wire x2="928" y1="848" y2="896" x1="928" />
            <wire x2="928" y1="896" y2="976" x1="928" />
            <wire x2="928" y1="976" y2="992" x1="928" />
            <wire x2="928" y1="992" y2="1024" x1="928" />
            <wire x2="928" y1="704" y2="720" x1="928" />
            <wire x2="928" y1="720" y2="784" x1="928" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1632" y1="720" y2="720" x1="1472" />
            <wire x2="1728" y1="720" y2="720" x1="1632" />
            <wire x2="1632" y1="720" y2="880" x1="1632" />
            <wire x2="1728" y1="880" y2="880" x1="1632" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1536" y1="816" y2="816" x1="1472" />
            <wire x2="1536" y1="816" y2="1040" x1="1536" />
            <wire x2="1728" y1="1040" y2="1040" x1="1536" />
            <wire x2="1728" y1="784" y2="784" x1="1536" />
            <wire x2="1536" y1="784" y2="816" x1="1536" />
        </branch>
        <bustap x2="1024" y1="720" y2="720" x1="928" />
        <branch name="s(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="720" type="branch" />
            <wire x2="1040" y1="720" y2="720" x1="1024" />
            <wire x2="1200" y1="720" y2="720" x1="1040" />
            <wire x2="1248" y1="720" y2="720" x1="1200" />
            <wire x2="1200" y1="720" y2="1104" x1="1200" />
            <wire x2="1728" y1="1104" y2="1104" x1="1200" />
            <wire x2="1200" y1="1104" y2="1264" x1="1200" />
            <wire x2="1728" y1="1264" y2="1264" x1="1200" />
        </branch>
        <bustap x2="1024" y1="992" y2="992" x1="928" />
        <branch name="s(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1048" y="992" type="branch" />
            <wire x2="1040" y1="992" y2="992" x1="1024" />
            <wire x2="1056" y1="992" y2="992" x1="1040" />
            <wire x2="1040" y1="816" y2="992" x1="1040" />
            <wire x2="1216" y1="816" y2="816" x1="1040" />
            <wire x2="1248" y1="816" y2="816" x1="1216" />
            <wire x2="1216" y1="816" y2="928" x1="1216" />
            <wire x2="1552" y1="928" y2="928" x1="1216" />
            <wire x2="1552" y1="928" y2="944" x1="1552" />
            <wire x2="1728" y1="944" y2="944" x1="1552" />
            <wire x2="1216" y1="928" y2="1200" x1="1216" />
            <wire x2="1728" y1="1200" y2="1200" x1="1216" />
        </branch>
        <instance x="1248" y="752" name="XLXI_5" orien="R0" />
        <instance x="1248" y="848" name="XLXI_6" orien="R0" />
        <instance x="2288" y="864" name="XLXI_7" orien="R0" />
        <instance x="2288" y="1040" name="XLXI_8" orien="R0" />
        <instance x="2288" y="1216" name="XLXI_9" orien="R0" />
        <instance x="2288" y="1392" name="XLXI_10" orien="R0" />
        <branch name="I0">
            <wire x2="1136" y1="1520" y2="1520" x1="848" />
            <wire x2="2032" y1="1520" y2="1520" x1="1136" />
            <wire x2="2032" y1="800" y2="1520" x1="2032" />
            <wire x2="2288" y1="800" y2="800" x1="2032" />
        </branch>
        <branch name="I1">
            <wire x2="1136" y1="1600" y2="1600" x1="848" />
            <wire x2="1712" y1="1600" y2="1600" x1="1136" />
            <wire x2="1712" y1="976" y2="1600" x1="1712" />
            <wire x2="2288" y1="976" y2="976" x1="1712" />
        </branch>
        <branch name="I2">
            <wire x2="1136" y1="1664" y2="1664" x1="848" />
            <wire x2="1696" y1="1664" y2="1664" x1="1136" />
            <wire x2="1696" y1="1152" y2="1664" x1="1696" />
            <wire x2="2288" y1="1152" y2="1152" x1="1696" />
        </branch>
        <branch name="I3">
            <wire x2="1120" y1="1744" y2="1744" x1="848" />
            <wire x2="2288" y1="1328" y2="1328" x1="1120" />
            <wire x2="1120" y1="1328" y2="1744" x1="1120" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="2128" y1="752" y2="752" x1="1984" />
            <wire x2="2128" y1="736" y2="752" x1="2128" />
            <wire x2="2288" y1="736" y2="736" x1="2128" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="2288" y1="912" y2="912" x1="1984" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="2128" y1="1072" y2="1072" x1="1984" />
            <wire x2="2128" y1="1072" y2="1088" x1="2128" />
            <wire x2="2288" y1="1088" y2="1088" x1="2128" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="2128" y1="1232" y2="1232" x1="1984" />
            <wire x2="2128" y1="1232" y2="1264" x1="2128" />
            <wire x2="2288" y1="1264" y2="1264" x1="2128" />
        </branch>
        <instance x="2800" y="1152" name="XLXI_11" orien="R0" />
        <branch name="XLXN_29">
            <wire x2="2800" y1="768" y2="768" x1="2544" />
            <wire x2="2800" y1="768" y2="896" x1="2800" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="2560" y1="944" y2="944" x1="2544" />
            <wire x2="2560" y1="944" y2="960" x1="2560" />
            <wire x2="2800" y1="960" y2="960" x1="2560" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="2672" y1="1120" y2="1120" x1="2544" />
            <wire x2="2672" y1="1024" y2="1120" x1="2672" />
            <wire x2="2800" y1="1024" y2="1024" x1="2672" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="2800" y1="1296" y2="1296" x1="2544" />
            <wire x2="2800" y1="1088" y2="1296" x1="2800" />
        </branch>
        <branch name="o">
            <wire x2="3184" y1="992" y2="992" x1="3056" />
        </branch>
        <iomarker fontsize="28" x="768" y="784" name="s(1:0)" orien="R180" />
        <iomarker fontsize="28" x="848" y="1520" name="I0" orien="R180" />
        <iomarker fontsize="28" x="848" y="1600" name="I1" orien="R180" />
        <iomarker fontsize="28" x="848" y="1664" name="I2" orien="R180" />
        <iomarker fontsize="28" x="848" y="1744" name="I3" orien="R180" />
        <iomarker fontsize="28" x="3184" y="992" name="o" orien="R0" />
    </sheet>
</drawing>