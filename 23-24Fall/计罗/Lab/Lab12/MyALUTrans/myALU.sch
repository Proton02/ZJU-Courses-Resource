<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="S(1:0)" />
        <signal name="S(0)" />
        <signal name="A(3:0)" />
        <signal name="B(3:0)" />
        <signal name="XLXN_5(3:0)" />
        <signal name="XLXN_7(3:0)" />
        <signal name="XLXN_8(3:0)" />
        <signal name="XLXN_9" />
        <signal name="XLXN_11" />
        <signal name="C(3:0)" />
        <signal name="Co" />
        <port polarity="Input" name="S(1:0)" />
        <port polarity="Input" name="A(3:0)" />
        <port polarity="Input" name="B(3:0)" />
        <port polarity="Output" name="C(3:0)" />
        <port polarity="Output" name="Co" />
        <blockdef name="AddSub4b">
            <timestamp>2023-11-7T12:16:54</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="MyAnd2b4">
            <timestamp>2023-12-12T16:11:19</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="MyOr2b4">
            <timestamp>2023-12-12T16:12:7</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="Mux4to1b4">
            <timestamp>2023-10-31T16:23:18</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="Mux4to1_sch">
            <timestamp>2023-11-1T2:30:24</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
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
        <block symbolname="AddSub4b" name="XLXI_1">
            <blockpin signalname="A(3:0)" name="A(3:0)" />
            <blockpin signalname="S(0)" name="Ctrl" />
            <blockpin signalname="B(3:0)" name="B(3:0)" />
            <blockpin signalname="XLXN_5(3:0)" name="S(3:0)" />
            <blockpin signalname="XLXN_9" name="Co" />
        </block>
        <block symbolname="MyOr2b4" name="XLXI_3">
            <blockpin signalname="A(3:0)" name="A(3:0)" />
            <blockpin signalname="B(3:0)" name="B(3:0)" />
            <blockpin signalname="XLXN_7(3:0)" name="C(3:0)" />
        </block>
        <block symbolname="Mux4to1b4" name="XLXI_4">
            <blockpin signalname="S(1:0)" name="s(1:0)" />
            <blockpin signalname="XLXN_5(3:0)" name="I1(3:0)" />
            <blockpin signalname="XLXN_8(3:0)" name="I2(3:0)" />
            <blockpin signalname="XLXN_7(3:0)" name="I3(3:0)" />
            <blockpin signalname="XLXN_5(3:0)" name="I0(3:0)" />
            <blockpin signalname="C(3:0)" name="o(3:0)" />
        </block>
        <block symbolname="Mux4to1_sch" name="XLXI_5">
            <blockpin signalname="S(1:0)" name="s(1:0)" />
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="XLXN_11" name="I2" />
            <blockpin signalname="XLXN_11" name="I3" />
            <blockpin signalname="Co" name="o" />
        </block>
        <block symbolname="gnd" name="XLXI_6">
            <blockpin signalname="XLXN_11" name="G" />
        </block>
        <block symbolname="MyAnd2b4" name="XLXI_8">
            <blockpin signalname="A(3:0)" name="A(3:0)" />
            <blockpin signalname="B(3:0)" name="B(3:0)" />
            <blockpin signalname="XLXN_8(3:0)" name="C(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="848" y="1152" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2336" y="1360" name="XLXI_4" orien="R0">
        </instance>
        <instance x="2336" y="2000" name="XLXI_5" orien="R0">
        </instance>
        <branch name="S(1:0)">
            <wire x2="720" y1="688" y2="688" x1="480" />
            <wire x2="2048" y1="688" y2="688" x1="720" />
            <wire x2="2048" y1="688" y2="1072" x1="2048" />
            <wire x2="2048" y1="1072" y2="1712" x1="2048" />
            <wire x2="2336" y1="1712" y2="1712" x1="2048" />
            <wire x2="2336" y1="1072" y2="1072" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="480" y="688" name="S(1:0)" orien="R180" />
        <bustap x2="720" y1="688" y2="784" x1="720" />
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="720" y="888" type="branch" />
            <wire x2="720" y1="784" y2="896" x1="720" />
            <wire x2="720" y1="896" y2="1056" x1="720" />
            <wire x2="848" y1="1056" y2="1056" x1="720" />
        </branch>
        <branch name="A(3:0)">
            <wire x2="640" y1="992" y2="992" x1="480" />
            <wire x2="848" y1="992" y2="992" x1="640" />
            <wire x2="640" y1="992" y2="1440" x1="640" />
            <wire x2="1008" y1="1440" y2="1440" x1="640" />
            <wire x2="640" y1="1440" y2="1776" x1="640" />
            <wire x2="1056" y1="1776" y2="1776" x1="640" />
        </branch>
        <branch name="B(3:0)">
            <wire x2="560" y1="1120" y2="1120" x1="480" />
            <wire x2="848" y1="1120" y2="1120" x1="560" />
            <wire x2="560" y1="1120" y2="1504" x1="560" />
            <wire x2="1008" y1="1504" y2="1504" x1="560" />
            <wire x2="560" y1="1504" y2="1840" x1="560" />
            <wire x2="1056" y1="1840" y2="1840" x1="560" />
        </branch>
        <branch name="XLXN_5(3:0)">
            <wire x2="1776" y1="992" y2="992" x1="1232" />
            <wire x2="1776" y1="992" y2="1136" x1="1776" />
            <wire x2="1776" y1="1136" y2="1328" x1="1776" />
            <wire x2="2336" y1="1328" y2="1328" x1="1776" />
            <wire x2="2336" y1="1136" y2="1136" x1="1776" />
        </branch>
        <branch name="XLXN_7(3:0)">
            <wire x2="1472" y1="1776" y2="1776" x1="1440" />
            <wire x2="1472" y1="1264" y2="1776" x1="1472" />
            <wire x2="2336" y1="1264" y2="1264" x1="1472" />
        </branch>
        <branch name="XLXN_8(3:0)">
            <wire x2="2320" y1="1440" y2="1440" x1="1392" />
            <wire x2="2336" y1="1200" y2="1200" x1="2320" />
            <wire x2="2320" y1="1200" y2="1440" x1="2320" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1792" y1="1120" y2="1120" x1="1232" />
            <wire x2="1792" y1="1120" y2="1776" x1="1792" />
            <wire x2="2336" y1="1776" y2="1776" x1="1792" />
            <wire x2="1792" y1="1776" y2="1840" x1="1792" />
            <wire x2="2336" y1="1840" y2="1840" x1="1792" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="2160" y1="1904" y2="1904" x1="1792" />
            <wire x2="2160" y1="1904" y2="1968" x1="2160" />
            <wire x2="2336" y1="1968" y2="1968" x1="2160" />
            <wire x2="2320" y1="1904" y2="1904" x1="2160" />
            <wire x2="2336" y1="1904" y2="1904" x1="2320" />
            <wire x2="1792" y1="1904" y2="1984" x1="1792" />
        </branch>
        <instance x="1728" y="2112" name="XLXI_6" orien="R0" />
        <branch name="C(3:0)">
            <wire x2="3024" y1="1072" y2="1072" x1="2720" />
        </branch>
        <branch name="Co">
            <wire x2="3040" y1="1712" y2="1712" x1="2720" />
        </branch>
        <iomarker fontsize="28" x="3024" y="1072" name="C(3:0)" orien="R0" />
        <iomarker fontsize="28" x="3040" y="1712" name="Co" orien="R0" />
        <instance x="1008" y="1536" name="XLXI_8" orien="R0">
        </instance>
        <instance x="1056" y="1872" name="XLXI_3" orien="R0">
        </instance>
        <iomarker fontsize="28" x="480" y="992" name="A(3:0)" orien="R180" />
        <iomarker fontsize="28" x="480" y="1120" name="B(3:0)" orien="R180" />
    </sheet>
</drawing>