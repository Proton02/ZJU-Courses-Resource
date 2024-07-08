<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Q" />
        <signal name="Qbar" />
        <signal name="S" />
        <signal name="R" />
        <port polarity="Output" name="Q" />
        <port polarity="Output" name="Qbar" />
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
        <block symbolname="nand2" name="XLXI_1">
            <blockpin signalname="Qbar" name="I0" />
            <blockpin signalname="S" name="I1" />
            <blockpin signalname="Q" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_2">
            <blockpin signalname="R" name="I0" />
            <blockpin signalname="Q" name="I1" />
            <blockpin signalname="Qbar" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="1760" height="1360">
        <instance x="400" y="368" name="XLXI_1" orien="R0" />
        <instance x="400" y="608" name="XLXI_2" orien="R0" />
        <branch name="Q">
            <wire x2="336" y1="400" y2="480" x1="336" />
            <wire x2="400" y1="480" y2="480" x1="336" />
            <wire x2="736" y1="400" y2="400" x1="336" />
            <wire x2="736" y1="272" y2="272" x1="656" />
            <wire x2="736" y1="272" y2="400" x1="736" />
            <wire x2="880" y1="272" y2="272" x1="736" />
        </branch>
        <branch name="Qbar">
            <wire x2="400" y1="304" y2="304" x1="336" />
            <wire x2="336" y1="304" y2="384" x1="336" />
            <wire x2="720" y1="384" y2="384" x1="336" />
            <wire x2="720" y1="384" y2="512" x1="720" />
            <wire x2="880" y1="512" y2="512" x1="720" />
            <wire x2="720" y1="512" y2="512" x1="656" />
        </branch>
        <branch name="S">
            <wire x2="400" y1="240" y2="240" x1="160" />
        </branch>
        <branch name="R">
            <wire x2="384" y1="544" y2="544" x1="160" />
            <wire x2="400" y1="544" y2="544" x1="384" />
        </branch>
        <iomarker fontsize="28" x="160" y="240" name="S" orien="R180" />
        <iomarker fontsize="28" x="160" y="544" name="R" orien="R180" />
        <iomarker fontsize="28" x="880" y="272" name="Q" orien="R0" />
        <iomarker fontsize="28" x="880" y="512" name="Qbar" orien="R0" />
    </sheet>
</drawing>