<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="s(1:0)" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
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
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="s(0)" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="s(1)" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="s(1)" name="I0" />
            <blockpin signalname="s(0)" name="I1" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="s(1)" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="s(0)" name="I" />
            <blockpin signalname="XLXN_8" name="O" />
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
        <instance x="1200" y="528" name="XLXI_1" orien="R0" />
        <instance x="1200" y="688" name="XLXI_2" orien="R0" />
        <instance x="1200" y="848" name="XLXI_3" orien="R0" />
        <instance x="1200" y="1008" name="XLXI_4" orien="R0" />
        <branch name="s(1:0)">
            <wire x2="400" y1="464" y2="464" x1="240" />
            <wire x2="400" y1="464" y2="496" x1="400" />
            <wire x2="400" y1="496" y2="528" x1="400" />
            <wire x2="400" y1="528" y2="576" x1="400" />
            <wire x2="400" y1="576" y2="656" x1="400" />
            <wire x2="400" y1="656" y2="672" x1="400" />
            <wire x2="400" y1="672" y2="704" x1="400" />
            <wire x2="400" y1="384" y2="400" x1="400" />
            <wire x2="400" y1="400" y2="464" x1="400" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1104" y1="400" y2="400" x1="944" />
            <wire x2="1200" y1="400" y2="400" x1="1104" />
            <wire x2="1104" y1="400" y2="560" x1="1104" />
            <wire x2="1200" y1="560" y2="560" x1="1104" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1008" y1="496" y2="496" x1="944" />
            <wire x2="1008" y1="496" y2="720" x1="1008" />
            <wire x2="1200" y1="720" y2="720" x1="1008" />
            <wire x2="1200" y1="464" y2="464" x1="1008" />
            <wire x2="1008" y1="464" y2="496" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="240" y="464" name="s(1:0)" orien="R180" />
        <bustap x2="496" y1="400" y2="400" x1="400" />
        <branch name="s(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="512" y="400" type="branch" />
            <wire x2="512" y1="400" y2="400" x1="496" />
            <wire x2="672" y1="400" y2="400" x1="512" />
            <wire x2="720" y1="400" y2="400" x1="672" />
            <wire x2="672" y1="400" y2="784" x1="672" />
            <wire x2="1200" y1="784" y2="784" x1="672" />
            <wire x2="672" y1="784" y2="944" x1="672" />
            <wire x2="1200" y1="944" y2="944" x1="672" />
        </branch>
        <bustap x2="496" y1="672" y2="672" x1="400" />
        <branch name="s(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="520" y="672" type="branch" />
            <wire x2="512" y1="672" y2="672" x1="496" />
            <wire x2="528" y1="672" y2="672" x1="512" />
            <wire x2="512" y1="496" y2="672" x1="512" />
            <wire x2="688" y1="496" y2="496" x1="512" />
            <wire x2="720" y1="496" y2="496" x1="688" />
            <wire x2="688" y1="496" y2="608" x1="688" />
            <wire x2="1024" y1="608" y2="608" x1="688" />
            <wire x2="1024" y1="608" y2="624" x1="1024" />
            <wire x2="1200" y1="624" y2="624" x1="1024" />
            <wire x2="688" y1="608" y2="880" x1="688" />
            <wire x2="1200" y1="880" y2="880" x1="688" />
        </branch>
        <instance x="720" y="432" name="XLXI_5" orien="R0" />
        <instance x="720" y="528" name="XLXI_6" orien="R0" />
        <instance x="1760" y="544" name="XLXI_7" orien="R0" />
        <instance x="1760" y="720" name="XLXI_8" orien="R0" />
        <instance x="1760" y="896" name="XLXI_9" orien="R0" />
        <instance x="1760" y="1072" name="XLXI_10" orien="R0" />
        <branch name="I0">
            <wire x2="608" y1="1200" y2="1200" x1="320" />
            <wire x2="1504" y1="1200" y2="1200" x1="608" />
            <wire x2="1504" y1="480" y2="1200" x1="1504" />
            <wire x2="1760" y1="480" y2="480" x1="1504" />
        </branch>
        <branch name="I1">
            <wire x2="608" y1="1280" y2="1280" x1="320" />
            <wire x2="1184" y1="1280" y2="1280" x1="608" />
            <wire x2="1184" y1="656" y2="1280" x1="1184" />
            <wire x2="1760" y1="656" y2="656" x1="1184" />
        </branch>
        <branch name="I2">
            <wire x2="608" y1="1344" y2="1344" x1="320" />
            <wire x2="1168" y1="1344" y2="1344" x1="608" />
            <wire x2="1168" y1="832" y2="1344" x1="1168" />
            <wire x2="1760" y1="832" y2="832" x1="1168" />
        </branch>
        <branch name="I3">
            <wire x2="592" y1="1424" y2="1424" x1="320" />
            <wire x2="1760" y1="1008" y2="1008" x1="592" />
            <wire x2="592" y1="1008" y2="1424" x1="592" />
        </branch>
        <iomarker fontsize="28" x="320" y="1200" name="I0" orien="R180" />
        <iomarker fontsize="28" x="320" y="1280" name="I1" orien="R180" />
        <iomarker fontsize="28" x="320" y="1344" name="I2" orien="R180" />
        <iomarker fontsize="28" x="320" y="1424" name="I3" orien="R180" />
        <branch name="XLXN_24">
            <wire x2="1600" y1="432" y2="432" x1="1456" />
            <wire x2="1600" y1="416" y2="432" x1="1600" />
            <wire x2="1760" y1="416" y2="416" x1="1600" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1760" y1="592" y2="592" x1="1456" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1600" y1="752" y2="752" x1="1456" />
            <wire x2="1600" y1="752" y2="768" x1="1600" />
            <wire x2="1760" y1="768" y2="768" x1="1600" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="1600" y1="912" y2="912" x1="1456" />
            <wire x2="1600" y1="912" y2="944" x1="1600" />
            <wire x2="1760" y1="944" y2="944" x1="1600" />
        </branch>
        <instance x="2272" y="832" name="XLXI_11" orien="R0" />
        <branch name="XLXN_29">
            <wire x2="2272" y1="448" y2="448" x1="2016" />
            <wire x2="2272" y1="448" y2="576" x1="2272" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="2032" y1="624" y2="624" x1="2016" />
            <wire x2="2032" y1="624" y2="640" x1="2032" />
            <wire x2="2272" y1="640" y2="640" x1="2032" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="2144" y1="800" y2="800" x1="2016" />
            <wire x2="2144" y1="704" y2="800" x1="2144" />
            <wire x2="2272" y1="704" y2="704" x1="2144" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="2272" y1="976" y2="976" x1="2016" />
            <wire x2="2272" y1="768" y2="976" x1="2272" />
        </branch>
        <branch name="o">
            <wire x2="2656" y1="672" y2="672" x1="2528" />
        </branch>
        <iomarker fontsize="28" x="2656" y="672" name="o" orien="R0" />
    </sheet>
</drawing>