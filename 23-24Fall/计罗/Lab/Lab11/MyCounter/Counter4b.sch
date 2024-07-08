<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Qa" />
        <signal name="Qb" />
        <signal name="Qc" />
        <signal name="Qd" />
        <signal name="XLXN_8" />
        <signal name="XLXN_12" />
        <signal name="XLXN_16" />
        <signal name="XLXN_19" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="clk" />
        <signal name="Rc" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <port polarity="Output" name="Qa" />
        <port polarity="Output" name="Qb" />
        <port polarity="Output" name="Qc" />
        <port polarity="Output" name="Qd" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="Rc" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
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
        <blockdef name="nor3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
        </blockdef>
        <blockdef name="xnor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
            <circle r="8" cx="220" cy="-96" />
            <line x2="256" y1="-96" y2="-96" x1="228" />
            <line x2="60" y1="-28" y2="-28" x1="60" />
        </blockdef>
        <blockdef name="nor4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="216" y1="-160" y2="-160" x1="256" />
            <circle r="12" cx="204" cy="-160" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="Qa" name="I" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="Qb" name="I" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="Qc" name="I" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="Qd" name="I" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_6">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="nor3" name="XLXI_7">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_8" name="I2" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_8">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="Qa" name="I1" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_9">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="XLXN_29" name="I1" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_10">
            <blockpin signalname="XLXN_19" name="I0" />
            <blockpin signalname="XLXN_30" name="I1" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="nor4" name="XLXI_11">
            <blockpin signalname="XLXN_19" name="I0" />
            <blockpin signalname="XLXN_16" name="I1" />
            <blockpin signalname="XLXN_12" name="I2" />
            <blockpin signalname="XLXN_8" name="I3" />
            <blockpin signalname="Rc" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_12">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_8" name="D" />
            <blockpin signalname="Qa" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_13">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_26" name="D" />
            <blockpin signalname="Qb" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_14">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_27" name="D" />
            <blockpin signalname="Qc" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_15">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_28" name="D" />
            <blockpin signalname="Qd" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="480" y="1072" name="XLXI_1" orien="R0" />
        <instance x="480" y="1344" name="XLXI_2" orien="R0" />
        <instance x="480" y="1616" name="XLXI_3" orien="R0" />
        <instance x="480" y="2016" name="XLXI_5" orien="R0" />
        <instance x="912" y="1520" name="XLXI_6" orien="R0" />
        <instance x="912" y="1920" name="XLXI_7" orien="R0" />
        <instance x="1392" y="1376" name="XLXI_8" orien="R0" />
        <instance x="1392" y="1696" name="XLXI_9" orien="R0" />
        <instance x="1408" y="2048" name="XLXI_10" orien="R0" />
        <instance x="912" y="2480" name="XLXI_11" orien="R0" />
        <instance x="1872" y="1232" name="XLXI_12" orien="R0" />
        <instance x="1872" y="1536" name="XLXI_13" orien="R0" />
        <instance x="1872" y="1856" name="XLXI_14" orien="R0" />
        <instance x="1872" y="2208" name="XLXI_15" orien="R0" />
        <branch name="Qa">
            <wire x2="480" y1="816" y2="816" x1="464" />
            <wire x2="1376" y1="816" y2="816" x1="480" />
            <wire x2="2320" y1="816" y2="816" x1="1376" />
            <wire x2="2320" y1="816" y2="976" x1="2320" />
            <wire x2="2400" y1="976" y2="976" x1="2320" />
            <wire x2="1376" y1="816" y2="1248" x1="1376" />
            <wire x2="1392" y1="1248" y2="1248" x1="1376" />
            <wire x2="464" y1="816" y2="1040" x1="464" />
            <wire x2="480" y1="1040" y2="1040" x1="464" />
            <wire x2="2320" y1="976" y2="976" x1="2256" />
        </branch>
        <branch name="Qb">
            <wire x2="480" y1="1200" y2="1200" x1="464" />
            <wire x2="2320" y1="1200" y2="1200" x1="480" />
            <wire x2="2320" y1="1200" y2="1280" x1="2320" />
            <wire x2="2384" y1="1280" y2="1280" x1="2320" />
            <wire x2="464" y1="1200" y2="1312" x1="464" />
            <wire x2="480" y1="1312" y2="1312" x1="464" />
            <wire x2="2320" y1="1280" y2="1280" x1="2256" />
        </branch>
        <branch name="Qc">
            <wire x2="416" y1="1488" y2="1584" x1="416" />
            <wire x2="480" y1="1584" y2="1584" x1="416" />
            <wire x2="496" y1="1488" y2="1488" x1="416" />
            <wire x2="496" y1="1488" y2="1504" x1="496" />
            <wire x2="2304" y1="1504" y2="1504" x1="496" />
            <wire x2="2320" y1="1504" y2="1504" x1="2304" />
            <wire x2="2320" y1="1504" y2="1600" x1="2320" />
            <wire x2="2368" y1="1600" y2="1600" x1="2320" />
            <wire x2="2320" y1="1600" y2="1600" x1="2256" />
        </branch>
        <branch name="Qd">
            <wire x2="464" y1="1888" y2="1952" x1="464" />
            <wire x2="464" y1="1952" y2="1968" x1="464" />
            <wire x2="464" y1="1968" y2="1984" x1="464" />
            <wire x2="480" y1="1984" y2="1984" x1="464" />
            <wire x2="1216" y1="1888" y2="1888" x1="464" />
            <wire x2="1920" y1="1840" y2="1840" x1="1216" />
            <wire x2="2304" y1="1840" y2="1840" x1="1920" />
            <wire x2="2304" y1="1840" y2="1952" x1="2304" />
            <wire x2="2368" y1="1952" y2="1952" x1="2304" />
            <wire x2="1216" y1="1840" y2="1888" x1="1216" />
            <wire x2="2304" y1="1952" y2="1952" x1="2256" />
        </branch>
        <iomarker fontsize="28" x="2400" y="976" name="Qa" orien="R0" />
        <iomarker fontsize="28" x="2384" y="1280" name="Qb" orien="R0" />
        <iomarker fontsize="28" x="2368" y="1600" name="Qc" orien="R0" />
        <iomarker fontsize="28" x="2368" y="1952" name="Qd" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="896" y1="1040" y2="1040" x1="704" />
            <wire x2="1280" y1="1040" y2="1040" x1="896" />
            <wire x2="896" y1="1040" y2="1392" x1="896" />
            <wire x2="912" y1="1392" y2="1392" x1="896" />
            <wire x2="896" y1="1392" y2="1728" x1="896" />
            <wire x2="912" y1="1728" y2="1728" x1="896" />
            <wire x2="896" y1="1728" y2="2224" x1="896" />
            <wire x2="912" y1="2224" y2="2224" x1="896" />
            <wire x2="1280" y1="976" y2="1040" x1="1280" />
            <wire x2="1872" y1="976" y2="976" x1="1280" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="816" y1="1312" y2="1312" x1="704" />
            <wire x2="1392" y1="1312" y2="1312" x1="816" />
            <wire x2="816" y1="1312" y2="1456" x1="816" />
            <wire x2="912" y1="1456" y2="1456" x1="816" />
            <wire x2="816" y1="1456" y2="1776" x1="816" />
            <wire x2="816" y1="1776" y2="1792" x1="816" />
            <wire x2="912" y1="1792" y2="1792" x1="816" />
            <wire x2="816" y1="1792" y2="2288" x1="816" />
            <wire x2="912" y1="2288" y2="2288" x1="816" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="752" y1="1584" y2="1584" x1="704" />
            <wire x2="1040" y1="1584" y2="1584" x1="752" />
            <wire x2="1040" y1="1584" y2="1632" x1="1040" />
            <wire x2="1392" y1="1632" y2="1632" x1="1040" />
            <wire x2="752" y1="1584" y2="1856" x1="752" />
            <wire x2="912" y1="1856" y2="1856" x1="752" />
            <wire x2="752" y1="1856" y2="2352" x1="752" />
            <wire x2="912" y1="2352" y2="2352" x1="752" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="720" y1="1984" y2="1984" x1="704" />
            <wire x2="1408" y1="1984" y2="1984" x1="720" />
            <wire x2="720" y1="1984" y2="2416" x1="720" />
            <wire x2="912" y1="2416" y2="2416" x1="720" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1872" y1="1280" y2="1280" x1="1648" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="1872" y1="1600" y2="1600" x1="1648" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="1872" y1="1952" y2="1952" x1="1664" />
        </branch>
        <branch name="clk">
            <wire x2="1856" y1="2128" y2="2128" x1="432" />
            <wire x2="1872" y1="1104" y2="1104" x1="1856" />
            <wire x2="1856" y1="1104" y2="1408" x1="1856" />
            <wire x2="1872" y1="1408" y2="1408" x1="1856" />
            <wire x2="1856" y1="1408" y2="1728" x1="1856" />
            <wire x2="1856" y1="1728" y2="2080" x1="1856" />
            <wire x2="1872" y1="2080" y2="2080" x1="1856" />
            <wire x2="1856" y1="2080" y2="2128" x1="1856" />
            <wire x2="1872" y1="1728" y2="1728" x1="1856" />
        </branch>
        <branch name="Rc">
            <wire x2="2608" y1="2320" y2="2320" x1="1168" />
        </branch>
        <iomarker fontsize="28" x="432" y="2128" name="clk" orien="R180" />
        <iomarker fontsize="28" x="2608" y="2320" name="Rc" orien="R0" />
        <branch name="XLXN_29">
            <wire x2="1280" y1="1424" y2="1424" x1="1168" />
            <wire x2="1280" y1="1424" y2="1568" x1="1280" />
            <wire x2="1392" y1="1568" y2="1568" x1="1280" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="1280" y1="1792" y2="1792" x1="1168" />
            <wire x2="1280" y1="1792" y2="1920" x1="1280" />
            <wire x2="1408" y1="1920" y2="1920" x1="1280" />
        </branch>
    </sheet>
</drawing>