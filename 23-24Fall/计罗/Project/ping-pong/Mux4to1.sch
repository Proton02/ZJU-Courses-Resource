<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="s(1:0)" />
        <signal name="XLXN_2(1:0)" />
        <signal name="s(1)" />
        <signal name="s(0)" />
        <signal name="XLXN_9" />
        <signal name="XLXN_8" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="I0" />
        <signal name="I1" />
        <signal name="I2" />
        <signal name="I3" />
        <signal name="XLXN_18" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
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
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="s(1)" name="I" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="s(0)" name="I" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="s(0)" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="s(1)" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="s(1)" name="I0" />
            <blockpin signalname="s(0)" name="I1" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="I0" name="I0" />
            <blockpin signalname="XLXN_10" name="I1" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="I1" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="I2" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="I3" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_11">
            <blockpin signalname="XLXN_22" name="I0" />
            <blockpin signalname="XLXN_21" name="I1" />
            <blockpin signalname="XLXN_20" name="I2" />
            <blockpin signalname="XLXN_18" name="I3" />
            <blockpin signalname="o" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1600" y="832" name="XLXI_1" orien="R0" />
        <instance x="1056" y="736" name="XLXI_2" orien="R0" />
        <instance x="1056" y="848" name="XLXI_3" orien="R0" />
        <branch name="s(1:0)">
            <wire x2="624" y1="784" y2="784" x1="576" />
            <wire x2="624" y1="784" y2="848" x1="624" />
            <wire x2="624" y1="848" y2="928" x1="624" />
            <wire x2="624" y1="624" y2="704" x1="624" />
            <wire x2="624" y1="704" y2="784" x1="624" />
        </branch>
        <bustap x2="720" y1="704" y2="704" x1="624" />
        <branch name="s(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="760" y="704" type="branch" />
            <wire x2="760" y1="704" y2="704" x1="720" />
            <wire x2="768" y1="704" y2="704" x1="760" />
            <wire x2="832" y1="704" y2="704" x1="768" />
            <wire x2="1056" y1="704" y2="704" x1="832" />
            <wire x2="832" y1="704" y2="1168" x1="832" />
            <wire x2="832" y1="1168" y2="1376" x1="832" />
            <wire x2="1600" y1="1376" y2="1376" x1="832" />
            <wire x2="1600" y1="1168" y2="1168" x1="832" />
        </branch>
        <bustap x2="720" y1="848" y2="848" x1="624" />
        <branch name="s(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="752" y="848" type="branch" />
            <wire x2="752" y1="848" y2="848" x1="720" />
            <wire x2="784" y1="848" y2="848" x1="752" />
            <wire x2="784" y1="816" y2="848" x1="784" />
            <wire x2="960" y1="816" y2="816" x1="784" />
            <wire x2="1056" y1="816" y2="816" x1="960" />
            <wire x2="960" y1="816" y2="976" x1="960" />
            <wire x2="960" y1="976" y2="1312" x1="960" />
            <wire x2="1600" y1="1312" y2="1312" x1="960" />
            <wire x2="1600" y1="976" y2="976" x1="960" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1440" y1="816" y2="816" x1="1280" />
            <wire x2="1440" y1="816" y2="1104" x1="1440" />
            <wire x2="1600" y1="1104" y2="1104" x1="1440" />
            <wire x2="1440" y1="768" y2="816" x1="1440" />
            <wire x2="1600" y1="768" y2="768" x1="1440" />
        </branch>
        <instance x="1600" y="1040" name="XLXI_4" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="1520" y1="704" y2="704" x1="1280" />
            <wire x2="1600" y1="704" y2="704" x1="1520" />
            <wire x2="1520" y1="704" y2="912" x1="1520" />
            <wire x2="1600" y1="912" y2="912" x1="1520" />
        </branch>
        <instance x="1600" y="1232" name="XLXI_5" orien="R0" />
        <instance x="1600" y="1440" name="XLXI_6" orien="R0" />
        <iomarker fontsize="28" x="576" y="784" name="s(1:0)" orien="R180" />
        <instance x="2336" y="864" name="XLXI_7" orien="R0" />
        <instance x="2336" y="1072" name="XLXI_8" orien="R0" />
        <instance x="2336" y="1264" name="XLXI_9" orien="R0" />
        <instance x="2336" y="1472" name="XLXI_10" orien="R0" />
        <branch name="XLXN_10">
            <wire x2="2336" y1="736" y2="736" x1="1856" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="2336" y1="944" y2="944" x1="1856" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="2336" y1="1136" y2="1136" x1="1856" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="2336" y1="1344" y2="1344" x1="1856" />
        </branch>
        <branch name="I0">
            <wire x2="1920" y1="1536" y2="1536" x1="592" />
            <wire x2="2336" y1="800" y2="800" x1="1920" />
            <wire x2="1920" y1="800" y2="1536" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="592" y="1536" name="I0" orien="R180" />
        <branch name="I1">
            <wire x2="2016" y1="1616" y2="1616" x1="592" />
            <wire x2="2336" y1="1008" y2="1008" x1="2016" />
            <wire x2="2016" y1="1008" y2="1616" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="592" y="1616" name="I1" orien="R180" />
        <branch name="I2">
            <wire x2="2112" y1="1744" y2="1744" x1="592" />
            <wire x2="2336" y1="1200" y2="1200" x1="2112" />
            <wire x2="2112" y1="1200" y2="1744" x1="2112" />
        </branch>
        <iomarker fontsize="28" x="592" y="1744" name="I2" orien="R180" />
        <branch name="I3">
            <wire x2="2192" y1="1888" y2="1888" x1="592" />
            <wire x2="2336" y1="1408" y2="1408" x1="2192" />
            <wire x2="2192" y1="1408" y2="1888" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="592" y="1888" name="I3" orien="R180" />
        <instance x="2912" y="1200" name="XLXI_11" orien="R0" />
        <branch name="XLXN_18">
            <wire x2="2912" y1="768" y2="768" x1="2592" />
            <wire x2="2912" y1="768" y2="944" x1="2912" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="2752" y1="976" y2="976" x1="2592" />
            <wire x2="2752" y1="976" y2="1008" x1="2752" />
            <wire x2="2912" y1="1008" y2="1008" x1="2752" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="2752" y1="1168" y2="1168" x1="2592" />
            <wire x2="2752" y1="1072" y2="1168" x1="2752" />
            <wire x2="2912" y1="1072" y2="1072" x1="2752" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="2912" y1="1376" y2="1376" x1="2592" />
            <wire x2="2912" y1="1136" y2="1376" x1="2912" />
        </branch>
        <branch name="o">
            <wire x2="3200" y1="1040" y2="1040" x1="3168" />
        </branch>
        <iomarker fontsize="28" x="3200" y="1040" name="o" orien="R0" />
    </sheet>
</drawing>