<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="g" />
        <signal name="p" />
        <signal name="point" />
        <signal name="XLXN_18" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_32" />
        <signal name="f" />
        <signal name="XLXN_37" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="e" />
        <signal name="XLXN_48" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="d" />
        <signal name="XLXN_55" />
        <signal name="XLXN_56" />
        <signal name="XLXN_61" />
        <signal name="c" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66" />
        <signal name="b" />
        <signal name="XLXN_68" />
        <signal name="XLXN_73" />
        <signal name="XLXN_75" />
        <signal name="XLXN_76" />
        <signal name="XLXN_79" />
        <signal name="a" />
        <signal name="XLXN_82" />
        <signal name="XLXN_83" />
        <signal name="XLXN_84" />
        <signal name="D0" />
        <signal name="D1" />
        <signal name="D2" />
        <signal name="D3" />
        <signal name="XLXN_99" />
        <signal name="XLXN_100" />
        <signal name="XLXN_113" />
        <signal name="XLXN_121" />
        <signal name="XLXN_122" />
        <signal name="XLXN_133" />
        <signal name="XLXN_136" />
        <signal name="XLXN_137" />
        <signal name="XLXN_138" />
        <signal name="XLXN_139" />
        <signal name="XLXN_140" />
        <signal name="XLXN_141" />
        <signal name="XLXN_142" />
        <signal name="XLXN_143" />
        <signal name="XLXN_144" />
        <signal name="XLXN_146" />
        <signal name="XLXN_147" />
        <signal name="XLXN_148" />
        <signal name="XLXN_149" />
        <signal name="XLXN_150" />
        <signal name="XLXN_151" />
        <signal name="XLXN_152" />
        <signal name="XLXN_153" />
        <signal name="XLXN_155" />
        <signal name="XLXN_156" />
        <signal name="XLXN_157" />
        <signal name="XLXN_158" />
        <signal name="XLXN_159" />
        <signal name="XLXN_160" />
        <signal name="XLXN_161" />
        <signal name="XLXN_162" />
        <signal name="XLXN_163" />
        <signal name="XLXN_164" />
        <signal name="XLXN_165" />
        <signal name="XLXN_166" />
        <signal name="XLXN_167" />
        <signal name="XLXN_168" />
        <signal name="XLXN_169" />
        <signal name="XLXN_170" />
        <signal name="XLXN_171" />
        <signal name="XLXN_172" />
        <signal name="LE" />
        <port polarity="Output" name="g" />
        <port polarity="Output" name="p" />
        <port polarity="Input" name="point" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="a" />
        <port polarity="Input" name="D0" />
        <port polarity="Input" name="D1" />
        <port polarity="Input" name="D2" />
        <port polarity="Input" name="D3" />
        <port polarity="Input" name="LE" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
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
        <block symbolname="or2" name="XLXI_1">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_32" name="I1" />
            <blockpin signalname="g" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="point" name="I" />
            <blockpin signalname="p" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_12">
            <blockpin signalname="XLXN_133" name="I0" />
            <blockpin signalname="XLXN_122" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_13">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_113" name="I3" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_14">
            <blockpin signalname="XLXN_122" name="I0" />
            <blockpin signalname="XLXN_121" name="I1" />
            <blockpin signalname="XLXN_113" name="I2" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_15">
            <blockpin signalname="XLXN_18" name="I0" />
            <blockpin signalname="XLXN_22" name="I1" />
            <blockpin signalname="XLXN_23" name="I2" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_16">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_37" name="I1" />
            <blockpin signalname="f" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_18">
            <blockpin signalname="XLXN_44" name="I0" />
            <blockpin signalname="XLXN_45" name="I1" />
            <blockpin signalname="XLXN_46" name="I2" />
            <blockpin signalname="XLXN_84" name="I3" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_19">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_113" name="I2" />
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_20">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="XLXN_121" name="I1" />
            <blockpin signalname="XLXN_113" name="I2" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_21">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_121" name="I1" />
            <blockpin signalname="XLXN_113" name="I2" />
            <blockpin signalname="XLXN_46" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_22">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_48" name="I1" />
            <blockpin signalname="e" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_23">
            <blockpin signalname="XLXN_51" name="I0" />
            <blockpin signalname="XLXN_52" name="I1" />
            <blockpin signalname="XLXN_53" name="I2" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_24">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_122" name="I1" />
            <blockpin signalname="XLXN_121" name="I2" />
            <blockpin signalname="XLXN_51" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_25">
            <blockpin signalname="XLXN_122" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="XLXN_113" name="I2" />
            <blockpin signalname="XLXN_52" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_27">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_55" name="I1" />
            <blockpin signalname="d" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_28">
            <blockpin signalname="XLXN_56" name="I0" />
            <blockpin signalname="XLXN_61" name="I1" />
            <blockpin signalname="XLXN_99" name="I2" />
            <blockpin signalname="XLXN_100" name="I3" />
            <blockpin signalname="XLXN_55" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_29">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_113" name="I1" />
            <blockpin signalname="XLXN_53" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_30">
            <blockpin signalname="XLXN_133" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_121" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_56" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_31">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_61" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_32">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_64" name="I1" />
            <blockpin signalname="c" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_33">
            <blockpin signalname="XLXN_65" name="I0" />
            <blockpin signalname="XLXN_66" name="I1" />
            <blockpin signalname="XLXN_73" name="I2" />
            <blockpin signalname="XLXN_64" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_34">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_65" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_35">
            <blockpin signalname="XLXN_133" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_121" name="I2" />
            <blockpin signalname="XLXN_113" name="I3" />
            <blockpin signalname="XLXN_66" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_36">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_68" name="I1" />
            <blockpin signalname="b" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_37">
            <blockpin signalname="XLXN_75" name="I0" />
            <blockpin signalname="XLXN_73" name="I1" />
            <blockpin signalname="XLXN_76" name="I2" />
            <blockpin signalname="XLXN_79" name="I3" />
            <blockpin signalname="XLXN_68" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_38">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_75" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_39">
            <blockpin signalname="XLXN_133" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_73" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_40">
            <blockpin signalname="XLXN_133" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_76" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_41">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_122" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_113" name="I3" />
            <blockpin signalname="XLXN_79" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_42">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_82" name="I1" />
            <blockpin signalname="a" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_43">
            <blockpin signalname="XLXN_83" name="I0" />
            <blockpin signalname="XLXN_84" name="I1" />
            <blockpin signalname="XLXN_99" name="I2" />
            <blockpin signalname="XLXN_100" name="I3" />
            <blockpin signalname="XLXN_82" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_44">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_121" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_83" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_45">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_122" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_84" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_46">
            <blockpin signalname="XLXN_133" name="I0" />
            <blockpin signalname="XLXN_122" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_113" name="I3" />
            <blockpin signalname="XLXN_99" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_47">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_121" name="I1" />
            <blockpin signalname="XLXN_122" name="I2" />
            <blockpin signalname="XLXN_113" name="I3" />
            <blockpin signalname="XLXN_100" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_48">
            <blockpin signalname="D3" name="I" />
            <blockpin signalname="XLXN_113" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_49">
            <blockpin signalname="D2" name="I" />
            <blockpin signalname="XLXN_121" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_50">
            <blockpin signalname="D1" name="I" />
            <blockpin signalname="XLXN_122" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_51">
            <blockpin signalname="D0" name="I" />
            <blockpin signalname="XLXN_133" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <branch name="g">
            <wire x2="1456" y1="2096" y2="2128" x1="1456" />
        </branch>
        <branch name="point">
            <wire x2="1088" y1="576" y2="896" x1="1088" />
        </branch>
        <branch name="p">
            <wire x2="1088" y1="1120" y2="2144" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="1088" y="2144" name="p" orien="R90" />
        <instance x="1056" y="896" name="XLXI_8" orien="R90" />
        <iomarker fontsize="28" x="1088" y="576" name="point" orien="R270" />
        <branch name="XLXN_23">
            <wire x2="1696" y1="1424" y2="1424" x1="1552" />
            <wire x2="1696" y1="1280" y2="1424" x1="1696" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="1488" y1="1280" y2="1424" x1="1488" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="1488" y1="1680" y2="1840" x1="1488" />
        </branch>
        <instance x="1360" y="1424" name="XLXI_15" orien="R90" />
        <branch name="XLXN_18">
            <wire x2="1248" y1="1280" y2="1424" x1="1248" />
            <wire x2="1424" y1="1424" y2="1424" x1="1248" />
        </branch>
        <instance x="1360" y="1840" name="XLXI_1" orien="R90" />
        <iomarker fontsize="28" x="1456" y="2128" name="g" orien="R90" />
        <branch name="f">
            <wire x2="2224" y1="2096" y2="2144" x1="2224" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="2256" y1="1680" y2="1840" x1="2256" />
        </branch>
        <instance x="2128" y="1840" name="XLXI_16" orien="R90" />
        <iomarker fontsize="28" x="2224" y="2144" name="f" orien="R90" />
        <instance x="2096" y="1424" name="XLXI_18" orien="R90" />
        <branch name="XLXN_44">
            <wire x2="1904" y1="1280" y2="1424" x1="1904" />
            <wire x2="2160" y1="1424" y2="1424" x1="1904" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="2080" y1="1280" y2="1408" x1="2080" />
            <wire x2="2224" y1="1408" y2="1408" x1="2080" />
            <wire x2="2224" y1="1408" y2="1424" x1="2224" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="2288" y1="1280" y2="1424" x1="2288" />
        </branch>
        <branch name="e">
            <wire x2="2864" y1="2096" y2="2128" x1="2864" />
        </branch>
        <instance x="2768" y="1840" name="XLXI_22" orien="R90" />
        <branch name="XLXN_48">
            <wire x2="2896" y1="1680" y2="1840" x1="2896" />
        </branch>
        <instance x="2768" y="1424" name="XLXI_23" orien="R90" />
        <iomarker fontsize="28" x="2864" y="2128" name="e" orien="R90" />
        <branch name="XLXN_51">
            <wire x2="2656" y1="1280" y2="1424" x1="2656" />
            <wire x2="2832" y1="1424" y2="1424" x1="2656" />
        </branch>
        <branch name="XLXN_52">
            <wire x2="2896" y1="1280" y2="1424" x1="2896" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="3120" y1="1424" y2="1424" x1="2960" />
            <wire x2="3120" y1="1280" y2="1424" x1="3120" />
        </branch>
        <instance x="3584" y="1840" name="XLXI_27" orien="R90" />
        <branch name="d">
            <wire x2="3680" y1="2096" y2="2128" x1="3680" />
        </branch>
        <iomarker fontsize="28" x="3680" y="2128" name="d" orien="R90" />
        <branch name="XLXN_55">
            <wire x2="3712" y1="1680" y2="1840" x1="3712" />
        </branch>
        <instance x="3552" y="1424" name="XLXI_28" orien="R90" />
        <branch name="XLXN_56">
            <wire x2="3440" y1="1280" y2="1424" x1="3440" />
            <wire x2="3616" y1="1424" y2="1424" x1="3440" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="3680" y1="1280" y2="1424" x1="3680" />
        </branch>
        <instance x="4176" y="1840" name="XLXI_32" orien="R90" />
        <branch name="c">
            <wire x2="4272" y1="2096" y2="2128" x1="4272" />
        </branch>
        <iomarker fontsize="28" x="4272" y="2128" name="c" orien="R90" />
        <branch name="XLXN_64">
            <wire x2="4304" y1="1680" y2="1840" x1="4304" />
        </branch>
        <instance x="4176" y="1424" name="XLXI_33" orien="R90" />
        <branch name="XLXN_65">
            <wire x2="4032" y1="1280" y2="1424" x1="4032" />
            <wire x2="4240" y1="1424" y2="1424" x1="4032" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="4304" y1="1280" y2="1424" x1="4304" />
        </branch>
        <branch name="b">
            <wire x2="4912" y1="2096" y2="2128" x1="4912" />
        </branch>
        <instance x="4816" y="1840" name="XLXI_36" orien="R90" />
        <branch name="XLXN_68">
            <wire x2="4944" y1="1680" y2="1840" x1="4944" />
        </branch>
        <instance x="4784" y="1424" name="XLXI_37" orien="R90" />
        <iomarker fontsize="28" x="4912" y="2128" name="b" orien="R90" />
        <branch name="XLXN_75">
            <wire x2="4544" y1="1280" y2="1424" x1="4544" />
            <wire x2="4848" y1="1424" y2="1424" x1="4544" />
        </branch>
        <branch name="XLXN_76">
            <wire x2="4976" y1="1280" y2="1424" x1="4976" />
        </branch>
        <branch name="XLXN_79">
            <wire x2="5280" y1="1424" y2="1424" x1="5040" />
            <wire x2="5280" y1="1280" y2="1424" x1="5280" />
        </branch>
        <instance x="5792" y="1840" name="XLXI_42" orien="R90" />
        <branch name="a">
            <wire x2="5888" y1="2096" y2="2128" x1="5888" />
        </branch>
        <iomarker fontsize="28" x="5888" y="2128" name="a" orien="R90" />
        <branch name="XLXN_82">
            <wire x2="5920" y1="1680" y2="1840" x1="5920" />
        </branch>
        <instance x="5760" y="1424" name="XLXI_43" orien="R90" />
        <branch name="XLXN_83">
            <wire x2="5536" y1="1280" y2="1424" x1="5536" />
            <wire x2="5824" y1="1424" y2="1424" x1="5536" />
        </branch>
        <branch name="XLXN_84">
            <wire x2="2352" y1="1312" y2="1424" x1="2352" />
            <wire x2="5888" y1="1312" y2="1312" x1="2352" />
            <wire x2="5888" y1="1312" y2="1424" x1="5888" />
            <wire x2="5888" y1="1280" y2="1280" x1="5776" />
            <wire x2="5888" y1="1280" y2="1312" x1="5888" />
        </branch>
        <instance x="5616" y="1024" name="XLXI_45" orien="R90" />
        <instance x="5376" y="1024" name="XLXI_44" orien="R90" />
        <instance x="5120" y="1024" name="XLXI_41" orien="R90" />
        <instance x="4848" y="1024" name="XLXI_40" orien="R90" />
        <instance x="4624" y="1024" name="XLXI_39" orien="R90" />
        <branch name="XLXN_73">
            <wire x2="4368" y1="1408" y2="1424" x1="4368" />
            <wire x2="4880" y1="1408" y2="1408" x1="4368" />
            <wire x2="4912" y1="1408" y2="1408" x1="4880" />
            <wire x2="4912" y1="1408" y2="1424" x1="4912" />
            <wire x2="4752" y1="1280" y2="1344" x1="4752" />
            <wire x2="4880" y1="1344" y2="1344" x1="4752" />
            <wire x2="4880" y1="1344" y2="1408" x1="4880" />
        </branch>
        <instance x="4416" y="1024" name="XLXI_38" orien="R90" />
        <instance x="4144" y="1024" name="XLXI_35" orien="R90" />
        <instance x="3904" y="1024" name="XLXI_34" orien="R90" />
        <instance x="3552" y="1024" name="XLXI_31" orien="R90" />
        <instance x="3280" y="1024" name="XLXI_30" orien="R90" />
        <instance x="3024" y="1024" name="XLXI_29" orien="R90" />
        <instance x="2768" y="1024" name="XLXI_25" orien="R90" />
        <instance x="2528" y="1024" name="XLXI_24" orien="R90" />
        <instance x="2160" y="1024" name="XLXI_21" orien="R90" />
        <instance x="1952" y="1024" name="XLXI_20" orien="R90" />
        <instance x="1776" y="1024" name="XLXI_19" orien="R90" />
        <instance x="1568" y="1024" name="XLXI_14" orien="R90" />
        <instance x="1328" y="1024" name="XLXI_13" orien="R90" />
        <instance x="1088" y="1024" name="XLXI_12" orien="R90" />
        <instance x="5840" y="1024" name="XLXI_46" orien="R90" />
        <instance x="6096" y="1024" name="XLXI_47" orien="R90" />
        <instance x="6336" y="336" name="XLXI_48" orien="R90" />
        <instance x="6208" y="336" name="XLXI_49" orien="R90" />
        <instance x="6080" y="336" name="XLXI_50" orien="R90" />
        <branch name="D0">
            <wire x2="1392" y1="704" y2="1024" x1="1392" />
            <wire x2="1840" y1="704" y2="704" x1="1392" />
            <wire x2="2208" y1="704" y2="704" x1="1840" />
            <wire x2="2224" y1="704" y2="704" x1="2208" />
            <wire x2="2224" y1="704" y2="1024" x1="2224" />
            <wire x2="2592" y1="704" y2="704" x1="2224" />
            <wire x2="2592" y1="704" y2="720" x1="2592" />
            <wire x2="2592" y1="720" y2="1024" x1="2592" />
            <wire x2="3088" y1="704" y2="704" x1="2592" />
            <wire x2="3088" y1="704" y2="1024" x1="3088" />
            <wire x2="3616" y1="704" y2="704" x1="3088" />
            <wire x2="3616" y1="704" y2="1024" x1="3616" />
            <wire x2="4480" y1="704" y2="704" x1="3616" />
            <wire x2="4480" y1="704" y2="1024" x1="4480" />
            <wire x2="5184" y1="704" y2="704" x1="4480" />
            <wire x2="5184" y1="704" y2="1024" x1="5184" />
            <wire x2="5440" y1="704" y2="704" x1="5184" />
            <wire x2="5440" y1="704" y2="1024" x1="5440" />
            <wire x2="5664" y1="704" y2="704" x1="5440" />
            <wire x2="5680" y1="704" y2="704" x1="5664" />
            <wire x2="5680" y1="704" y2="1024" x1="5680" />
            <wire x2="5904" y1="704" y2="704" x1="5680" />
            <wire x2="6160" y1="704" y2="704" x1="5904" />
            <wire x2="6160" y1="704" y2="1024" x1="6160" />
            <wire x2="1840" y1="704" y2="1024" x1="1840" />
            <wire x2="5968" y1="272" y2="272" x1="5904" />
            <wire x2="5968" y1="272" y2="336" x1="5968" />
            <wire x2="5904" y1="272" y2="704" x1="5904" />
            <wire x2="5968" y1="144" y2="272" x1="5968" />
        </branch>
        <branch name="D2">
            <wire x2="1280" y1="784" y2="1024" x1="1280" />
            <wire x2="1520" y1="784" y2="784" x1="1280" />
            <wire x2="1520" y1="784" y2="1024" x1="1520" />
            <wire x2="2896" y1="784" y2="784" x1="1520" />
            <wire x2="3744" y1="784" y2="784" x1="2896" />
            <wire x2="4016" y1="784" y2="784" x1="3744" />
            <wire x2="4016" y1="784" y2="800" x1="4016" />
            <wire x2="4032" y1="800" y2="800" x1="4016" />
            <wire x2="4032" y1="800" y2="1024" x1="4032" />
            <wire x2="4752" y1="784" y2="784" x1="4016" />
            <wire x2="4752" y1="784" y2="1024" x1="4752" />
            <wire x2="5040" y1="784" y2="784" x1="4752" />
            <wire x2="5040" y1="784" y2="1024" x1="5040" />
            <wire x2="5312" y1="784" y2="784" x1="5040" />
            <wire x2="5312" y1="784" y2="1024" x1="5312" />
            <wire x2="5808" y1="784" y2="784" x1="5312" />
            <wire x2="5808" y1="784" y2="1024" x1="5808" />
            <wire x2="6000" y1="784" y2="784" x1="5808" />
            <wire x2="6032" y1="784" y2="784" x1="6000" />
            <wire x2="6032" y1="784" y2="1024" x1="6032" />
            <wire x2="3744" y1="784" y2="1024" x1="3744" />
            <wire x2="2896" y1="784" y2="1024" x1="2896" />
            <wire x2="6192" y1="672" y2="672" x1="6000" />
            <wire x2="6000" y1="672" y2="784" x1="6000" />
            <wire x2="6240" y1="272" y2="272" x1="6192" />
            <wire x2="6240" y1="272" y2="336" x1="6240" />
            <wire x2="6192" y1="272" y2="672" x1="6192" />
            <wire x2="6240" y1="144" y2="272" x1="6240" />
        </branch>
        <branch name="D3">
            <wire x2="3536" y1="816" y2="816" x1="1344" />
            <wire x2="3536" y1="816" y2="1024" x1="3536" />
            <wire x2="4096" y1="816" y2="816" x1="3536" />
            <wire x2="4608" y1="816" y2="816" x1="4096" />
            <wire x2="4608" y1="816" y2="1024" x1="4608" />
            <wire x2="4816" y1="816" y2="816" x1="4608" />
            <wire x2="5632" y1="816" y2="816" x1="4816" />
            <wire x2="5872" y1="816" y2="816" x1="5632" />
            <wire x2="5872" y1="816" y2="1024" x1="5872" />
            <wire x2="6320" y1="816" y2="816" x1="5872" />
            <wire x2="5632" y1="816" y2="1024" x1="5632" />
            <wire x2="4816" y1="816" y2="1024" x1="4816" />
            <wire x2="4096" y1="816" y2="1024" x1="4096" />
            <wire x2="1344" y1="816" y2="1024" x1="1344" />
            <wire x2="6368" y1="272" y2="272" x1="6320" />
            <wire x2="6368" y1="272" y2="336" x1="6368" />
            <wire x2="6320" y1="272" y2="816" x1="6320" />
            <wire x2="6368" y1="144" y2="272" x1="6368" />
        </branch>
        <instance x="5936" y="336" name="XLXI_51" orien="R90" />
        <branch name="XLXN_99">
            <wire x2="3744" y1="1392" y2="1424" x1="3744" />
            <wire x2="5952" y1="1392" y2="1392" x1="3744" />
            <wire x2="5952" y1="1392" y2="1424" x1="5952" />
            <wire x2="6000" y1="1344" y2="1344" x1="5952" />
            <wire x2="5952" y1="1344" y2="1392" x1="5952" />
            <wire x2="6000" y1="1280" y2="1344" x1="6000" />
        </branch>
        <branch name="XLXN_100">
            <wire x2="6256" y1="1360" y2="1360" x1="3808" />
            <wire x2="6256" y1="1360" y2="1424" x1="6256" />
            <wire x2="3808" y1="1360" y2="1424" x1="3808" />
            <wire x2="6256" y1="1424" y2="1424" x1="6016" />
            <wire x2="6256" y1="1280" y2="1360" x1="6256" />
        </branch>
        <branch name="XLXN_113">
            <wire x2="1584" y1="976" y2="1024" x1="1584" />
            <wire x2="1760" y1="976" y2="976" x1="1584" />
            <wire x2="1760" y1="976" y2="1024" x1="1760" />
            <wire x2="1968" y1="976" y2="976" x1="1760" />
            <wire x2="1968" y1="976" y2="1024" x1="1968" />
            <wire x2="2144" y1="976" y2="976" x1="1968" />
            <wire x2="2144" y1="976" y2="1024" x1="2144" />
            <wire x2="2352" y1="976" y2="976" x1="2144" />
            <wire x2="2352" y1="976" y2="1024" x1="2352" />
            <wire x2="2960" y1="976" y2="976" x1="2352" />
            <wire x2="2960" y1="976" y2="1024" x1="2960" />
            <wire x2="3152" y1="976" y2="976" x1="2960" />
            <wire x2="3152" y1="976" y2="1024" x1="3152" />
            <wire x2="4400" y1="976" y2="976" x1="3152" />
            <wire x2="4400" y1="976" y2="1024" x1="4400" />
            <wire x2="5376" y1="976" y2="976" x1="4400" />
            <wire x2="5376" y1="976" y2="1024" x1="5376" />
            <wire x2="6096" y1="976" y2="976" x1="5376" />
            <wire x2="6096" y1="976" y2="1024" x1="6096" />
            <wire x2="6368" y1="976" y2="976" x1="6096" />
            <wire x2="6368" y1="976" y2="1024" x1="6368" />
            <wire x2="6368" y1="1024" y2="1024" x1="6352" />
            <wire x2="6368" y1="560" y2="976" x1="6368" />
        </branch>
        <branch name="XLXN_121">
            <wire x2="1696" y1="928" y2="1024" x1="1696" />
            <wire x2="2080" y1="928" y2="928" x1="1696" />
            <wire x2="2080" y1="928" y2="1024" x1="2080" />
            <wire x2="2288" y1="928" y2="928" x1="2080" />
            <wire x2="2720" y1="928" y2="928" x1="2288" />
            <wire x2="2720" y1="928" y2="1024" x1="2720" />
            <wire x2="3472" y1="928" y2="928" x1="2720" />
            <wire x2="3472" y1="928" y2="1024" x1="3472" />
            <wire x2="4336" y1="928" y2="928" x1="3472" />
            <wire x2="4336" y1="928" y2="1024" x1="4336" />
            <wire x2="5568" y1="928" y2="928" x1="4336" />
            <wire x2="5568" y1="928" y2="1024" x1="5568" />
            <wire x2="6208" y1="928" y2="928" x1="5568" />
            <wire x2="6224" y1="928" y2="928" x1="6208" />
            <wire x2="6224" y1="928" y2="1024" x1="6224" />
            <wire x2="2288" y1="928" y2="1024" x1="2288" />
            <wire x2="6208" y1="736" y2="928" x1="6208" />
            <wire x2="6240" y1="736" y2="736" x1="6208" />
            <wire x2="6240" y1="560" y2="736" x1="6240" />
        </branch>
        <branch name="XLXN_133">
            <wire x2="1152" y1="848" y2="1024" x1="1152" />
            <wire x2="3344" y1="848" y2="848" x1="1152" />
            <wire x2="4208" y1="848" y2="848" x1="3344" />
            <wire x2="4208" y1="848" y2="1024" x1="4208" />
            <wire x2="4688" y1="848" y2="848" x1="4208" />
            <wire x2="4688" y1="848" y2="1024" x1="4688" />
            <wire x2="4912" y1="848" y2="848" x1="4688" />
            <wire x2="4912" y1="848" y2="1024" x1="4912" />
            <wire x2="5840" y1="848" y2="848" x1="4912" />
            <wire x2="5904" y1="848" y2="848" x1="5840" />
            <wire x2="5904" y1="848" y2="1024" x1="5904" />
            <wire x2="3344" y1="848" y2="1024" x1="3344" />
            <wire x2="5968" y1="592" y2="592" x1="5840" />
            <wire x2="5840" y1="592" y2="848" x1="5840" />
            <wire x2="5968" y1="560" y2="592" x1="5968" />
        </branch>
        <branch name="XLXN_122">
            <wire x2="1632" y1="880" y2="880" x1="1216" />
            <wire x2="1632" y1="880" y2="1024" x1="1632" />
            <wire x2="2656" y1="880" y2="880" x1="1632" />
            <wire x2="2656" y1="880" y2="1024" x1="2656" />
            <wire x2="2832" y1="880" y2="880" x1="2656" />
            <wire x2="2832" y1="880" y2="1024" x1="2832" />
            <wire x2="5248" y1="880" y2="880" x1="2832" />
            <wire x2="5248" y1="880" y2="1024" x1="5248" />
            <wire x2="5744" y1="880" y2="880" x1="5248" />
            <wire x2="5744" y1="880" y2="1024" x1="5744" />
            <wire x2="5968" y1="880" y2="880" x1="5744" />
            <wire x2="5968" y1="880" y2="1024" x1="5968" />
            <wire x2="6112" y1="880" y2="880" x1="5968" />
            <wire x2="6288" y1="880" y2="880" x1="6112" />
            <wire x2="6288" y1="880" y2="1024" x1="6288" />
            <wire x2="1216" y1="880" y2="1024" x1="1216" />
            <wire x2="6112" y1="560" y2="880" x1="6112" />
        </branch>
        <iomarker fontsize="28" x="6368" y="144" name="D3" orien="R270" />
        <iomarker fontsize="28" x="6240" y="144" name="D2" orien="R270" />
        <iomarker fontsize="28" x="6112" y="144" name="D1" orien="R270" />
        <iomarker fontsize="28" x="5968" y="144" name="D0" orien="R270" />
        <branch name="D1">
            <wire x2="1456" y1="752" y2="1024" x1="1456" />
            <wire x2="1904" y1="752" y2="752" x1="1456" />
            <wire x2="1904" y1="752" y2="1024" x1="1904" />
            <wire x2="2016" y1="752" y2="752" x1="1904" />
            <wire x2="2016" y1="752" y2="1024" x1="2016" />
            <wire x2="3408" y1="752" y2="752" x1="2016" />
            <wire x2="3408" y1="752" y2="1024" x1="3408" />
            <wire x2="3680" y1="752" y2="752" x1="3408" />
            <wire x2="3680" y1="752" y2="1024" x1="3680" />
            <wire x2="3968" y1="752" y2="752" x1="3680" />
            <wire x2="3968" y1="752" y2="1024" x1="3968" />
            <wire x2="4272" y1="752" y2="752" x1="3968" />
            <wire x2="4272" y1="752" y2="1024" x1="4272" />
            <wire x2="4544" y1="752" y2="752" x1="4272" />
            <wire x2="4544" y1="752" y2="1024" x1="4544" />
            <wire x2="4976" y1="752" y2="752" x1="4544" />
            <wire x2="5504" y1="752" y2="752" x1="4976" />
            <wire x2="5504" y1="752" y2="1024" x1="5504" />
            <wire x2="6048" y1="752" y2="752" x1="5504" />
            <wire x2="4976" y1="752" y2="768" x1="4976" />
            <wire x2="4976" y1="768" y2="1024" x1="4976" />
            <wire x2="6112" y1="272" y2="272" x1="6048" />
            <wire x2="6112" y1="272" y2="336" x1="6112" />
            <wire x2="6048" y1="272" y2="752" x1="6048" />
            <wire x2="6112" y1="144" y2="272" x1="6112" />
        </branch>
        <branch name="LE">
            <wire x2="928" y1="576" y2="1824" x1="928" />
            <wire x2="1424" y1="1824" y2="1824" x1="928" />
            <wire x2="2192" y1="1824" y2="1824" x1="1424" />
            <wire x2="2832" y1="1824" y2="1824" x1="2192" />
            <wire x2="3648" y1="1824" y2="1824" x1="2832" />
            <wire x2="4240" y1="1824" y2="1824" x1="3648" />
            <wire x2="4880" y1="1824" y2="1824" x1="4240" />
            <wire x2="4880" y1="1824" y2="1840" x1="4880" />
            <wire x2="5856" y1="1824" y2="1824" x1="4880" />
            <wire x2="5856" y1="1824" y2="1840" x1="5856" />
            <wire x2="4240" y1="1824" y2="1840" x1="4240" />
            <wire x2="3648" y1="1824" y2="1840" x1="3648" />
            <wire x2="2832" y1="1824" y2="1840" x1="2832" />
            <wire x2="2192" y1="1824" y2="1840" x1="2192" />
            <wire x2="1424" y1="1824" y2="1840" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="928" y="576" name="LE" orien="R270" />
    </sheet>
</drawing>