<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="Q" />
        <signal name="Qbar" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="C" />
        <signal name="D" />
        <signal name="XLXN_9" />
        <port polarity="Output" name="Q" />
        <port polarity="Output" name="Qbar" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="D" />
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
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
        <block symbolname="nand2" name="XLXI_2">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_3">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_4">
            <blockpin signalname="Qbar" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="Q" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_5">
            <blockpin signalname="XLXN_2" name="I0" />
            <blockpin signalname="Q" name="I1" />
            <blockpin signalname="Qbar" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="D" name="I" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="880" y="608" name="XLXI_2" orien="R0" />
        <instance x="880" y="928" name="XLXI_3" orien="R0" />
        <instance x="1280" y="640" name="XLXI_4" orien="R0" />
        <instance x="1280" y="896" name="XLXI_5" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1280" y1="512" y2="512" x1="1136" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1280" y1="832" y2="832" x1="1136" />
        </branch>
        <branch name="Q">
            <wire x2="1616" y1="704" y2="704" x1="1216" />
            <wire x2="1216" y1="704" y2="768" x1="1216" />
            <wire x2="1280" y1="768" y2="768" x1="1216" />
            <wire x2="1616" y1="544" y2="544" x1="1536" />
            <wire x2="1616" y1="544" y2="704" x1="1616" />
            <wire x2="1760" y1="544" y2="544" x1="1616" />
        </branch>
        <branch name="Qbar">
            <wire x2="1280" y1="576" y2="576" x1="1216" />
            <wire x2="1216" y1="576" y2="656" x1="1216" />
            <wire x2="1600" y1="656" y2="656" x1="1216" />
            <wire x2="1600" y1="656" y2="800" x1="1600" />
            <wire x2="1760" y1="800" y2="800" x1="1600" />
            <wire x2="1600" y1="800" y2="800" x1="1536" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="880" y1="864" y2="864" x1="784" />
        </branch>
        <instance x="560" y="896" name="XLXI_6" orien="R0" />
        <branch name="C">
            <wire x2="864" y1="672" y2="672" x1="320" />
            <wire x2="864" y1="672" y2="800" x1="864" />
            <wire x2="880" y1="800" y2="800" x1="864" />
            <wire x2="880" y1="544" y2="544" x1="864" />
            <wire x2="864" y1="544" y2="672" x1="864" />
        </branch>
        <branch name="D">
            <wire x2="544" y1="480" y2="480" x1="320" />
            <wire x2="544" y1="480" y2="864" x1="544" />
            <wire x2="560" y1="864" y2="864" x1="544" />
            <wire x2="880" y1="480" y2="480" x1="544" />
        </branch>
        <iomarker fontsize="28" x="320" y="480" name="D" orien="R180" />
        <iomarker fontsize="28" x="320" y="672" name="C" orien="R180" />
        <iomarker fontsize="28" x="1760" y="544" name="Q" orien="R0" />
        <iomarker fontsize="28" x="1760" y="800" name="Qbar" orien="R0" />
    </sheet>
</drawing>