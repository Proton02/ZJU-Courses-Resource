<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="Q" />
        <signal name="nQ" />
        <signal name="XLXN_5" />
        <signal name="C" />
        <signal name="S" />
        <signal name="R" />
        <port polarity="Output" name="Q" />
        <port polarity="Output" name="nQ" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="S" />
        <port polarity="Input" name="R" />
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
        <block symbolname="nand2" name="XLXI_2">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="S" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_3">
            <blockpin signalname="R" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_4">
            <blockpin signalname="nQ" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="Q" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_5">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="Q" name="I1" />
            <blockpin signalname="nQ" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="560" y="528" name="XLXI_2" orien="R0" />
        <instance x="560" y="848" name="XLXI_3" orien="R0" />
        <instance x="960" y="560" name="XLXI_4" orien="R0" />
        <instance x="960" y="816" name="XLXI_5" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="960" y1="432" y2="432" x1="816" />
        </branch>
        <branch name="Q">
            <wire x2="880" y1="608" y2="688" x1="880" />
            <wire x2="960" y1="688" y2="688" x1="880" />
            <wire x2="1296" y1="608" y2="608" x1="880" />
            <wire x2="1296" y1="464" y2="464" x1="1216" />
            <wire x2="1296" y1="464" y2="608" x1="1296" />
            <wire x2="1392" y1="464" y2="464" x1="1296" />
        </branch>
        <branch name="nQ">
            <wire x2="960" y1="496" y2="496" x1="896" />
            <wire x2="896" y1="496" y2="592" x1="896" />
            <wire x2="1280" y1="592" y2="592" x1="896" />
            <wire x2="1280" y1="592" y2="720" x1="1280" />
            <wire x2="1392" y1="720" y2="720" x1="1280" />
            <wire x2="1280" y1="720" y2="720" x1="1216" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="960" y1="752" y2="752" x1="816" />
        </branch>
        <branch name="C">
            <wire x2="544" y1="592" y2="592" x1="368" />
            <wire x2="544" y1="592" y2="720" x1="544" />
            <wire x2="560" y1="720" y2="720" x1="544" />
            <wire x2="560" y1="464" y2="464" x1="544" />
            <wire x2="544" y1="464" y2="592" x1="544" />
        </branch>
        <branch name="S">
            <wire x2="560" y1="400" y2="400" x1="368" />
        </branch>
        <branch name="R">
            <wire x2="560" y1="784" y2="784" x1="368" />
        </branch>
        <iomarker fontsize="28" x="368" y="400" name="S" orien="R180" />
        <iomarker fontsize="28" x="368" y="592" name="C" orien="R180" />
        <iomarker fontsize="28" x="368" y="784" name="R" orien="R180" />
        <iomarker fontsize="28" x="1392" y="464" name="Q" orien="R0" />
        <iomarker fontsize="28" x="1392" y="720" name="nQ" orien="R0" />
    </sheet>
</drawing>