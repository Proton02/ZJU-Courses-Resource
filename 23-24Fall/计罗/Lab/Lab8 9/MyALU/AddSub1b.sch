<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Ci" />
        <signal name="A" />
        <signal name="XLXN_3" />
        <signal name="S" />
        <signal name="Co" />
        <signal name="B" />
        <signal name="Ctrl" />
        <port polarity="Input" name="Ci" />
        <port polarity="Input" name="A" />
        <port polarity="Output" name="S" />
        <port polarity="Output" name="Co" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="Ctrl" />
        <blockdef name="Adder1b">
            <timestamp>2023-11-7T10:59:38</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <block symbolname="Adder1b" name="XLXI_1">
            <blockpin signalname="Ci" name="C" />
            <blockpin signalname="A" name="A" />
            <blockpin signalname="XLXN_3" name="B" />
            <blockpin signalname="S" name="S" />
            <blockpin signalname="Co" name="Co" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="Ctrl" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1024" y="1216" name="XLXI_1" orien="R0">
        </instance>
        <branch name="Ci">
            <wire x2="1008" y1="944" y2="944" x1="672" />
            <wire x2="1008" y1="944" y2="1056" x1="1008" />
            <wire x2="1024" y1="1056" y2="1056" x1="1008" />
        </branch>
        <branch name="A">
            <wire x2="944" y1="1008" y2="1008" x1="672" />
            <wire x2="944" y1="1008" y2="1120" x1="944" />
            <wire x2="1024" y1="1120" y2="1120" x1="944" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1024" y1="1184" y2="1184" x1="736" />
        </branch>
        <branch name="S">
            <wire x2="1536" y1="1056" y2="1056" x1="1408" />
        </branch>
        <branch name="Co">
            <wire x2="1536" y1="1184" y2="1184" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1536" y="1056" name="S" orien="R0" />
        <iomarker fontsize="28" x="1536" y="1184" name="Co" orien="R0" />
        <iomarker fontsize="28" x="672" y="944" name="Ci" orien="R180" />
        <iomarker fontsize="28" x="672" y="1008" name="A" orien="R180" />
        <instance x="480" y="1280" name="XLXI_2" orien="R0" />
        <branch name="B">
            <wire x2="480" y1="1152" y2="1152" x1="336" />
        </branch>
        <branch name="Ctrl">
            <wire x2="464" y1="1216" y2="1216" x1="336" />
            <wire x2="480" y1="1216" y2="1216" x1="464" />
        </branch>
        <iomarker fontsize="28" x="336" y="1152" name="B" orien="R180" />
        <iomarker fontsize="28" x="336" y="1216" name="Ctrl" orien="R180" />
    </sheet>
</drawing>