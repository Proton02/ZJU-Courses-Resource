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
        <signal name="XLXN_7" />
        <signal name="D" />
        <signal name="C" />
        <port polarity="Output" name="Q" />
        <port polarity="Output" name="Qbar" />
        <port polarity="Input" name="D" />
        <port polarity="Input" name="C" />
        <blockdef name="D_LATCH">
            <timestamp>2023-11-16T7:29:28</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="D_LATCH" name="XLXI_1">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="XLXN_7" name="D" />
            <blockpin signalname="Q" name="Q" />
            <blockpin signalname="Qbar" name="Qbar" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="D" name="I0" />
            <blockpin signalname="Qbar" name="I1" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1024" y="1408" name="XLXI_1" orien="R0">
        </instance>
        <branch name="Q">
            <wire x2="1440" y1="1312" y2="1312" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1440" y="1312" name="Q" orien="R0" />
        <branch name="Qbar">
            <wire x2="624" y1="1184" y2="1360" x1="624" />
            <wire x2="640" y1="1360" y2="1360" x1="624" />
            <wire x2="752" y1="1184" y2="1184" x1="624" />
            <wire x2="880" y1="1184" y2="1184" x1="752" />
            <wire x2="1536" y1="1184" y2="1184" x1="880" />
            <wire x2="1536" y1="1184" y2="1376" x1="1536" />
            <wire x2="1600" y1="1376" y2="1376" x1="1536" />
            <wire x2="1536" y1="1376" y2="1376" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1600" y="1376" name="Qbar" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="960" y1="1392" y2="1392" x1="896" />
            <wire x2="960" y1="1376" y2="1392" x1="960" />
            <wire x2="1024" y1="1376" y2="1376" x1="960" />
        </branch>
        <branch name="D">
            <wire x2="640" y1="1424" y2="1424" x1="336" />
        </branch>
        <iomarker fontsize="28" x="336" y="1424" name="D" orien="R180" />
        <branch name="C">
            <wire x2="1024" y1="1312" y2="1312" x1="336" />
        </branch>
        <iomarker fontsize="28" x="336" y="1312" name="C" orien="R180" />
        <instance x="640" y="1488" name="XLXI_3" orien="R0" />
    </sheet>
</drawing>