<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="C" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="Q" />
        <signal name="nQ" />
        <signal name="S" />
        <signal name="R" />
        <port polarity="Input" name="C" />
        <port polarity="Output" name="Q" />
        <port polarity="Output" name="nQ" />
        <port polarity="Input" name="S" />
        <port polarity="Input" name="R" />
        <blockdef name="CSR_LATCH">
            <timestamp>2023-11-16T7:53:21</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <block symbolname="CSR_LATCH" name="XLXI_1">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="S" name="S" />
            <blockpin signalname="R" name="R" />
            <blockpin signalname="XLXN_4" name="Q" />
            <blockpin signalname="XLXN_5" name="nQ" />
        </block>
        <block symbolname="CSR_LATCH" name="XLXI_2">
            <blockpin signalname="XLXN_3" name="C" />
            <blockpin signalname="XLXN_4" name="S" />
            <blockpin signalname="XLXN_5" name="R" />
            <blockpin signalname="Q" name="Q" />
            <blockpin signalname="nQ" name="nQ" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="C" name="I" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="704" y="1056" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1776" y="1040" name="XLXI_2" orien="R0">
        </instance>
        <branch name="C">
            <wire x2="544" y1="896" y2="896" x1="384" />
            <wire x2="704" y1="896" y2="896" x1="544" />
            <wire x2="544" y1="896" y2="1120" x1="544" />
            <wire x2="1360" y1="1120" y2="1120" x1="544" />
        </branch>
        <instance x="1360" y="1152" name="XLXI_3" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="1680" y1="1120" y2="1120" x1="1584" />
            <wire x2="1680" y1="880" y2="1120" x1="1680" />
            <wire x2="1776" y1="880" y2="880" x1="1680" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1424" y1="896" y2="896" x1="1088" />
            <wire x2="1424" y1="896" y2="944" x1="1424" />
            <wire x2="1776" y1="944" y2="944" x1="1424" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1424" y1="1024" y2="1024" x1="1088" />
            <wire x2="1424" y1="1008" y2="1024" x1="1424" />
            <wire x2="1776" y1="1008" y2="1008" x1="1424" />
        </branch>
        <branch name="Q">
            <wire x2="2384" y1="880" y2="880" x1="2160" />
        </branch>
        <branch name="nQ">
            <wire x2="2384" y1="1008" y2="1008" x1="2160" />
        </branch>
        <branch name="S">
            <wire x2="704" y1="960" y2="960" x1="400" />
        </branch>
        <branch name="R">
            <wire x2="704" y1="1024" y2="1024" x1="400" />
        </branch>
        <iomarker fontsize="28" x="384" y="896" name="C" orien="R180" />
        <iomarker fontsize="28" x="400" y="960" name="S" orien="R180" />
        <iomarker fontsize="28" x="400" y="1024" name="R" orien="R180" />
        <iomarker fontsize="28" x="2384" y="880" name="Q" orien="R0" />
        <iomarker fontsize="28" x="2384" y="1008" name="nQ" orien="R0" />
    </sheet>
</drawing>