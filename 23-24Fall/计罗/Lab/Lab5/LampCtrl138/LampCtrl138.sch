<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="S3" />
        <signal name="S2" />
        <signal name="S1" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="F" />
        <signal name="Y(7:0)" />
        <signal name="Y(1)" />
        <signal name="Y(2)" />
        <signal name="Y(4)" />
        <signal name="Y(7)" />
        <port polarity="Input" name="S3" />
        <port polarity="Input" name="S2" />
        <port polarity="Input" name="S1" />
        <port polarity="Output" name="F" />
        <blockdef name="D_74LS138">
            <timestamp>2023-10-18T13:5:0</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="nand4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="216" y1="-160" y2="-160" x1="256" />
            <circle r="12" cx="204" cy="-160" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="64" y1="-112" y2="-112" x1="144" />
        </blockdef>
        <block symbolname="gnd" name="XLXI_2">
            <blockpin signalname="XLXN_4" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_3">
            <blockpin signalname="XLXN_5" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_4">
            <blockpin signalname="XLXN_6" name="P" />
        </block>
        <block symbolname="nand4" name="XLXI_5">
            <blockpin signalname="Y(7)" name="I0" />
            <blockpin signalname="Y(4)" name="I1" />
            <blockpin signalname="Y(2)" name="I2" />
            <blockpin signalname="Y(1)" name="I3" />
            <blockpin signalname="F" name="O" />
        </block>
        <block symbolname="D_74LS138" name="XLXI_1">
            <blockpin signalname="S3" name="A" />
            <blockpin signalname="S2" name="B" />
            <blockpin signalname="S1" name="C" />
            <blockpin signalname="XLXN_4" name="G2A" />
            <blockpin signalname="XLXN_6" name="G" />
            <blockpin signalname="XLXN_5" name="G2B" />
            <blockpin signalname="Y(7:0)" name="Y(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="S3">
            <wire x2="1184" y1="848" y2="848" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1152" y="848" name="S3" orien="R180" />
        <branch name="S2">
            <wire x2="1184" y1="912" y2="912" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1152" y="912" name="S2" orien="R180" />
        <branch name="S1">
            <wire x2="1184" y1="976" y2="976" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1152" y="976" name="S1" orien="R180" />
        <branch name="XLXN_4">
            <wire x2="1184" y1="1040" y2="1040" x1="1152" />
        </branch>
        <instance x="1024" y="976" name="XLXI_2" orien="R90" />
        <branch name="XLXN_5">
            <wire x2="1184" y1="1168" y2="1168" x1="1152" />
        </branch>
        <instance x="1024" y="1104" name="XLXI_3" orien="R90" />
        <branch name="XLXN_6">
            <wire x2="1184" y1="1104" y2="1104" x1="928" />
        </branch>
        <instance x="928" y="1168" name="XLXI_4" orien="R270" />
        <instance x="1920" y="1136" name="XLXI_5" orien="R0" />
        <branch name="F">
            <wire x2="2208" y1="976" y2="976" x1="2176" />
        </branch>
        <iomarker fontsize="28" x="2208" y="976" name="F" orien="R0" />
        <branch name="Y(7:0)">
            <wire x2="1664" y1="848" y2="848" x1="1568" />
            <wire x2="1664" y1="848" y2="880" x1="1664" />
            <wire x2="1664" y1="880" y2="944" x1="1664" />
            <wire x2="1664" y1="944" y2="1008" x1="1664" />
            <wire x2="1664" y1="1008" y2="1072" x1="1664" />
            <wire x2="1664" y1="1072" y2="1120" x1="1664" />
        </branch>
        <instance x="1184" y="1200" name="XLXI_1" orien="R0">
        </instance>
        <bustap x2="1760" y1="880" y2="880" x1="1664" />
        <branch name="Y(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="880" type="branch" />
            <wire x2="1776" y1="880" y2="880" x1="1760" />
            <wire x2="1792" y1="880" y2="880" x1="1776" />
            <wire x2="1920" y1="880" y2="880" x1="1792" />
        </branch>
        <bustap x2="1760" y1="944" y2="944" x1="1664" />
        <branch name="Y(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="944" type="branch" />
            <wire x2="1776" y1="944" y2="944" x1="1760" />
            <wire x2="1792" y1="944" y2="944" x1="1776" />
            <wire x2="1920" y1="944" y2="944" x1="1792" />
        </branch>
        <bustap x2="1760" y1="1008" y2="1008" x1="1664" />
        <branch name="Y(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="1008" type="branch" />
            <wire x2="1776" y1="1008" y2="1008" x1="1760" />
            <wire x2="1792" y1="1008" y2="1008" x1="1776" />
            <wire x2="1920" y1="1008" y2="1008" x1="1792" />
        </branch>
        <bustap x2="1760" y1="1072" y2="1072" x1="1664" />
        <branch name="Y(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="1072" type="branch" />
            <wire x2="1776" y1="1072" y2="1072" x1="1760" />
            <wire x2="1792" y1="1072" y2="1072" x1="1776" />
            <wire x2="1920" y1="1072" y2="1072" x1="1792" />
        </branch>
    </sheet>
</drawing>