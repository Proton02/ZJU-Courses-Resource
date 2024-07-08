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
        <instance x="1472" y="800" name="XLXI_1" orien="R0" />
        <instance x="1472" y="960" name="XLXI_2" orien="R0" />
        <instance x="1472" y="1120" name="XLXI_3" orien="R0" />
        <instance x="1472" y="1280" name="XLXI_4" orien="R0" />
        <branch name="s(1:0)">
            <wire x2="672" y1="736" y2="736" x1="512" />
            <wire x2="672" y1="736" y2="768" x1="672" />
            <wire x2="672" y1="768" y2="800" x1="672" />
            <wire x2="672" y1="800" y2="848" x1="672" />
            <wire x2="672" y1="848" y2="928" x1="672" />
            <wire x2="672" y1="928" y2="944" x1="672" />
            <wire x2="672" y1="944" y2="976" x1="672" />
            <wire x2="672" y1="656" y2="672" x1="672" />
            <wire x2="672" y1="672" y2="736" x1="672" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1376" y1="672" y2="672" x1="1216" />
            <wire x2="1472" y1="672" y2="672" x1="1376" />
            <wire x2="1376" y1="672" y2="832" x1="1376" />
            <wire x2="1472" y1="832" y2="832" x1="1376" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1280" y1="768" y2="768" x1="1216" />
            <wire x2="1280" y1="768" y2="992" x1="1280" />
            <wire x2="1472" y1="992" y2="992" x1="1280" />
            <wire x2="1472" y1="736" y2="736" x1="1280" />
            <wire x2="1280" y1="736" y2="768" x1="1280" />
        </branch>
        <bustap x2="768" y1="672" y2="672" x1="672" />
        <branch name="s(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="784" y="672" type="branch" />
            <wire x2="784" y1="672" y2="672" x1="768" />
            <wire x2="944" y1="672" y2="672" x1="784" />
            <wire x2="992" y1="672" y2="672" x1="944" />
            <wire x2="944" y1="672" y2="1056" x1="944" />
            <wire x2="1472" y1="1056" y2="1056" x1="944" />
            <wire x2="944" y1="1056" y2="1216" x1="944" />
            <wire x2="1472" y1="1216" y2="1216" x1="944" />
        </branch>
        <bustap x2="768" y1="944" y2="944" x1="672" />
        <branch name="s(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="792" y="944" type="branch" />
            <wire x2="784" y1="944" y2="944" x1="768" />
            <wire x2="800" y1="944" y2="944" x1="784" />
            <wire x2="784" y1="768" y2="944" x1="784" />
            <wire x2="960" y1="768" y2="768" x1="784" />
            <wire x2="992" y1="768" y2="768" x1="960" />
            <wire x2="960" y1="768" y2="880" x1="960" />
            <wire x2="1296" y1="880" y2="880" x1="960" />
            <wire x2="1296" y1="880" y2="896" x1="1296" />
            <wire x2="1472" y1="896" y2="896" x1="1296" />
            <wire x2="960" y1="880" y2="1152" x1="960" />
            <wire x2="1472" y1="1152" y2="1152" x1="960" />
        </branch>
        <instance x="992" y="704" name="XLXI_5" orien="R0" />
        <instance x="992" y="800" name="XLXI_6" orien="R0" />
        <instance x="2032" y="816" name="XLXI_7" orien="R0" />
        <instance x="2032" y="992" name="XLXI_8" orien="R0" />
        <instance x="2032" y="1168" name="XLXI_9" orien="R0" />
        <instance x="2032" y="1344" name="XLXI_10" orien="R0" />
        <branch name="I0">
            <wire x2="880" y1="1472" y2="1472" x1="592" />
            <wire x2="1776" y1="1472" y2="1472" x1="880" />
            <wire x2="1776" y1="752" y2="1472" x1="1776" />
            <wire x2="2032" y1="752" y2="752" x1="1776" />
        </branch>
        <branch name="I1">
            <wire x2="880" y1="1552" y2="1552" x1="592" />
            <wire x2="1456" y1="1552" y2="1552" x1="880" />
            <wire x2="1456" y1="928" y2="1552" x1="1456" />
            <wire x2="2032" y1="928" y2="928" x1="1456" />
        </branch>
        <branch name="I2">
            <wire x2="880" y1="1616" y2="1616" x1="592" />
            <wire x2="1440" y1="1616" y2="1616" x1="880" />
            <wire x2="1440" y1="1104" y2="1616" x1="1440" />
            <wire x2="2032" y1="1104" y2="1104" x1="1440" />
        </branch>
        <branch name="I3">
            <wire x2="864" y1="1696" y2="1696" x1="592" />
            <wire x2="2032" y1="1280" y2="1280" x1="864" />
            <wire x2="864" y1="1280" y2="1696" x1="864" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1872" y1="704" y2="704" x1="1728" />
            <wire x2="1872" y1="688" y2="704" x1="1872" />
            <wire x2="2032" y1="688" y2="688" x1="1872" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="2032" y1="864" y2="864" x1="1728" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1872" y1="1024" y2="1024" x1="1728" />
            <wire x2="1872" y1="1024" y2="1040" x1="1872" />
            <wire x2="2032" y1="1040" y2="1040" x1="1872" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="1872" y1="1184" y2="1184" x1="1728" />
            <wire x2="1872" y1="1184" y2="1216" x1="1872" />
            <wire x2="2032" y1="1216" y2="1216" x1="1872" />
        </branch>
        <instance x="2544" y="1104" name="XLXI_11" orien="R0" />
        <branch name="XLXN_29">
            <wire x2="2544" y1="720" y2="720" x1="2288" />
            <wire x2="2544" y1="720" y2="848" x1="2544" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="2304" y1="896" y2="896" x1="2288" />
            <wire x2="2304" y1="896" y2="912" x1="2304" />
            <wire x2="2544" y1="912" y2="912" x1="2304" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="2416" y1="1072" y2="1072" x1="2288" />
            <wire x2="2416" y1="976" y2="1072" x1="2416" />
            <wire x2="2544" y1="976" y2="976" x1="2416" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="2544" y1="1248" y2="1248" x1="2288" />
            <wire x2="2544" y1="1040" y2="1248" x1="2544" />
        </branch>
        <branch name="o">
            <wire x2="2928" y1="944" y2="944" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="512" y="736" name="s(1:0)" orien="R180" />
        <iomarker fontsize="28" x="592" y="1472" name="I0" orien="R180" />
        <iomarker fontsize="28" x="592" y="1552" name="I1" orien="R180" />
        <iomarker fontsize="28" x="592" y="1616" name="I2" orien="R180" />
        <iomarker fontsize="28" x="592" y="1696" name="I3" orien="R180" />
        <iomarker fontsize="28" x="2928" y="944" name="o" orien="R0" />
    </sheet>
</drawing>