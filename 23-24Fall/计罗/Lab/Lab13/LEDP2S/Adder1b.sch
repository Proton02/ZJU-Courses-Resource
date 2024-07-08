<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="C" />
        <signal name="A" />
        <signal name="B" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="S" />
        <signal name="Co" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <port polarity="Output" name="S" />
        <port polarity="Output" name="Co" />
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
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <block symbolname="xor2" name="XLXI_1">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="S" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_6">
            <blockpin signalname="XLXN_10" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_9" name="I2" />
            <blockpin signalname="Co" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="624" y="608" name="XLXI_1" orien="R0" />
        <instance x="1392" y="896" name="XLXI_2" orien="R0" />
        <instance x="1040" y="1312" name="XLXI_3" orien="R0" />
        <instance x="1024" y="1584" name="XLXI_4" orien="R0" />
        <instance x="1008" y="1856" name="XLXI_5" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1136" y1="512" y2="512" x1="880" />
            <wire x2="1136" y1="512" y2="768" x1="1136" />
            <wire x2="1392" y1="768" y2="768" x1="1136" />
        </branch>
        <branch name="C">
            <wire x2="720" y1="832" y2="832" x1="288" />
            <wire x2="1392" y1="832" y2="832" x1="720" />
            <wire x2="720" y1="832" y2="1520" x1="720" />
            <wire x2="720" y1="1520" y2="1792" x1="720" />
            <wire x2="1008" y1="1792" y2="1792" x1="720" />
            <wire x2="1024" y1="1520" y2="1520" x1="720" />
        </branch>
        <branch name="A">
            <wire x2="480" y1="480" y2="480" x1="384" />
            <wire x2="624" y1="480" y2="480" x1="480" />
            <wire x2="480" y1="480" y2="1184" x1="480" />
            <wire x2="480" y1="1184" y2="1728" x1="480" />
            <wire x2="1008" y1="1728" y2="1728" x1="480" />
            <wire x2="1040" y1="1184" y2="1184" x1="480" />
        </branch>
        <branch name="B">
            <wire x2="528" y1="544" y2="544" x1="384" />
            <wire x2="624" y1="544" y2="544" x1="528" />
            <wire x2="528" y1="544" y2="1248" x1="528" />
            <wire x2="528" y1="1248" y2="1456" x1="528" />
            <wire x2="1024" y1="1456" y2="1456" x1="528" />
            <wire x2="1040" y1="1248" y2="1248" x1="528" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1536" y1="1488" y2="1488" x1="1280" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1536" y1="1216" y2="1216" x1="1296" />
            <wire x2="1536" y1="1216" y2="1424" x1="1536" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1536" y1="1760" y2="1760" x1="1264" />
            <wire x2="1536" y1="1552" y2="1760" x1="1536" />
        </branch>
        <branch name="S">
            <wire x2="2320" y1="800" y2="800" x1="1648" />
        </branch>
        <branch name="Co">
            <wire x2="2304" y1="1488" y2="1488" x1="1792" />
            <wire x2="2320" y1="1472" y2="1472" x1="2304" />
            <wire x2="2304" y1="1472" y2="1488" x1="2304" />
        </branch>
        <iomarker fontsize="28" x="384" y="480" name="A" orien="R180" />
        <iomarker fontsize="28" x="384" y="544" name="B" orien="R180" />
        <iomarker fontsize="28" x="288" y="832" name="C" orien="R180" />
        <iomarker fontsize="28" x="2320" y="800" name="S" orien="R0" />
        <iomarker fontsize="28" x="2320" y="1472" name="Co" orien="R0" />
        <instance x="1536" y="1616" name="XLXI_6" orien="R0" />
    </sheet>
</drawing>