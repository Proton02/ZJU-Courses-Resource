<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="S" />
        <signal name="Qbar" />
        <signal name="R" />
        <signal name="Q" />
        <port polarity="Input" name="S" />
        <port polarity="Output" name="Qbar" />
        <port polarity="Input" name="R" />
        <port polarity="Output" name="Q" />
        <blockdef name="nor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
        </blockdef>
        <block symbolname="nor2" name="XLXI_1">
            <blockpin signalname="Q" name="I0" />
            <blockpin signalname="S" name="I1" />
            <blockpin signalname="Qbar" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_2">
            <blockpin signalname="R" name="I0" />
            <blockpin signalname="Qbar" name="I1" />
            <blockpin signalname="Q" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1152" y="1280" name="XLXI_1" orien="R0" />
        <instance x="1168" y="1536" name="XLXI_2" orien="R0" />
        <branch name="S">
            <wire x2="1152" y1="1152" y2="1152" x1="784" />
        </branch>
        <iomarker fontsize="28" x="784" y="1152" name="S" orien="R180" />
        <branch name="Qbar">
            <wire x2="1088" y1="1344" y2="1408" x1="1088" />
            <wire x2="1168" y1="1408" y2="1408" x1="1088" />
            <wire x2="1536" y1="1344" y2="1344" x1="1088" />
            <wire x2="1536" y1="1184" y2="1184" x1="1408" />
            <wire x2="2000" y1="1184" y2="1184" x1="1536" />
            <wire x2="1536" y1="1184" y2="1344" x1="1536" />
        </branch>
        <branch name="R">
            <wire x2="1168" y1="1472" y2="1472" x1="784" />
        </branch>
        <iomarker fontsize="28" x="784" y="1472" name="R" orien="R180" />
        <iomarker fontsize="28" x="2000" y="1184" name="Qbar" orien="R0" />
        <branch name="Q">
            <wire x2="1152" y1="1216" y2="1216" x1="1088" />
            <wire x2="1088" y1="1216" y2="1264" x1="1088" />
            <wire x2="1488" y1="1264" y2="1264" x1="1088" />
            <wire x2="1488" y1="1264" y2="1440" x1="1488" />
            <wire x2="1904" y1="1440" y2="1440" x1="1488" />
            <wire x2="1488" y1="1440" y2="1440" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="1904" y="1440" name="Q" orien="R0" />
    </sheet>
</drawing>