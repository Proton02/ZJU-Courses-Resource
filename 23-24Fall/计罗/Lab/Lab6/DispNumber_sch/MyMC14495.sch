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
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_14" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_30" />
        <signal name="XLXN_35" />
        <signal name="XLXN_38" />
        <signal name="LE" />
        <signal name="point" />
        <signal name="p" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="g" />
        <signal name="f" />
        <signal name="e" />
        <signal name="b" />
        <signal name="c" />
        <signal name="d" />
        <signal name="a" />
        <signal name="XLXN_63" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="D3" />
        <signal name="XLXN_68" />
        <signal name="D1" />
        <signal name="D0" />
        <signal name="D2" />
        <port polarity="Input" name="LE" />
        <port polarity="Input" name="point" />
        <port polarity="Output" name="p" />
        <port polarity="Output" name="g" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="a" />
        <port polarity="Input" name="D3" />
        <port polarity="Input" name="D1" />
        <port polarity="Input" name="D0" />
        <port polarity="Input" name="D2" />
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
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
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
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
        <block symbolname="and4" name="XLXI_1">
            <blockpin signalname="XLXN_65" name="I0" />
            <blockpin signalname="XLXN_64" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_2">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_68" name="I3" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_81">
            <blockpin signalname="XLXN_64" name="I0" />
            <blockpin signalname="XLXN_63" name="I1" />
            <blockpin signalname="XLXN_68" name="I2" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_82">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_68" name="I2" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_83">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="XLXN_63" name="I1" />
            <blockpin signalname="XLXN_68" name="I2" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_84">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_63" name="I1" />
            <blockpin signalname="XLXN_68" name="I2" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_85">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_64" name="I1" />
            <blockpin signalname="XLXN_63" name="I2" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_86">
            <blockpin signalname="XLXN_64" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="XLXN_68" name="I2" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_95">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_68" name="I1" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_96">
            <blockpin signalname="XLXN_65" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_63" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_99">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_100">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_101">
            <blockpin signalname="XLXN_65" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_63" name="I2" />
            <blockpin signalname="XLXN_68" name="I3" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_102">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_103">
            <blockpin signalname="XLXN_65" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_104">
            <blockpin signalname="XLXN_65" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_112">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_63" name="I1" />
            <blockpin signalname="XLXN_64" name="I2" />
            <blockpin signalname="XLXN_68" name="I3" />
            <blockpin signalname="XLXN_35" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_108">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_64" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_68" name="I3" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_109">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_63" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_110">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_64" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_38" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_111">
            <blockpin signalname="XLXN_65" name="I0" />
            <blockpin signalname="XLXN_64" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_68" name="I3" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_119">
            <blockpin signalname="XLXN_1" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_4" name="I2" />
            <blockpin signalname="XLXN_53" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_120">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="XLXN_10" name="I2" />
            <blockpin signalname="XLXN_38" name="I3" />
            <blockpin signalname="XLXN_52" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_121">
            <blockpin signalname="XLXN_11" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_14" name="I2" />
            <blockpin signalname="XLXN_51" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_122">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="XLXN_17" name="I1" />
            <blockpin signalname="XLXN_30" name="I2" />
            <blockpin signalname="XLXN_35" name="I3" />
            <blockpin signalname="XLXN_50" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_123">
            <blockpin signalname="XLXN_24" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="XLXN_26" name="I2" />
            <blockpin signalname="XLXN_27" name="I3" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_124">
            <blockpin signalname="XLXN_28" name="I0" />
            <blockpin signalname="XLXN_38" name="I1" />
            <blockpin signalname="XLXN_30" name="I2" />
            <blockpin signalname="XLXN_35" name="I3" />
            <blockpin signalname="XLXN_47" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_125">
            <blockpin signalname="XLXN_21" name="I0" />
            <blockpin signalname="XLXN_22" name="I1" />
            <blockpin signalname="XLXN_25" name="I2" />
            <blockpin signalname="XLXN_49" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_126">
            <blockpin signalname="point" name="I" />
            <blockpin signalname="p" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_127">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_53" name="I1" />
            <blockpin signalname="g" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_128">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_52" name="I1" />
            <blockpin signalname="f" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_129">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_51" name="I1" />
            <blockpin signalname="e" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_130">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_50" name="I1" />
            <blockpin signalname="d" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_131">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_49" name="I1" />
            <blockpin signalname="c" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_132">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_48" name="I1" />
            <blockpin signalname="b" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_133">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_47" name="I1" />
            <blockpin signalname="a" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_135">
            <blockpin signalname="D1" name="I" />
            <blockpin signalname="XLXN_64" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_134">
            <blockpin signalname="D3" name="I" />
            <blockpin signalname="XLXN_68" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_138">
            <blockpin signalname="D0" name="I" />
            <blockpin signalname="XLXN_65" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_139">
            <blockpin signalname="D2" name="I" />
            <blockpin signalname="XLXN_63" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="224" y="1888" name="XLXI_1" orien="R90" />
        <instance x="576" y="1888" name="XLXI_2" orien="R90" />
        <instance x="928" y="1888" name="XLXI_81" orien="R90" />
        <instance x="1200" y="1888" name="XLXI_82" orien="R90" />
        <instance x="1504" y="1888" name="XLXI_83" orien="R90" />
        <instance x="1776" y="1888" name="XLXI_84" orien="R90" />
        <instance x="2064" y="1888" name="XLXI_85" orien="R90" />
        <instance x="2336" y="1888" name="XLXI_86" orien="R90" />
        <instance x="2592" y="1888" name="XLXI_95" orien="R90" />
        <instance x="2784" y="1888" name="XLXI_96" orien="R90" />
        <instance x="3088" y="1888" name="XLXI_99" orien="R90" />
        <instance x="3328" y="1888" name="XLXI_100" orien="R90" />
        <instance x="3568" y="1888" name="XLXI_101" orien="R90" />
        <instance x="3888" y="1888" name="XLXI_102" orien="R90" />
        <instance x="4464" y="1888" name="XLXI_104" orien="R90" />
        <instance x="4784" y="1888" name="XLXI_108" orien="R90" />
        <instance x="5136" y="1888" name="XLXI_109" orien="R90" />
        <instance x="5456" y="1888" name="XLXI_110" orien="R90" />
        <instance x="5808" y="1888" name="XLXI_111" orien="R90" />
        <instance x="6160" y="1888" name="XLXI_112" orien="R90" />
        <instance x="608" y="3040" name="XLXI_119" orien="R90" />
        <branch name="XLXN_1">
            <wire x2="384" y1="2144" y2="3040" x1="384" />
            <wire x2="672" y1="3040" y2="3040" x1="384" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="736" y1="2144" y2="3040" x1="736" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1056" y1="3040" y2="3040" x1="800" />
            <wire x2="1056" y1="2144" y2="3040" x1="1056" />
        </branch>
        <instance x="1712" y="3024" name="XLXI_120" orien="R90" />
        <branch name="XLXN_5">
            <wire x2="1328" y1="2144" y2="3024" x1="1328" />
            <wire x2="1776" y1="3024" y2="3024" x1="1328" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1632" y1="2144" y2="2992" x1="1632" />
            <wire x2="1840" y1="2992" y2="2992" x1="1632" />
            <wire x2="1840" y1="2992" y2="3024" x1="1840" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1904" y1="2144" y2="3024" x1="1904" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="2464" y1="2144" y2="3040" x1="2464" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="2688" y1="3040" y2="3040" x1="2528" />
            <wire x2="2688" y1="2144" y2="3040" x1="2688" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="2944" y1="2144" y2="3040" x1="2944" />
            <wire x2="3344" y1="3040" y2="3040" x1="2944" />
        </branch>
        <instance x="2336" y="3040" name="XLXI_121" orien="R90" />
        <branch name="XLXN_11">
            <wire x2="2192" y1="2144" y2="3040" x1="2192" />
            <wire x2="2400" y1="3040" y2="3040" x1="2192" />
        </branch>
        <instance x="3280" y="3040" name="XLXI_122" orien="R90" />
        <branch name="XLXN_17">
            <wire x2="3216" y1="2144" y2="2992" x1="3216" />
            <wire x2="3408" y1="2992" y2="2992" x1="3216" />
            <wire x2="3408" y1="2992" y2="3040" x1="3408" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="3456" y1="2144" y2="2832" x1="3456" />
            <wire x2="3968" y1="2832" y2="2832" x1="3456" />
            <wire x2="3968" y1="2832" y2="3040" x1="3968" />
        </branch>
        <instance x="3904" y="3040" name="XLXI_125" orien="R90" />
        <branch name="XLXN_22">
            <wire x2="3728" y1="2144" y2="2752" x1="3728" />
            <wire x2="4032" y1="2752" y2="2752" x1="3728" />
            <wire x2="4032" y1="2752" y2="3040" x1="4032" />
        </branch>
        <instance x="4336" y="3040" name="XLXI_123" orien="R90" />
        <branch name="XLXN_24">
            <wire x2="4016" y1="2144" y2="2592" x1="4016" />
            <wire x2="4400" y1="2592" y2="2592" x1="4016" />
            <wire x2="4400" y1="2592" y2="3040" x1="4400" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="4288" y1="3040" y2="3040" x1="4096" />
            <wire x2="4288" y1="2144" y2="2576" x1="4288" />
            <wire x2="4464" y1="2576" y2="2576" x1="4288" />
            <wire x2="4464" y1="2576" y2="3040" x1="4464" />
            <wire x2="4288" y1="2576" y2="3040" x1="4288" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="4528" y1="2592" y2="3040" x1="4528" />
            <wire x2="4592" y1="2592" y2="2592" x1="4528" />
            <wire x2="4592" y1="2144" y2="2592" x1="4592" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="4944" y1="3040" y2="3040" x1="4592" />
            <wire x2="4944" y1="2144" y2="3040" x1="4944" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="3472" y1="2944" y2="3040" x1="3472" />
            <wire x2="5968" y1="2944" y2="2944" x1="3472" />
            <wire x2="5968" y1="2944" y2="2992" x1="5968" />
            <wire x2="5680" y1="2992" y2="3056" x1="5680" />
            <wire x2="5968" y1="2992" y2="2992" x1="5680" />
            <wire x2="5968" y1="2144" y2="2944" x1="5968" />
        </branch>
        <instance x="5488" y="3056" name="XLXI_124" orien="R90" />
        <branch name="XLXN_28">
            <wire x2="5296" y1="2144" y2="3040" x1="5296" />
            <wire x2="5552" y1="3040" y2="3040" x1="5296" />
            <wire x2="5552" y1="3040" y2="3056" x1="5552" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="3536" y1="2864" y2="3040" x1="3536" />
            <wire x2="6320" y1="2864" y2="2864" x1="3536" />
            <wire x2="6320" y1="2864" y2="3056" x1="6320" />
            <wire x2="6320" y1="3056" y2="3056" x1="5744" />
            <wire x2="6320" y1="2144" y2="2864" x1="6320" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="1968" y1="2736" y2="3024" x1="1968" />
            <wire x2="5616" y1="2736" y2="2736" x1="1968" />
            <wire x2="5616" y1="2736" y2="3056" x1="5616" />
            <wire x2="5616" y1="2144" y2="2736" x1="5616" />
        </branch>
        <branch name="LE">
            <wire x2="64" y1="1664" y2="3504" x1="64" />
            <wire x2="672" y1="3504" y2="3504" x1="64" />
            <wire x2="1808" y1="3504" y2="3504" x1="672" />
            <wire x2="2400" y1="3504" y2="3504" x1="1808" />
            <wire x2="3376" y1="3504" y2="3504" x1="2400" />
            <wire x2="3968" y1="3504" y2="3504" x1="3376" />
            <wire x2="4432" y1="3504" y2="3504" x1="3968" />
            <wire x2="5584" y1="3504" y2="3504" x1="4432" />
            <wire x2="5584" y1="3504" y2="3584" x1="5584" />
            <wire x2="4432" y1="3504" y2="3584" x1="4432" />
            <wire x2="3968" y1="3504" y2="3584" x1="3968" />
            <wire x2="3376" y1="3504" y2="3584" x1="3376" />
            <wire x2="2400" y1="3504" y2="3584" x1="2400" />
            <wire x2="1808" y1="3504" y2="3584" x1="1808" />
            <wire x2="672" y1="3504" y2="3584" x1="672" />
        </branch>
        <iomarker fontsize="28" x="64" y="1664" name="LE" orien="R270" />
        <instance x="128" y="2544" name="XLXI_126" orien="R90" />
        <branch name="point">
            <wire x2="160" y1="1664" y2="2544" x1="160" />
        </branch>
        <branch name="p">
            <wire x2="160" y1="2768" y2="3680" x1="160" />
        </branch>
        <iomarker fontsize="28" x="160" y="1664" name="point" orien="R270" />
        <iomarker fontsize="28" x="160" y="3680" name="p" orien="R90" />
        <instance x="608" y="3584" name="XLXI_127" orien="R90" />
        <instance x="1744" y="3584" name="XLXI_128" orien="R90" />
        <instance x="2336" y="3584" name="XLXI_129" orien="R90" />
        <instance x="3312" y="3584" name="XLXI_130" orien="R90" />
        <instance x="3904" y="3584" name="XLXI_131" orien="R90" />
        <instance x="4368" y="3584" name="XLXI_132" orien="R90" />
        <instance x="5520" y="3584" name="XLXI_133" orien="R90" />
        <branch name="XLXN_47">
            <wire x2="5648" y1="3312" y2="3584" x1="5648" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="4496" y1="3296" y2="3584" x1="4496" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="4032" y1="3296" y2="3584" x1="4032" />
        </branch>
        <branch name="XLXN_50">
            <wire x2="3440" y1="3296" y2="3584" x1="3440" />
        </branch>
        <branch name="XLXN_51">
            <wire x2="2464" y1="3296" y2="3584" x1="2464" />
        </branch>
        <branch name="XLXN_52">
            <wire x2="1872" y1="3280" y2="3584" x1="1872" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="736" y1="3296" y2="3584" x1="736" />
        </branch>
        <branch name="g">
            <wire x2="704" y1="3840" y2="3872" x1="704" />
        </branch>
        <iomarker fontsize="28" x="704" y="3872" name="g" orien="R90" />
        <branch name="f">
            <wire x2="1840" y1="3840" y2="3872" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="1840" y="3872" name="f" orien="R90" />
        <branch name="e">
            <wire x2="2432" y1="3840" y2="3872" x1="2432" />
        </branch>
        <iomarker fontsize="28" x="2432" y="3872" name="e" orien="R90" />
        <branch name="b">
            <wire x2="4464" y1="3840" y2="3872" x1="4464" />
        </branch>
        <iomarker fontsize="28" x="4464" y="3872" name="b" orien="R90" />
        <branch name="c">
            <wire x2="4000" y1="3840" y2="3872" x1="4000" />
        </branch>
        <iomarker fontsize="28" x="4000" y="3872" name="c" orien="R90" />
        <branch name="d">
            <wire x2="3408" y1="3840" y2="3872" x1="3408" />
        </branch>
        <iomarker fontsize="28" x="3408" y="3872" name="d" orien="R90" />
        <branch name="a">
            <wire x2="5616" y1="3840" y2="3872" x1="5616" />
        </branch>
        <iomarker fontsize="28" x="5616" y="3872" name="a" orien="R90" />
        <branch name="XLXN_63">
            <wire x2="1056" y1="1680" y2="1888" x1="1056" />
            <wire x2="1632" y1="1680" y2="1680" x1="1056" />
            <wire x2="1632" y1="1680" y2="1888" x1="1632" />
            <wire x2="1904" y1="1680" y2="1680" x1="1632" />
            <wire x2="1904" y1="1680" y2="1888" x1="1904" />
            <wire x2="2256" y1="1680" y2="1680" x1="1904" />
            <wire x2="2256" y1="1680" y2="1888" x1="2256" />
            <wire x2="2976" y1="1680" y2="1680" x1="2256" />
            <wire x2="2976" y1="1680" y2="1888" x1="2976" />
            <wire x2="3760" y1="1680" y2="1680" x1="2976" />
            <wire x2="3760" y1="1680" y2="1888" x1="3760" />
            <wire x2="5328" y1="1680" y2="1680" x1="3760" />
            <wire x2="6288" y1="1680" y2="1680" x1="5328" />
            <wire x2="6288" y1="1680" y2="1888" x1="6288" />
            <wire x2="5328" y1="1680" y2="1888" x1="5328" />
            <wire x2="6288" y1="1136" y2="1680" x1="6288" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="352" y1="1600" y2="1888" x1="352" />
            <wire x2="992" y1="1600" y2="1600" x1="352" />
            <wire x2="992" y1="1600" y2="1888" x1="992" />
            <wire x2="2192" y1="1600" y2="1600" x1="992" />
            <wire x2="2192" y1="1600" y2="1888" x1="2192" />
            <wire x2="2400" y1="1600" y2="1600" x1="2192" />
            <wire x2="2400" y1="1600" y2="1888" x1="2400" />
            <wire x2="4912" y1="1600" y2="1600" x1="2400" />
            <wire x2="4912" y1="1600" y2="1888" x1="4912" />
            <wire x2="5584" y1="1600" y2="1600" x1="4912" />
            <wire x2="5584" y1="1600" y2="1888" x1="5584" />
            <wire x2="5936" y1="1600" y2="1600" x1="5584" />
            <wire x2="6352" y1="1600" y2="1600" x1="5936" />
            <wire x2="6352" y1="1600" y2="1888" x1="6352" />
            <wire x2="5936" y1="1600" y2="1888" x1="5936" />
            <wire x2="5936" y1="1136" y2="1600" x1="5936" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="288" y1="1520" y2="1888" x1="288" />
            <wire x2="2848" y1="1520" y2="1520" x1="288" />
            <wire x2="2848" y1="1520" y2="1888" x1="2848" />
            <wire x2="3632" y1="1520" y2="1520" x1="2848" />
            <wire x2="3632" y1="1520" y2="1888" x1="3632" />
            <wire x2="4224" y1="1520" y2="1520" x1="3632" />
            <wire x2="4528" y1="1520" y2="1520" x1="4224" />
            <wire x2="4528" y1="1520" y2="1888" x1="4528" />
            <wire x2="5584" y1="1520" y2="1520" x1="4528" />
            <wire x2="5872" y1="1520" y2="1520" x1="5584" />
            <wire x2="5872" y1="1520" y2="1888" x1="5872" />
            <wire x2="4224" y1="1520" y2="1888" x1="4224" />
            <wire x2="5584" y1="1136" y2="1520" x1="5584" />
        </branch>
        <instance x="4160" y="1888" name="XLXI_103" orien="R90" />
        <branch name="D1">
            <wire x2="1328" y1="1280" y2="1280" x1="704" />
            <wire x2="1328" y1="1280" y2="1888" x1="1328" />
            <wire x2="1568" y1="1280" y2="1280" x1="1328" />
            <wire x2="1568" y1="1280" y2="1888" x1="1568" />
            <wire x2="2912" y1="1280" y2="1280" x1="1568" />
            <wire x2="2912" y1="1280" y2="1888" x1="2912" />
            <wire x2="3216" y1="1280" y2="1280" x1="2912" />
            <wire x2="3216" y1="1280" y2="1888" x1="3216" />
            <wire x2="3392" y1="1280" y2="1280" x1="3216" />
            <wire x2="3392" y1="1280" y2="1888" x1="3392" />
            <wire x2="3696" y1="1280" y2="1280" x1="3392" />
            <wire x2="3696" y1="1280" y2="1888" x1="3696" />
            <wire x2="4016" y1="1280" y2="1280" x1="3696" />
            <wire x2="4016" y1="1280" y2="1888" x1="4016" />
            <wire x2="4592" y1="1280" y2="1280" x1="4016" />
            <wire x2="4592" y1="1280" y2="1888" x1="4592" />
            <wire x2="5264" y1="1280" y2="1280" x1="4592" />
            <wire x2="5872" y1="1280" y2="1280" x1="5264" />
            <wire x2="5264" y1="1280" y2="1888" x1="5264" />
            <wire x2="704" y1="1280" y2="1888" x1="704" />
            <wire x2="5872" y1="800" y2="1280" x1="5872" />
            <wire x2="5936" y1="800" y2="800" x1="5872" />
            <wire x2="5936" y1="800" y2="912" x1="5936" />
            <wire x2="5936" y1="752" y2="800" x1="5936" />
        </branch>
        <instance x="5904" y="912" name="XLXI_135" orien="R90" />
        <branch name="D0">
            <wire x2="640" y1="1200" y2="1888" x1="640" />
            <wire x2="1264" y1="1200" y2="1200" x1="640" />
            <wire x2="1264" y1="1200" y2="1888" x1="1264" />
            <wire x2="1840" y1="1200" y2="1200" x1="1264" />
            <wire x2="1840" y1="1200" y2="1888" x1="1840" />
            <wire x2="2128" y1="1200" y2="1200" x1="1840" />
            <wire x2="2128" y1="1200" y2="1888" x1="2128" />
            <wire x2="2656" y1="1200" y2="1200" x1="2128" />
            <wire x2="2656" y1="1200" y2="1888" x1="2656" />
            <wire x2="3152" y1="1200" y2="1200" x1="2656" />
            <wire x2="3152" y1="1200" y2="1888" x1="3152" />
            <wire x2="3952" y1="1200" y2="1200" x1="3152" />
            <wire x2="3952" y1="1200" y2="1888" x1="3952" />
            <wire x2="4848" y1="1200" y2="1200" x1="3952" />
            <wire x2="4848" y1="1200" y2="1888" x1="4848" />
            <wire x2="5200" y1="1200" y2="1200" x1="4848" />
            <wire x2="5200" y1="1200" y2="1888" x1="5200" />
            <wire x2="5520" y1="1200" y2="1200" x1="5200" />
            <wire x2="6224" y1="1200" y2="1200" x1="5520" />
            <wire x2="6224" y1="1200" y2="1888" x1="6224" />
            <wire x2="5520" y1="1200" y2="1888" x1="5520" />
            <wire x2="5520" y1="800" y2="1200" x1="5520" />
            <wire x2="5584" y1="800" y2="800" x1="5520" />
            <wire x2="5584" y1="800" y2="912" x1="5584" />
            <wire x2="5584" y1="752" y2="800" x1="5584" />
        </branch>
        <instance x="5552" y="912" name="XLXI_138" orien="R90" />
        <instance x="6256" y="912" name="XLXI_139" orien="R90" />
        <branch name="D2">
            <wire x2="416" y1="1360" y2="1888" x1="416" />
            <wire x2="768" y1="1360" y2="1360" x1="416" />
            <wire x2="768" y1="1360" y2="1888" x1="768" />
            <wire x2="2464" y1="1360" y2="1360" x1="768" />
            <wire x2="2464" y1="1360" y2="1888" x1="2464" />
            <wire x2="3280" y1="1360" y2="1360" x1="2464" />
            <wire x2="3280" y1="1360" y2="1888" x1="3280" />
            <wire x2="3456" y1="1360" y2="1360" x1="3280" />
            <wire x2="3456" y1="1360" y2="1888" x1="3456" />
            <wire x2="4288" y1="1360" y2="1360" x1="3456" />
            <wire x2="4288" y1="1360" y2="1888" x1="4288" />
            <wire x2="4656" y1="1360" y2="1360" x1="4288" />
            <wire x2="4656" y1="1360" y2="1888" x1="4656" />
            <wire x2="4976" y1="1360" y2="1360" x1="4656" />
            <wire x2="4976" y1="1360" y2="1888" x1="4976" />
            <wire x2="5648" y1="1360" y2="1360" x1="4976" />
            <wire x2="5648" y1="1360" y2="1888" x1="5648" />
            <wire x2="6000" y1="1360" y2="1360" x1="5648" />
            <wire x2="6000" y1="1360" y2="1888" x1="6000" />
            <wire x2="6208" y1="1360" y2="1360" x1="6000" />
            <wire x2="6288" y1="800" y2="800" x1="6208" />
            <wire x2="6288" y1="800" y2="912" x1="6288" />
            <wire x2="6208" y1="800" y2="1360" x1="6208" />
            <wire x2="6288" y1="752" y2="800" x1="6288" />
        </branch>
        <branch name="XLXN_68">
            <wire x2="832" y1="1760" y2="1888" x1="832" />
            <wire x2="1120" y1="1760" y2="1760" x1="832" />
            <wire x2="1120" y1="1760" y2="1888" x1="1120" />
            <wire x2="1392" y1="1760" y2="1760" x1="1120" />
            <wire x2="1392" y1="1760" y2="1888" x1="1392" />
            <wire x2="1696" y1="1760" y2="1760" x1="1392" />
            <wire x2="1696" y1="1760" y2="1888" x1="1696" />
            <wire x2="1968" y1="1760" y2="1760" x1="1696" />
            <wire x2="1968" y1="1760" y2="1888" x1="1968" />
            <wire x2="2528" y1="1760" y2="1760" x1="1968" />
            <wire x2="2528" y1="1760" y2="1888" x1="2528" />
            <wire x2="2720" y1="1760" y2="1760" x1="2528" />
            <wire x2="2720" y1="1760" y2="1888" x1="2720" />
            <wire x2="3824" y1="1760" y2="1760" x1="2720" />
            <wire x2="3824" y1="1760" y2="1888" x1="3824" />
            <wire x2="5040" y1="1760" y2="1760" x1="3824" />
            <wire x2="5040" y1="1760" y2="1888" x1="5040" />
            <wire x2="6064" y1="1760" y2="1760" x1="5040" />
            <wire x2="6416" y1="1760" y2="1760" x1="6064" />
            <wire x2="6416" y1="1760" y2="1888" x1="6416" />
            <wire x2="6064" y1="1760" y2="1888" x1="6064" />
            <wire x2="6416" y1="1136" y2="1760" x1="6416" />
        </branch>
        <branch name="D3">
            <wire x2="480" y1="1440" y2="1888" x1="480" />
            <wire x2="3040" y1="1440" y2="1440" x1="480" />
            <wire x2="3040" y1="1440" y2="1888" x1="3040" />
            <wire x2="3520" y1="1440" y2="1440" x1="3040" />
            <wire x2="3520" y1="1440" y2="1888" x1="3520" />
            <wire x2="4080" y1="1440" y2="1440" x1="3520" />
            <wire x2="4080" y1="1440" y2="1888" x1="4080" />
            <wire x2="4352" y1="1440" y2="1440" x1="4080" />
            <wire x2="4352" y1="1440" y2="1888" x1="4352" />
            <wire x2="5392" y1="1440" y2="1440" x1="4352" />
            <wire x2="5392" y1="1440" y2="1888" x1="5392" />
            <wire x2="5712" y1="1440" y2="1440" x1="5392" />
            <wire x2="5712" y1="1440" y2="1888" x1="5712" />
            <wire x2="6352" y1="1440" y2="1440" x1="5712" />
            <wire x2="6352" y1="800" y2="1440" x1="6352" />
            <wire x2="6416" y1="800" y2="800" x1="6352" />
            <wire x2="6416" y1="800" y2="912" x1="6416" />
            <wire x2="6416" y1="752" y2="800" x1="6416" />
        </branch>
        <instance x="6384" y="912" name="XLXI_134" orien="R90" />
        <iomarker fontsize="28" x="6416" y="752" name="D3" orien="R270" />
        <iomarker fontsize="28" x="6288" y="752" name="D2" orien="R270" />
        <iomarker fontsize="28" x="5936" y="752" name="D1" orien="R270" />
        <iomarker fontsize="28" x="5584" y="752" name="D0" orien="R270" />
    </sheet>
</drawing>