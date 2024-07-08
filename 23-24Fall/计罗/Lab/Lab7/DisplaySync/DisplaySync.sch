<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Hexs(15:0)" />
        <signal name="Hexs(3:0)" />
        <signal name="Hexs(7:4)" />
        <signal name="Hexs(11:8)" />
        <signal name="Hexs(15:12)" />
        <signal name="HEX(3:0)" />
        <signal name="point(3:0)" />
        <signal name="Scan(1:0)" />
        <signal name="point(3)" />
        <signal name="point(2)" />
        <signal name="point(1)" />
        <signal name="point(0)" />
        <signal name="LES(3:0)" />
        <signal name="LES(3)" />
        <signal name="LES(2)" />
        <signal name="LES(1)" />
        <signal name="LES(0)" />
        <signal name="p" />
        <signal name="LE" />
        <signal name="Scan(1)" />
        <signal name="Scan(0)" />
        <signal name="XLXN_24" />
        <signal name="AN(3:0)" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="AN(3)" />
        <signal name="AN(2)" />
        <signal name="AN(1)" />
        <signal name="AN(0)" />
        <port polarity="Input" name="Hexs(15:0)" />
        <port polarity="Output" name="HEX(3:0)" />
        <port polarity="Input" name="point(3:0)" />
        <port polarity="Input" name="Scan(1:0)" />
        <port polarity="Input" name="LES(3:0)" />
        <port polarity="Output" name="p" />
        <port polarity="Output" name="LE" />
        <port polarity="Output" name="AN(3:0)" />
        <blockdef name="d2_4e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <blockdef name="Mux4to1b4">
            <timestamp>2023-10-31T16:44:48</timestamp>
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
        <blockdef name="Mux4to1">
            <timestamp>2023-12-29T2:10:1</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <block symbolname="d2_4e" name="XLXI_5">
            <blockpin signalname="Scan(0)" name="A0" />
            <blockpin signalname="Scan(1)" name="A1" />
            <blockpin signalname="XLXN_24" name="E" />
            <blockpin signalname="XLXN_27" name="D0" />
            <blockpin signalname="XLXN_28" name="D1" />
            <blockpin signalname="XLXN_29" name="D2" />
            <blockpin signalname="XLXN_30" name="D3" />
        </block>
        <block symbolname="vcc" name="XLXI_6">
            <blockpin signalname="XLXN_24" name="P" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="XLXN_27" name="I" />
            <blockpin signalname="AN(0)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="XLXN_28" name="I" />
            <blockpin signalname="AN(1)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="XLXN_29" name="I" />
            <blockpin signalname="AN(2)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="XLXN_30" name="I" />
            <blockpin signalname="AN(3)" name="O" />
        </block>
        <block symbolname="Mux4to1b4" name="XLXI_11">
            <blockpin signalname="Scan(1:0)" name="s(1:0)" />
            <blockpin signalname="Hexs(7:4)" name="I1(3:0)" />
            <blockpin signalname="Hexs(11:8)" name="I2(3:0)" />
            <blockpin signalname="Hexs(15:12)" name="I3(3:0)" />
            <blockpin signalname="Hexs(3:0)" name="I0(3:0)" />
            <blockpin signalname="HEX(3:0)" name="o(3:0)" />
        </block>
        <block symbolname="Mux4to1" name="XLXI_12">
            <blockpin signalname="Scan(1:0)" name="s(1:0)" />
            <blockpin signalname="point(0)" name="I0" />
            <blockpin signalname="point(1)" name="I1" />
            <blockpin signalname="point(2)" name="I2" />
            <blockpin signalname="point(3)" name="I3" />
            <blockpin signalname="p" name="o" />
        </block>
        <block symbolname="Mux4to1" name="XLXI_13">
            <blockpin signalname="Scan(1:0)" name="s(1:0)" />
            <blockpin signalname="LES(0)" name="I0" />
            <blockpin signalname="LES(1)" name="I1" />
            <blockpin signalname="LES(2)" name="I2" />
            <blockpin signalname="LES(3)" name="I3" />
            <blockpin signalname="LE" name="o" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <iomarker fontsize="28" x="320" y="160" name="Scan(1:0)" orien="R180" />
        <branch name="Hexs(15:0)">
            <wire x2="288" y1="384" y2="384" x1="192" />
            <wire x2="288" y1="384" y2="416" x1="288" />
            <wire x2="288" y1="416" y2="480" x1="288" />
            <wire x2="288" y1="480" y2="560" x1="288" />
            <wire x2="288" y1="240" y2="288" x1="288" />
            <wire x2="288" y1="288" y2="352" x1="288" />
            <wire x2="288" y1="352" y2="384" x1="288" />
        </branch>
        <iomarker fontsize="28" x="192" y="384" name="Hexs(15:0)" orien="R180" />
        <bustap x2="384" y1="480" y2="480" x1="288" />
        <branch name="Hexs(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="656" y="480" type="branch" />
            <wire x2="656" y1="480" y2="480" x1="384" />
            <wire x2="928" y1="480" y2="480" x1="656" />
        </branch>
        <bustap x2="384" y1="288" y2="288" x1="288" />
        <branch name="Hexs(7:4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="656" y="288" type="branch" />
            <wire x2="656" y1="288" y2="288" x1="384" />
            <wire x2="928" y1="288" y2="288" x1="656" />
        </branch>
        <bustap x2="384" y1="352" y2="352" x1="288" />
        <branch name="Hexs(11:8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="656" y="352" type="branch" />
            <wire x2="656" y1="352" y2="352" x1="384" />
            <wire x2="928" y1="352" y2="352" x1="656" />
        </branch>
        <bustap x2="384" y1="416" y2="416" x1="288" />
        <branch name="Hexs(15:12)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="656" y="416" type="branch" />
            <wire x2="656" y1="416" y2="416" x1="384" />
            <wire x2="928" y1="416" y2="416" x1="656" />
        </branch>
        <branch name="HEX(3:0)">
            <wire x2="1456" y1="224" y2="224" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1456" y="224" name="HEX(3:0)" orien="R0" />
        <branch name="point(3:0)">
            <wire x2="288" y1="720" y2="720" x1="224" />
            <wire x2="288" y1="720" y2="800" x1="288" />
            <wire x2="288" y1="800" y2="864" x1="288" />
            <wire x2="288" y1="864" y2="928" x1="288" />
            <wire x2="288" y1="928" y2="992" x1="288" />
            <wire x2="288" y1="992" y2="1056" x1="288" />
        </branch>
        <iomarker fontsize="28" x="224" y="720" name="point(3:0)" orien="R180" />
        <branch name="Scan(1:0)">
            <wire x2="448" y1="160" y2="160" x1="320" />
            <wire x2="448" y1="160" y2="224" x1="448" />
            <wire x2="928" y1="224" y2="224" x1="448" />
            <wire x2="448" y1="224" y2="736" x1="448" />
            <wire x2="592" y1="736" y2="736" x1="448" />
            <wire x2="448" y1="736" y2="1104" x1="448" />
            <wire x2="592" y1="1104" y2="1104" x1="448" />
            <wire x2="448" y1="1104" y2="1552" x1="448" />
            <wire x2="448" y1="1552" y2="1616" x1="448" />
            <wire x2="448" y1="1616" y2="1872" x1="448" />
        </branch>
        <bustap x2="384" y1="992" y2="992" x1="288" />
        <branch name="point(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="432" y="992" type="branch" />
            <wire x2="432" y1="992" y2="992" x1="384" />
            <wire x2="592" y1="992" y2="992" x1="432" />
        </branch>
        <bustap x2="384" y1="928" y2="928" x1="288" />
        <branch name="point(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="432" y="928" type="branch" />
            <wire x2="432" y1="928" y2="928" x1="384" />
            <wire x2="592" y1="928" y2="928" x1="432" />
        </branch>
        <bustap x2="384" y1="864" y2="864" x1="288" />
        <branch name="point(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="424" y="864" type="branch" />
            <wire x2="432" y1="864" y2="864" x1="384" />
            <wire x2="592" y1="864" y2="864" x1="432" />
        </branch>
        <bustap x2="384" y1="800" y2="800" x1="288" />
        <branch name="point(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="432" y="800" type="branch" />
            <wire x2="432" y1="800" y2="800" x1="384" />
            <wire x2="592" y1="800" y2="800" x1="432" />
        </branch>
        <branch name="LES(3:0)">
            <wire x2="288" y1="1120" y2="1120" x1="224" />
            <wire x2="288" y1="1120" y2="1168" x1="288" />
            <wire x2="288" y1="1168" y2="1232" x1="288" />
            <wire x2="288" y1="1232" y2="1296" x1="288" />
            <wire x2="288" y1="1296" y2="1360" x1="288" />
            <wire x2="288" y1="1360" y2="1440" x1="288" />
        </branch>
        <iomarker fontsize="28" x="224" y="1120" name="LES(3:0)" orien="R180" />
        <bustap x2="384" y1="1360" y2="1360" x1="288" />
        <branch name="LES(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="488" y="1360" type="branch" />
            <wire x2="496" y1="1360" y2="1360" x1="384" />
            <wire x2="592" y1="1360" y2="1360" x1="496" />
        </branch>
        <bustap x2="384" y1="1296" y2="1296" x1="288" />
        <branch name="LES(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="488" y="1296" type="branch" />
            <wire x2="496" y1="1296" y2="1296" x1="384" />
            <wire x2="592" y1="1296" y2="1296" x1="496" />
        </branch>
        <bustap x2="384" y1="1232" y2="1232" x1="288" />
        <branch name="LES(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="488" y="1232" type="branch" />
            <wire x2="496" y1="1232" y2="1232" x1="384" />
            <wire x2="592" y1="1232" y2="1232" x1="496" />
        </branch>
        <bustap x2="384" y1="1168" y2="1168" x1="288" />
        <branch name="LES(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="488" y="1168" type="branch" />
            <wire x2="496" y1="1168" y2="1168" x1="384" />
            <wire x2="592" y1="1168" y2="1168" x1="496" />
        </branch>
        <branch name="p">
            <wire x2="1008" y1="736" y2="736" x1="976" />
        </branch>
        <branch name="LE">
            <wire x2="1024" y1="1104" y2="1104" x1="976" />
        </branch>
        <iomarker fontsize="28" x="1008" y="736" name="p" orien="R0" />
        <iomarker fontsize="28" x="1024" y="1104" name="LE" orien="R0" />
        <instance x="592" y="1872" name="XLXI_5" orien="R0" />
        <bustap x2="544" y1="1616" y2="1616" x1="448" />
        <branch name="Scan(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="568" y="1616" type="branch" />
            <wire x2="576" y1="1616" y2="1616" x1="544" />
            <wire x2="592" y1="1616" y2="1616" x1="576" />
        </branch>
        <bustap x2="544" y1="1552" y2="1552" x1="448" />
        <branch name="Scan(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="568" y="1552" type="branch" />
            <wire x2="576" y1="1552" y2="1552" x1="544" />
            <wire x2="592" y1="1552" y2="1552" x1="576" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="592" y1="1744" y2="1744" x1="560" />
        </branch>
        <instance x="560" y="1808" name="XLXI_6" orien="R270" />
        <branch name="XLXN_27">
            <wire x2="1008" y1="1552" y2="1552" x1="976" />
        </branch>
        <instance x="1008" y="1584" name="XLXI_7" orien="R0" />
        <branch name="XLXN_28">
            <wire x2="1008" y1="1616" y2="1616" x1="976" />
        </branch>
        <instance x="1008" y="1648" name="XLXI_8" orien="R0" />
        <branch name="XLXN_29">
            <wire x2="1008" y1="1680" y2="1680" x1="976" />
        </branch>
        <instance x="1008" y="1712" name="XLXI_9" orien="R0" />
        <branch name="XLXN_30">
            <wire x2="1008" y1="1744" y2="1744" x1="976" />
        </branch>
        <instance x="1008" y="1776" name="XLXI_10" orien="R0" />
        <iomarker fontsize="28" x="1632" y="1808" name="AN(3:0)" orien="R0" />
        <branch name="AN(3:0)">
            <wire x2="1488" y1="1520" y2="1552" x1="1488" />
            <wire x2="1488" y1="1552" y2="1616" x1="1488" />
            <wire x2="1488" y1="1616" y2="1680" x1="1488" />
            <wire x2="1488" y1="1680" y2="1744" x1="1488" />
            <wire x2="1488" y1="1744" y2="1808" x1="1488" />
            <wire x2="1632" y1="1808" y2="1808" x1="1488" />
        </branch>
        <bustap x2="1392" y1="1744" y2="1744" x1="1488" />
        <branch name="AN(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1744" type="branch" />
            <wire x2="1312" y1="1744" y2="1744" x1="1232" />
            <wire x2="1392" y1="1744" y2="1744" x1="1312" />
        </branch>
        <bustap x2="1392" y1="1680" y2="1680" x1="1488" />
        <branch name="AN(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1680" type="branch" />
            <wire x2="1312" y1="1680" y2="1680" x1="1232" />
            <wire x2="1392" y1="1680" y2="1680" x1="1312" />
        </branch>
        <bustap x2="1392" y1="1616" y2="1616" x1="1488" />
        <branch name="AN(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1616" type="branch" />
            <wire x2="1312" y1="1616" y2="1616" x1="1232" />
            <wire x2="1392" y1="1616" y2="1616" x1="1312" />
        </branch>
        <bustap x2="1392" y1="1552" y2="1552" x1="1488" />
        <branch name="AN(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1552" type="branch" />
            <wire x2="1312" y1="1552" y2="1552" x1="1232" />
            <wire x2="1392" y1="1552" y2="1552" x1="1312" />
        </branch>
        <instance x="928" y="512" name="XLXI_11" orien="R0">
        </instance>
        <instance x="592" y="1024" name="XLXI_12" orien="R0">
        </instance>
        <instance x="592" y="1392" name="XLXI_13" orien="R0">
        </instance>
    </sheet>
</drawing>