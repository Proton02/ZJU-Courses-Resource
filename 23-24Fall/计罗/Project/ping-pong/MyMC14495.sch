<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="g" />
        <signal name="f" />
        <signal name="e" />
        <signal name="d" />
        <signal name="c" />
        <signal name="b" />
        <signal name="a" />
        <signal name="LE" />
        <signal name="point" />
        <signal name="p" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_29" />
        <signal name="XLXN_26" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66" />
        <signal name="XLXN_68" />
        <signal name="D3" />
        <signal name="D2" />
        <signal name="D1" />
        <signal name="D0" />
        <signal name="XLXN_85" />
        <signal name="XLXN_87" />
        <signal name="XLXN_94" />
        <signal name="XLXN_100" />
        <port polarity="Output" name="g" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="a" />
        <port polarity="Input" name="LE" />
        <port polarity="Input" name="point" />
        <port polarity="Output" name="p" />
        <port polarity="Input" name="D3" />
        <port polarity="Input" name="D2" />
        <port polarity="Input" name="D1" />
        <port polarity="Input" name="D0" />
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
        <block symbolname="or2" name="XLXI_1">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_18" name="I1" />
            <blockpin signalname="g" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_2">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_19" name="I1" />
            <blockpin signalname="f" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_20" name="I1" />
            <blockpin signalname="e" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_4">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_21" name="I1" />
            <blockpin signalname="d" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_5">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_22" name="I1" />
            <blockpin signalname="c" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_6">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_23" name="I1" />
            <blockpin signalname="b" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_7">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_24" name="I1" />
            <blockpin signalname="a" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="point" name="I" />
            <blockpin signalname="p" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_10">
            <blockpin signalname="XLXN_65" name="I0" />
            <blockpin signalname="XLXN_66" name="I1" />
            <blockpin signalname="XLXN_68" name="I2" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_11">
            <blockpin signalname="XLXN_47" name="I0" />
            <blockpin signalname="XLXN_46" name="I1" />
            <blockpin signalname="XLXN_45" name="I2" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_12">
            <blockpin signalname="XLXN_40" name="I0" />
            <blockpin signalname="XLXN_41" name="I1" />
            <blockpin signalname="XLXN_36" name="I2" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_13">
            <blockpin signalname="XLXN_29" name="I0" />
            <blockpin signalname="XLXN_64" name="I1" />
            <blockpin signalname="XLXN_44" name="I2" />
            <blockpin signalname="XLXN_26" name="I3" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_14">
            <blockpin signalname="XLXN_37" name="I0" />
            <blockpin signalname="XLXN_36" name="I1" />
            <blockpin signalname="XLXN_35" name="I2" />
            <blockpin signalname="XLXN_34" name="I3" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_15">
            <blockpin signalname="XLXN_42" name="I0" />
            <blockpin signalname="XLXN_43" name="I1" />
            <blockpin signalname="XLXN_44" name="I2" />
            <blockpin signalname="XLXN_26" name="I3" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_16">
            <blockpin signalname="XLXN_48" name="I0" />
            <blockpin signalname="XLXN_49" name="I1" />
            <blockpin signalname="XLXN_50" name="I2" />
            <blockpin signalname="XLXN_64" name="I3" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_17">
            <blockpin signalname="XLXN_94" name="I0" />
            <blockpin signalname="XLXN_87" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_65" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_18">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_100" name="I3" />
            <blockpin signalname="XLXN_66" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_19">
            <blockpin signalname="XLXN_87" name="I0" />
            <blockpin signalname="XLXN_85" name="I1" />
            <blockpin signalname="XLXN_100" name="I2" />
            <blockpin signalname="XLXN_68" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_20">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_100" name="I2" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_22">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="XLXN_85" name="I1" />
            <blockpin signalname="XLXN_100" name="I2" />
            <blockpin signalname="XLXN_49" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_23">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_85" name="I1" />
            <blockpin signalname="XLXN_100" name="I2" />
            <blockpin signalname="XLXN_50" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_24">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_87" name="I1" />
            <blockpin signalname="XLXN_85" name="I2" />
            <blockpin signalname="XLXN_47" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_25">
            <blockpin signalname="XLXN_87" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="XLXN_100" name="I2" />
            <blockpin signalname="XLXN_46" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_26">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_100" name="I1" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_27">
            <blockpin signalname="XLXN_94" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_85" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_28">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_43" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_31">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_32">
            <blockpin signalname="XLXN_94" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_36" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_33">
            <blockpin signalname="XLXN_94" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_35" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_34">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_87" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_100" name="I3" />
            <blockpin signalname="XLXN_34" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_35">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_85" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_36">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_87" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_64" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_37">
            <blockpin signalname="XLXN_94" name="I0" />
            <blockpin signalname="XLXN_87" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_100" name="I3" />
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_38">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_85" name="I1" />
            <blockpin signalname="XLXN_87" name="I2" />
            <blockpin signalname="XLXN_100" name="I3" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_44">
            <blockpin signalname="D3" name="I" />
            <blockpin signalname="XLXN_100" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_45">
            <blockpin signalname="D2" name="I" />
            <blockpin signalname="XLXN_85" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_46">
            <blockpin signalname="D1" name="I" />
            <blockpin signalname="XLXN_87" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_47">
            <blockpin signalname="D0" name="I" />
            <blockpin signalname="XLXN_94" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_49">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_40" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_50">
            <blockpin signalname="XLXN_94" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_85" name="I2" />
            <blockpin signalname="XLXN_100" name="I3" />
            <blockpin signalname="XLXN_41" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="1920" y="4416" name="XLXI_2" orien="R90" />
        <instance x="992" y="4400" name="XLXI_1" orien="R90" />
        <branch name="g">
            <wire x2="1088" y1="4656" y2="4688" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="1088" y="4688" name="g" orien="R90" />
        <branch name="f">
            <wire x2="2016" y1="4672" y2="4704" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="2016" y="4704" name="f" orien="R90" />
        <branch name="e">
            <wire x2="2768" y1="4688" y2="4704" x1="2768" />
        </branch>
        <branch name="d">
            <wire x2="3440" y1="4688" y2="4704" x1="3440" />
        </branch>
        <branch name="c">
            <wire x2="4096" y1="4640" y2="4720" x1="4096" />
        </branch>
        <branch name="b">
            <wire x2="4800" y1="4672" y2="4704" x1="4800" />
        </branch>
        <branch name="a">
            <wire x2="5936" y1="4656" y2="4704" x1="5936" />
        </branch>
        <instance x="4704" y="4416" name="XLXI_6" orien="R90" />
        <iomarker fontsize="28" x="4800" y="4704" name="b" orien="R90" />
        <instance x="4000" y="4384" name="XLXI_5" orien="R90" />
        <iomarker fontsize="28" x="4096" y="4720" name="c" orien="R90" />
        <instance x="3344" y="4432" name="XLXI_4" orien="R90" />
        <iomarker fontsize="28" x="3440" y="4704" name="d" orien="R90" />
        <instance x="2672" y="4432" name="XLXI_3" orien="R90" />
        <iomarker fontsize="28" x="2768" y="4704" name="e" orien="R90" />
        <instance x="5840" y="4400" name="XLXI_7" orien="R90" />
        <iomarker fontsize="28" x="5936" y="4704" name="a" orien="R90" />
        <branch name="LE">
            <wire x2="128" y1="2688" y2="4256" x1="128" />
            <wire x2="1056" y1="4256" y2="4256" x1="128" />
            <wire x2="1056" y1="4256" y2="4400" x1="1056" />
            <wire x2="1984" y1="4256" y2="4256" x1="1056" />
            <wire x2="1984" y1="4256" y2="4416" x1="1984" />
            <wire x2="2736" y1="4256" y2="4256" x1="1984" />
            <wire x2="2736" y1="4256" y2="4432" x1="2736" />
            <wire x2="3408" y1="4256" y2="4256" x1="2736" />
            <wire x2="4064" y1="4256" y2="4256" x1="3408" />
            <wire x2="4064" y1="4256" y2="4384" x1="4064" />
            <wire x2="4768" y1="4256" y2="4256" x1="4064" />
            <wire x2="4768" y1="4256" y2="4416" x1="4768" />
            <wire x2="5904" y1="4256" y2="4256" x1="4768" />
            <wire x2="5904" y1="4256" y2="4400" x1="5904" />
            <wire x2="3408" y1="4256" y2="4432" x1="3408" />
        </branch>
        <iomarker fontsize="28" x="128" y="2688" name="LE" orien="R270" />
        <instance x="400" y="3328" name="XLXI_9" orien="R90" />
        <branch name="point">
            <wire x2="432" y1="2704" y2="3328" x1="432" />
        </branch>
        <branch name="p">
            <wire x2="432" y1="3552" y2="4656" x1="432" />
        </branch>
        <iomarker fontsize="28" x="432" y="4656" name="p" orien="R90" />
        <iomarker fontsize="28" x="432" y="2704" name="point" orien="R270" />
        <instance x="2672" y="3856" name="XLXI_11" orien="R90" />
        <instance x="4000" y="3872" name="XLXI_12" orien="R90" />
        <instance x="5808" y="3872" name="XLXI_13" orien="R90" />
        <instance x="992" y="3824" name="XLXI_10" orien="R90" />
        <branch name="XLXN_18">
            <wire x2="1120" y1="4080" y2="4400" x1="1120" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="2048" y1="4304" y2="4416" x1="2048" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="2800" y1="4112" y2="4432" x1="2800" />
        </branch>
        <instance x="3312" y="3856" name="XLXI_15" orien="R90" />
        <branch name="XLXN_21">
            <wire x2="3472" y1="4112" y2="4432" x1="3472" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="4128" y1="4128" y2="4384" x1="4128" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="4832" y1="4208" y2="4416" x1="4832" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="5968" y1="4128" y2="4400" x1="5968" />
        </branch>
        <instance x="608" y="3488" name="XLXI_17" orien="R90" />
        <instance x="864" y="3488" name="XLXI_18" orien="R90" />
        <instance x="1136" y="3488" name="XLXI_19" orien="R90" />
        <instance x="1696" y="3504" name="XLXI_20" orien="R90" />
        <instance x="1872" y="3504" name="XLXI_22" orien="R90" />
        <instance x="2048" y="3504" name="XLXI_23" orien="R90" />
        <instance x="2448" y="3504" name="XLXI_24" orien="R90" />
        <instance x="2640" y="3504" name="XLXI_25" orien="R90" />
        <instance x="2864" y="3504" name="XLXI_26" orien="R90" />
        <instance x="3120" y="3504" name="XLXI_27" orien="R90" />
        <instance x="3376" y="3504" name="XLXI_28" orien="R90" />
        <instance x="4416" y="3504" name="XLXI_31" orien="R90" />
        <instance x="4624" y="3504" name="XLXI_32" orien="R90" />
        <instance x="4816" y="3504" name="XLXI_33" orien="R90" />
        <instance x="5008" y="3504" name="XLXI_34" orien="R90" />
        <instance x="5408" y="3504" name="XLXI_35" orien="R90" />
        <instance x="5680" y="3504" name="XLXI_36" orien="R90" />
        <instance x="5952" y="3504" name="XLXI_37" orien="R90" />
        <instance x="6224" y="3504" name="XLXI_38" orien="R90" />
        <branch name="XLXN_29">
            <wire x2="5568" y1="3760" y2="3872" x1="5568" />
            <wire x2="5872" y1="3872" y2="3872" x1="5568" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="6384" y1="3840" y2="3840" x1="3568" />
            <wire x2="6384" y1="3840" y2="3872" x1="6384" />
            <wire x2="3568" y1="3840" y2="3856" x1="3568" />
            <wire x2="6384" y1="3872" y2="3872" x1="6064" />
            <wire x2="6384" y1="3760" y2="3840" x1="6384" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="5168" y1="3952" y2="3952" x1="4928" />
            <wire x2="5168" y1="3760" y2="3952" x1="5168" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="4944" y1="3776" y2="3776" x1="4864" />
            <wire x2="4864" y1="3776" y2="3952" x1="4864" />
            <wire x2="4944" y1="3760" y2="3776" x1="4944" />
        </branch>
        <instance x="4672" y="3952" name="XLXI_14" orien="R90" />
        <branch name="XLXN_37">
            <wire x2="4544" y1="3760" y2="3776" x1="4544" />
            <wire x2="4736" y1="3776" y2="3776" x1="4544" />
            <wire x2="4736" y1="3776" y2="3952" x1="4736" />
        </branch>
        <branch name="XLXN_36">
            <wire x2="4800" y1="3872" y2="3872" x1="4192" />
            <wire x2="4800" y1="3872" y2="3952" x1="4800" />
            <wire x2="4752" y1="3760" y2="3776" x1="4752" />
            <wire x2="4800" y1="3776" y2="3776" x1="4752" />
            <wire x2="4800" y1="3776" y2="3872" x1="4800" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="3888" y1="3760" y2="3824" x1="3888" />
            <wire x2="4064" y1="3824" y2="3824" x1="3888" />
            <wire x2="4064" y1="3824" y2="3872" x1="4064" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="4128" y1="3760" y2="3872" x1="4128" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="3280" y1="3760" y2="3856" x1="3280" />
            <wire x2="3376" y1="3856" y2="3856" x1="3280" />
        </branch>
        <branch name="XLXN_43">
            <wire x2="3440" y1="3808" y2="3856" x1="3440" />
            <wire x2="3504" y1="3808" y2="3808" x1="3440" />
            <wire x2="3504" y1="3760" y2="3808" x1="3504" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="3504" y1="3824" y2="3856" x1="3504" />
            <wire x2="3568" y1="3824" y2="3824" x1="3504" />
            <wire x2="3568" y1="3808" y2="3824" x1="3568" />
            <wire x2="6000" y1="3808" y2="3808" x1="3568" />
            <wire x2="6112" y1="3808" y2="3808" x1="6000" />
            <wire x2="6000" y1="3808" y2="3872" x1="6000" />
            <wire x2="6112" y1="3760" y2="3808" x1="6112" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="2960" y1="3856" y2="3856" x1="2864" />
            <wire x2="2960" y1="3760" y2="3856" x1="2960" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="2768" y1="3760" y2="3808" x1="2768" />
            <wire x2="2800" y1="3808" y2="3808" x1="2768" />
            <wire x2="2800" y1="3808" y2="3856" x1="2800" />
        </branch>
        <branch name="XLXN_47">
            <wire x2="2576" y1="3760" y2="3856" x1="2576" />
            <wire x2="2736" y1="3856" y2="3856" x1="2576" />
        </branch>
        <branch name="XLXN_50">
            <wire x2="2176" y1="3776" y2="3776" x1="2080" />
            <wire x2="2080" y1="3776" y2="4048" x1="2080" />
            <wire x2="2176" y1="3760" y2="3776" x1="2176" />
        </branch>
        <instance x="1888" y="4048" name="XLXI_16" orien="R90" />
        <branch name="XLXN_48">
            <wire x2="1824" y1="3760" y2="3776" x1="1824" />
            <wire x2="1952" y1="3776" y2="3776" x1="1824" />
            <wire x2="1952" y1="3776" y2="4048" x1="1952" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="2000" y1="3760" y2="3776" x1="2000" />
            <wire x2="2016" y1="3776" y2="3776" x1="2000" />
            <wire x2="2016" y1="3776" y2="4048" x1="2016" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="2144" y1="3760" y2="4048" x1="2144" />
            <wire x2="5840" y1="3760" y2="3760" x1="2144" />
            <wire x2="5936" y1="3760" y2="3760" x1="5840" />
            <wire x2="5936" y1="3760" y2="3872" x1="5936" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="768" y1="3744" y2="3824" x1="768" />
            <wire x2="1056" y1="3824" y2="3824" x1="768" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="1024" y1="3744" y2="3776" x1="1024" />
            <wire x2="1120" y1="3776" y2="3776" x1="1024" />
            <wire x2="1120" y1="3776" y2="3824" x1="1120" />
        </branch>
        <branch name="XLXN_68">
            <wire x2="1264" y1="3824" y2="3824" x1="1184" />
            <wire x2="1264" y1="3744" y2="3824" x1="1264" />
        </branch>
        <instance x="6960" y="1952" name="XLXI_44" orien="R90" />
        <iomarker fontsize="28" x="6992" y="1616" name="D3" orien="R270" />
        <instance x="6576" y="1952" name="XLXI_45" orien="R90" />
        <instance x="6256" y="1952" name="XLXI_46" orien="R90" />
        <instance x="6032" y="1952" name="XLXI_47" orien="R90" />
        <branch name="D2">
            <wire x2="800" y1="2352" y2="3488" x1="800" />
            <wire x2="1056" y1="2352" y2="2352" x1="800" />
            <wire x2="2768" y1="2352" y2="2352" x1="1056" />
            <wire x2="3568" y1="2352" y2="2352" x1="2768" />
            <wire x2="3568" y1="2352" y2="3504" x1="3568" />
            <wire x2="3888" y1="2352" y2="2352" x1="3568" />
            <wire x2="3888" y1="2352" y2="3504" x1="3888" />
            <wire x2="4752" y1="2352" y2="2352" x1="3888" />
            <wire x2="5008" y1="2352" y2="2352" x1="4752" />
            <wire x2="5200" y1="2352" y2="2352" x1="5008" />
            <wire x2="5872" y1="2352" y2="2352" x1="5200" />
            <wire x2="6144" y1="2352" y2="2352" x1="5872" />
            <wire x2="6144" y1="2352" y2="3504" x1="6144" />
            <wire x2="6464" y1="2352" y2="2352" x1="6144" />
            <wire x2="5872" y1="2352" y2="3504" x1="5872" />
            <wire x2="5200" y1="2352" y2="3504" x1="5200" />
            <wire x2="5008" y1="2352" y2="3504" x1="5008" />
            <wire x2="4752" y1="2352" y2="3504" x1="4752" />
            <wire x2="2768" y1="2352" y2="3504" x1="2768" />
            <wire x2="1056" y1="2352" y2="3488" x1="1056" />
            <wire x2="6608" y1="1808" y2="1808" x1="6464" />
            <wire x2="6608" y1="1808" y2="1952" x1="6608" />
            <wire x2="6464" y1="1808" y2="2352" x1="6464" />
            <wire x2="6608" y1="1616" y2="1808" x1="6608" />
        </branch>
        <branch name="D1">
            <wire x2="1824" y1="2272" y2="2272" x1="992" />
            <wire x2="1936" y1="2272" y2="2272" x1="1824" />
            <wire x2="3248" y1="2272" y2="2272" x1="1936" />
            <wire x2="3504" y1="2272" y2="2272" x1="3248" />
            <wire x2="3824" y1="2272" y2="2272" x1="3504" />
            <wire x2="4096" y1="2272" y2="2272" x1="3824" />
            <wire x2="4544" y1="2272" y2="2272" x1="4096" />
            <wire x2="4944" y1="2272" y2="2272" x1="4544" />
            <wire x2="5536" y1="2272" y2="2272" x1="4944" />
            <wire x2="5536" y1="2272" y2="3504" x1="5536" />
            <wire x2="6208" y1="2272" y2="2272" x1="5536" />
            <wire x2="4944" y1="2272" y2="3504" x1="4944" />
            <wire x2="4544" y1="2272" y2="3504" x1="4544" />
            <wire x2="4096" y1="2272" y2="3504" x1="4096" />
            <wire x2="3824" y1="2272" y2="3504" x1="3824" />
            <wire x2="3504" y1="2272" y2="3504" x1="3504" />
            <wire x2="3248" y1="2272" y2="3504" x1="3248" />
            <wire x2="1936" y1="2272" y2="3504" x1="1936" />
            <wire x2="1824" y1="2272" y2="3504" x1="1824" />
            <wire x2="992" y1="2272" y2="3488" x1="992" />
            <wire x2="6288" y1="1776" y2="1776" x1="6208" />
            <wire x2="6288" y1="1776" y2="1952" x1="6288" />
            <wire x2="6208" y1="1776" y2="2272" x1="6208" />
            <wire x2="6288" y1="1616" y2="1776" x1="6288" />
        </branch>
        <branch name="D0">
            <wire x2="1760" y1="2192" y2="2192" x1="928" />
            <wire x2="2112" y1="2192" y2="2192" x1="1760" />
            <wire x2="2112" y1="2192" y2="3504" x1="2112" />
            <wire x2="2512" y1="2192" y2="2192" x1="2112" />
            <wire x2="2512" y1="2192" y2="3504" x1="2512" />
            <wire x2="2928" y1="2192" y2="2192" x1="2512" />
            <wire x2="3440" y1="2192" y2="2192" x1="2928" />
            <wire x2="4480" y1="2192" y2="2192" x1="3440" />
            <wire x2="5072" y1="2192" y2="2192" x1="4480" />
            <wire x2="5472" y1="2192" y2="2192" x1="5072" />
            <wire x2="5744" y1="2192" y2="2192" x1="5472" />
            <wire x2="5744" y1="2192" y2="3504" x1="5744" />
            <wire x2="6320" y1="2192" y2="2192" x1="5744" />
            <wire x2="6320" y1="2192" y2="3440" x1="6320" />
            <wire x2="5472" y1="2192" y2="3504" x1="5472" />
            <wire x2="5072" y1="2192" y2="3504" x1="5072" />
            <wire x2="4480" y1="2192" y2="3504" x1="4480" />
            <wire x2="3440" y1="2192" y2="3504" x1="3440" />
            <wire x2="2928" y1="2192" y2="3504" x1="2928" />
            <wire x2="1760" y1="2192" y2="3504" x1="1760" />
            <wire x2="928" y1="2192" y2="3488" x1="928" />
            <wire x2="6064" y1="1680" y2="1680" x1="5744" />
            <wire x2="6064" y1="1680" y2="1952" x1="6064" />
            <wire x2="5744" y1="1680" y2="2192" x1="5744" />
            <wire x2="6064" y1="1616" y2="1680" x1="6064" />
            <wire x2="6288" y1="3440" y2="3504" x1="6288" />
            <wire x2="6320" y1="3440" y2="3440" x1="6288" />
        </branch>
        <iomarker fontsize="28" x="6608" y="1616" name="D2" orien="R270" />
        <iomarker fontsize="28" x="6288" y="1616" name="D1" orien="R270" />
        <iomarker fontsize="28" x="6064" y="1616" name="D0" orien="R270" />
        <branch name="D3">
            <wire x2="864" y1="2480" y2="3488" x1="864" />
            <wire x2="3376" y1="2480" y2="2480" x1="864" />
            <wire x2="3376" y1="2480" y2="3504" x1="3376" />
            <wire x2="3952" y1="2480" y2="2480" x1="3376" />
            <wire x2="3984" y1="2480" y2="2480" x1="3952" />
            <wire x2="4608" y1="2480" y2="2480" x1="3984" />
            <wire x2="4608" y1="2480" y2="3504" x1="4608" />
            <wire x2="4816" y1="2480" y2="2480" x1="4608" />
            <wire x2="5664" y1="2480" y2="2480" x1="4816" />
            <wire x2="5664" y1="2480" y2="3504" x1="5664" />
            <wire x2="5936" y1="2480" y2="2480" x1="5664" />
            <wire x2="5952" y1="2480" y2="2480" x1="5936" />
            <wire x2="6816" y1="2480" y2="2480" x1="5952" />
            <wire x2="5936" y1="2480" y2="3504" x1="5936" />
            <wire x2="4816" y1="2480" y2="3504" x1="4816" />
            <wire x2="3952" y1="2480" y2="3504" x1="3952" />
            <wire x2="6992" y1="1696" y2="1696" x1="6816" />
            <wire x2="6992" y1="1696" y2="1952" x1="6992" />
            <wire x2="6816" y1="1696" y2="2480" x1="6816" />
            <wire x2="6992" y1="1616" y2="1696" x1="6992" />
        </branch>
        <branch name="XLXN_85">
            <wire x2="1264" y1="3184" y2="3488" x1="1264" />
            <wire x2="2000" y1="3184" y2="3184" x1="1264" />
            <wire x2="2176" y1="3184" y2="3184" x1="2000" />
            <wire x2="2640" y1="3184" y2="3184" x1="2176" />
            <wire x2="3312" y1="3184" y2="3184" x1="2640" />
            <wire x2="3312" y1="3184" y2="3504" x1="3312" />
            <wire x2="4160" y1="3184" y2="3184" x1="3312" />
            <wire x2="5600" y1="3184" y2="3184" x1="4160" />
            <wire x2="6352" y1="3184" y2="3184" x1="5600" />
            <wire x2="6352" y1="3184" y2="3504" x1="6352" />
            <wire x2="6608" y1="3184" y2="3184" x1="6352" />
            <wire x2="5600" y1="3184" y2="3504" x1="5600" />
            <wire x2="4160" y1="3184" y2="3504" x1="4160" />
            <wire x2="2640" y1="3184" y2="3504" x1="2640" />
            <wire x2="2176" y1="3184" y2="3504" x1="2176" />
            <wire x2="2000" y1="3184" y2="3504" x1="2000" />
            <wire x2="6608" y1="2176" y2="3184" x1="6608" />
        </branch>
        <branch name="XLXN_87">
            <wire x2="736" y1="2992" y2="3488" x1="736" />
            <wire x2="1200" y1="2992" y2="2992" x1="736" />
            <wire x2="2576" y1="2992" y2="2992" x1="1200" />
            <wire x2="2704" y1="2992" y2="2992" x1="2576" />
            <wire x2="5136" y1="2992" y2="2992" x1="2704" />
            <wire x2="5136" y1="2992" y2="3504" x1="5136" />
            <wire x2="5808" y1="2992" y2="2992" x1="5136" />
            <wire x2="6080" y1="2992" y2="2992" x1="5808" />
            <wire x2="6080" y1="2992" y2="3504" x1="6080" />
            <wire x2="6288" y1="2992" y2="2992" x1="6080" />
            <wire x2="6416" y1="2992" y2="2992" x1="6288" />
            <wire x2="6416" y1="2992" y2="3504" x1="6416" />
            <wire x2="5808" y1="2992" y2="3504" x1="5808" />
            <wire x2="2704" y1="2992" y2="3504" x1="2704" />
            <wire x2="2576" y1="2992" y2="3504" x1="2576" />
            <wire x2="1200" y1="2992" y2="3488" x1="1200" />
            <wire x2="6288" y1="2176" y2="2992" x1="6288" />
        </branch>
        <branch name="XLXN_94">
            <wire x2="3184" y1="2864" y2="2864" x1="672" />
            <wire x2="3184" y1="2864" y2="3504" x1="3184" />
            <wire x2="4032" y1="2864" y2="2864" x1="3184" />
            <wire x2="4064" y1="2864" y2="2864" x1="4032" />
            <wire x2="4688" y1="2864" y2="2864" x1="4064" />
            <wire x2="4880" y1="2864" y2="2864" x1="4688" />
            <wire x2="4880" y1="2864" y2="3504" x1="4880" />
            <wire x2="6016" y1="2864" y2="2864" x1="4880" />
            <wire x2="6016" y1="2864" y2="3504" x1="6016" />
            <wire x2="4688" y1="2864" y2="3504" x1="4688" />
            <wire x2="4032" y1="2864" y2="3504" x1="4032" />
            <wire x2="672" y1="2864" y2="3488" x1="672" />
            <wire x2="6064" y1="2176" y2="2176" x1="6016" />
            <wire x2="6016" y1="2176" y2="2864" x1="6016" />
        </branch>
        <instance x="3760" y="3504" name="XLXI_49" orien="R90" />
        <instance x="3968" y="3504" name="XLXI_50" orien="R90" />
        <branch name="XLXN_100">
            <wire x2="1120" y1="3328" y2="3488" x1="1120" />
            <wire x2="1328" y1="3328" y2="3328" x1="1120" />
            <wire x2="1888" y1="3328" y2="3328" x1="1328" />
            <wire x2="2064" y1="3328" y2="3328" x1="1888" />
            <wire x2="2240" y1="3328" y2="3328" x1="2064" />
            <wire x2="2832" y1="3328" y2="3328" x1="2240" />
            <wire x2="2992" y1="3328" y2="3328" x1="2832" />
            <wire x2="2992" y1="3328" y2="3504" x1="2992" />
            <wire x2="4224" y1="3328" y2="3328" x1="2992" />
            <wire x2="5264" y1="3328" y2="3328" x1="4224" />
            <wire x2="6208" y1="3328" y2="3328" x1="5264" />
            <wire x2="6480" y1="3328" y2="3328" x1="6208" />
            <wire x2="6480" y1="3328" y2="3504" x1="6480" />
            <wire x2="6992" y1="3328" y2="3328" x1="6480" />
            <wire x2="6208" y1="3328" y2="3504" x1="6208" />
            <wire x2="5264" y1="3328" y2="3504" x1="5264" />
            <wire x2="4224" y1="3328" y2="3504" x1="4224" />
            <wire x2="2832" y1="3328" y2="3504" x1="2832" />
            <wire x2="2240" y1="3328" y2="3504" x1="2240" />
            <wire x2="2064" y1="3328" y2="3504" x1="2064" />
            <wire x2="1888" y1="3328" y2="3504" x1="1888" />
            <wire x2="1328" y1="3328" y2="3488" x1="1328" />
            <wire x2="6992" y1="2176" y2="3328" x1="6992" />
        </branch>
    </sheet>
</drawing>