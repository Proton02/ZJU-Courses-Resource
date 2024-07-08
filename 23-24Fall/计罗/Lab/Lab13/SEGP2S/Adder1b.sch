<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A" />
        <signal name="XLXN_2" />
        <signal name="S" />
        <signal name="B" />
        <signal name="C" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="Co" />
        <port polarity="Input" name="A" />
        <port polarity="Output" name="S" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="C" />
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
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="S" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_6">
            <blockpin signalname="XLXN_14" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="XLXN_12" name="I2" />
            <blockpin signalname="Co" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="992" y="912" name="XLXI_1" orien="R0" />
        <instance x="1680" y="1168" name="XLXI_2" orien="R0" />
        <instance x="1200" y="1488" name="XLXI_3" orien="R0" />
        <instance x="1200" y="1792" name="XLXI_4" orien="R0" />
        <instance x="1200" y="2096" name="XLXI_5" orien="R0" />
        <instance x="2000" y="1824" name="XLXI_6" orien="R0" />
        <branch name="A">
            <wire x2="640" y1="784" y2="784" x1="496" />
            <wire x2="992" y1="784" y2="784" x1="640" />
            <wire x2="640" y1="784" y2="1344" x1="640" />
            <wire x2="640" y1="1344" y2="1360" x1="640" />
            <wire x2="1200" y1="1360" y2="1360" x1="640" />
            <wire x2="640" y1="1360" y2="1968" x1="640" />
            <wire x2="1200" y1="1968" y2="1968" x1="640" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1456" y1="816" y2="816" x1="1248" />
            <wire x2="1456" y1="816" y2="1040" x1="1456" />
            <wire x2="1680" y1="1040" y2="1040" x1="1456" />
        </branch>
        <branch name="S">
            <wire x2="2272" y1="1072" y2="1072" x1="1936" />
        </branch>
        <branch name="B">
            <wire x2="752" y1="848" y2="848" x1="496" />
            <wire x2="992" y1="848" y2="848" x1="752" />
            <wire x2="752" y1="848" y2="1424" x1="752" />
            <wire x2="1200" y1="1424" y2="1424" x1="752" />
            <wire x2="752" y1="1424" y2="1664" x1="752" />
            <wire x2="1200" y1="1664" y2="1664" x1="752" />
        </branch>
        <branch name="C">
            <wire x2="880" y1="1104" y2="1104" x1="496" />
            <wire x2="1680" y1="1104" y2="1104" x1="880" />
            <wire x2="880" y1="1104" y2="1728" x1="880" />
            <wire x2="1200" y1="1728" y2="1728" x1="880" />
            <wire x2="880" y1="1728" y2="2032" x1="880" />
            <wire x2="1200" y1="2032" y2="2032" x1="880" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="2000" y1="1392" y2="1392" x1="1456" />
            <wire x2="2000" y1="1392" y2="1632" x1="2000" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="2000" y1="1696" y2="1696" x1="1456" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="2000" y1="2000" y2="2000" x1="1456" />
            <wire x2="2000" y1="1760" y2="2000" x1="2000" />
        </branch>
        <branch name="Co">
            <wire x2="2432" y1="1696" y2="1696" x1="2256" />
        </branch>
        <iomarker fontsize="28" x="496" y="784" name="A" orien="R180" />
        <iomarker fontsize="28" x="496" y="848" name="B" orien="R180" />
        <iomarker fontsize="28" x="496" y="1104" name="C" orien="R180" />
        <iomarker fontsize="28" x="2272" y="1072" name="S" orien="R0" />
        <iomarker fontsize="28" x="2432" y="1696" name="Co" orien="R0" />
    </sheet>
</drawing>