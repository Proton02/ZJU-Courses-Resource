<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Scan(1:0)" />
        <signal name="Hexs(15:0)" />
        <signal name="Hexs(15:12)" />
        <signal name="Hexs(11:8)" />
        <signal name="Hexs(7:4)" />
        <signal name="Hexs(3:0)" />
        <signal name="Hex(3:0)" />
        <signal name="points(3:0)" />
        <signal name="points(3)" />
        <signal name="points(2)" />
        <signal name="points(1)" />
        <signal name="points(0)" />
        <signal name="p" />
        <signal name="LE" />
        <signal name="LES(3:0)" />
        <signal name="LES(3)" />
        <signal name="LES(2)" />
        <signal name="LES(1)" />
        <signal name="LES(0)" />
        <signal name="AN(3:0)" />
        <signal name="V1,V0,V1,V1" />
        <signal name="V0,V1,V1,V1" />
        <signal name="V1,V1,V0,V1" />
        <signal name="V1" />
        <signal name="V0" />
        <signal name="V1,V1,V1,V0" />
        <port polarity="Input" name="Scan(1:0)" />
        <port polarity="Input" name="Hexs(15:0)" />
        <port polarity="Output" name="Hex(3:0)" />
        <port polarity="Input" name="points(3:0)" />
        <port polarity="Output" name="p" />
        <port polarity="Output" name="LE" />
        <port polarity="Input" name="LES(3:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <blockdef name="Mux4to14b">
            <timestamp>2023-11-1T8:29:39</timestamp>
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
            <timestamp>2023-11-1T7:48:14</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <block symbolname="Mux4to14b" name="XLXI_2">
            <blockpin signalname="Scan(1:0)" name="s(1:0)" />
            <blockpin signalname="Hexs(3:0)" name="I0(3:0)" />
            <blockpin signalname="Hexs(11:8)" name="I2(3:0)" />
            <blockpin signalname="Hexs(15:12)" name="I3(3:0)" />
            <blockpin signalname="Hexs(7:4)" name="I1(3:0)" />
            <blockpin signalname="Hex(3:0)" name="o(3:0)" />
        </block>
        <block symbolname="Mux4to1" name="XLXI_3">
            <blockpin signalname="Scan(1:0)" name="s(1:0)" />
            <blockpin signalname="points(0)" name="I0" />
            <blockpin signalname="points(1)" name="I1" />
            <blockpin signalname="points(2)" name="I2" />
            <blockpin signalname="points(3)" name="I3" />
            <blockpin signalname="p" name="o" />
        </block>
        <block symbolname="Mux4to1" name="XLXI_4">
            <blockpin signalname="Scan(1:0)" name="s(1:0)" />
            <blockpin signalname="LES(0)" name="I0" />
            <blockpin signalname="LES(1)" name="I1" />
            <blockpin signalname="LES(2)" name="I2" />
            <blockpin signalname="LES(3)" name="I3" />
            <blockpin signalname="LE" name="o" />
        </block>
        <block symbolname="Mux4to14b" name="XLXI_5">
            <blockpin signalname="Scan(1:0)" name="s(1:0)" />
            <blockpin signalname="V1,V1,V1,V0" name="I0(3:0)" />
            <blockpin signalname="V1,V0,V1,V1" name="I2(3:0)" />
            <blockpin signalname="V0,V1,V1,V1" name="I3(3:0)" />
            <blockpin signalname="V1,V1,V0,V1" name="I1(3:0)" />
            <blockpin signalname="AN(3:0)" name="o(3:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_6">
            <blockpin signalname="V1" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_7">
            <blockpin signalname="V0" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1488" y="592" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1488" y="1152" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1504" y="1680" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1520" y="2208" name="XLXI_5" orien="R0">
        </instance>
        <branch name="Scan(1:0)">
            <wire x2="1360" y1="96" y2="96" x1="416" />
            <wire x2="1488" y1="96" y2="96" x1="1360" />
            <wire x2="1488" y1="96" y2="304" x1="1488" />
            <wire x2="1360" y1="96" y2="864" x1="1360" />
            <wire x2="1488" y1="864" y2="864" x1="1360" />
            <wire x2="1360" y1="864" y2="1392" x1="1360" />
            <wire x2="1504" y1="1392" y2="1392" x1="1360" />
            <wire x2="1360" y1="1392" y2="1920" x1="1360" />
            <wire x2="1520" y1="1920" y2="1920" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="416" y="96" name="Scan(1:0)" orien="R180" />
        <branch name="Hexs(15:0)">
            <wire x2="960" y1="448" y2="448" x1="432" />
            <wire x2="960" y1="448" y2="512" x1="960" />
            <wire x2="1008" y1="512" y2="512" x1="960" />
            <wire x2="1008" y1="512" y2="528" x1="1008" />
            <wire x2="960" y1="512" y2="576" x1="960" />
            <wire x2="960" y1="576" y2="624" x1="960" />
            <wire x2="1008" y1="576" y2="576" x1="960" />
            <wire x2="1008" y1="576" y2="592" x1="1008" />
            <wire x2="960" y1="272" y2="304" x1="960" />
            <wire x2="1008" y1="304" y2="304" x1="960" />
            <wire x2="1008" y1="304" y2="336" x1="1008" />
            <wire x2="960" y1="304" y2="384" x1="960" />
            <wire x2="960" y1="384" y2="448" x1="960" />
            <wire x2="1008" y1="384" y2="384" x1="960" />
            <wire x2="1008" y1="384" y2="400" x1="1008" />
            <wire x2="1008" y1="272" y2="304" x1="1008" />
            <wire x2="1008" y1="368" y2="384" x1="1008" />
            <wire x2="1008" y1="496" y2="512" x1="1008" />
            <wire x2="1008" y1="560" y2="576" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="432" y="448" name="Hexs(15:0)" orien="R180" />
        <bustap x2="1104" y1="512" y2="512" x1="1008" />
        <branch name="Hexs(15:12)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="512" type="branch" />
            <wire x2="1120" y1="512" y2="512" x1="1104" />
            <wire x2="1136" y1="512" y2="512" x1="1120" />
            <wire x2="1488" y1="496" y2="496" x1="1136" />
            <wire x2="1136" y1="496" y2="512" x1="1136" />
        </branch>
        <bustap x2="1104" y1="384" y2="384" x1="1008" />
        <branch name="Hexs(11:8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1128" y="384" type="branch" />
            <wire x2="1136" y1="384" y2="384" x1="1104" />
            <wire x2="1152" y1="384" y2="384" x1="1136" />
            <wire x2="1152" y1="384" y2="432" x1="1152" />
            <wire x2="1488" y1="432" y2="432" x1="1152" />
        </branch>
        <bustap x2="1104" y1="576" y2="576" x1="1008" />
        <branch name="Hexs(7:4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="576" type="branch" />
            <wire x2="1168" y1="576" y2="576" x1="1104" />
            <wire x2="1232" y1="576" y2="576" x1="1168" />
            <wire x2="1488" y1="560" y2="560" x1="1232" />
            <wire x2="1232" y1="560" y2="576" x1="1232" />
        </branch>
        <bustap x2="1104" y1="304" y2="304" x1="1008" />
        <branch name="Hexs(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="304" type="branch" />
            <wire x2="1136" y1="304" y2="304" x1="1104" />
            <wire x2="1168" y1="304" y2="304" x1="1136" />
            <wire x2="1168" y1="304" y2="368" x1="1168" />
            <wire x2="1488" y1="368" y2="368" x1="1168" />
        </branch>
        <branch name="Hex(3:0)">
            <wire x2="2304" y1="304" y2="304" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="2304" y="304" name="Hex(3:0)" orien="R0" />
        <branch name="points(3:0)">
            <wire x2="960" y1="960" y2="960" x1="304" />
            <wire x2="960" y1="960" y2="1024" x1="960" />
            <wire x2="960" y1="1024" y2="1120" x1="960" />
            <wire x2="960" y1="1120" y2="1184" x1="960" />
            <wire x2="960" y1="752" y2="848" x1="960" />
            <wire x2="960" y1="848" y2="912" x1="960" />
            <wire x2="960" y1="912" y2="960" x1="960" />
        </branch>
        <iomarker fontsize="28" x="304" y="960" name="points(3:0)" orien="R180" />
        <bustap x2="1056" y1="1120" y2="1120" x1="960" />
        <branch name="points(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="1120" type="branch" />
            <wire x2="1088" y1="1120" y2="1120" x1="1056" />
            <wire x2="1488" y1="1120" y2="1120" x1="1088" />
        </branch>
        <bustap x2="1056" y1="1024" y2="1024" x1="960" />
        <branch name="points(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1080" y="1024" type="branch" />
            <wire x2="1088" y1="1024" y2="1024" x1="1056" />
            <wire x2="1248" y1="1024" y2="1024" x1="1088" />
            <wire x2="1248" y1="1024" y2="1056" x1="1248" />
            <wire x2="1488" y1="1056" y2="1056" x1="1248" />
        </branch>
        <bustap x2="1056" y1="912" y2="912" x1="960" />
        <branch name="points(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1080" y="912" type="branch" />
            <wire x2="1088" y1="912" y2="912" x1="1056" />
            <wire x2="1264" y1="912" y2="912" x1="1088" />
            <wire x2="1264" y1="912" y2="992" x1="1264" />
            <wire x2="1488" y1="992" y2="992" x1="1264" />
        </branch>
        <bustap x2="1056" y1="848" y2="848" x1="960" />
        <branch name="points(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1080" y="848" type="branch" />
            <wire x2="1088" y1="848" y2="848" x1="1056" />
            <wire x2="1104" y1="848" y2="848" x1="1088" />
            <wire x2="1296" y1="848" y2="848" x1="1104" />
            <wire x2="1296" y1="848" y2="928" x1="1296" />
            <wire x2="1488" y1="928" y2="928" x1="1296" />
        </branch>
        <branch name="p">
            <wire x2="2176" y1="864" y2="864" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="2176" y="864" name="p" orien="R0" />
        <branch name="LE">
            <wire x2="2144" y1="1392" y2="1392" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="2144" y="1392" name="LE" orien="R0" />
        <branch name="LES(3:0)">
            <wire x2="960" y1="1536" y2="1536" x1="336" />
            <wire x2="960" y1="1536" y2="1600" x1="960" />
            <wire x2="960" y1="1600" y2="1664" x1="960" />
            <wire x2="960" y1="1664" y2="1712" x1="960" />
            <wire x2="960" y1="1376" y2="1440" x1="960" />
            <wire x2="960" y1="1440" y2="1488" x1="960" />
            <wire x2="960" y1="1488" y2="1536" x1="960" />
        </branch>
        <iomarker fontsize="28" x="336" y="1536" name="LES(3:0)" orien="R180" />
        <bustap x2="1056" y1="1664" y2="1664" x1="960" />
        <branch name="LES(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1064" y="1664" type="branch" />
            <wire x2="1072" y1="1664" y2="1664" x1="1056" />
            <wire x2="1120" y1="1664" y2="1664" x1="1072" />
            <wire x2="1504" y1="1648" y2="1648" x1="1120" />
            <wire x2="1120" y1="1648" y2="1664" x1="1120" />
        </branch>
        <bustap x2="1056" y1="1600" y2="1600" x1="960" />
        <branch name="LES(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="1600" type="branch" />
            <wire x2="1072" y1="1600" y2="1600" x1="1056" />
            <wire x2="1088" y1="1600" y2="1600" x1="1072" />
            <wire x2="1504" y1="1584" y2="1584" x1="1088" />
            <wire x2="1088" y1="1584" y2="1600" x1="1088" />
        </branch>
        <bustap x2="1056" y1="1488" y2="1488" x1="960" />
        <branch name="LES(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="1488" type="branch" />
            <wire x2="1072" y1="1488" y2="1488" x1="1056" />
            <wire x2="1088" y1="1488" y2="1488" x1="1072" />
            <wire x2="1088" y1="1488" y2="1520" x1="1088" />
            <wire x2="1504" y1="1520" y2="1520" x1="1088" />
        </branch>
        <bustap x2="1056" y1="1440" y2="1440" x1="960" />
        <branch name="LES(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1096" y="1440" type="branch" />
            <wire x2="1104" y1="1440" y2="1440" x1="1056" />
            <wire x2="1136" y1="1440" y2="1440" x1="1104" />
            <wire x2="1136" y1="1440" y2="1456" x1="1136" />
            <wire x2="1504" y1="1456" y2="1456" x1="1136" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="2128" y1="1920" y2="1920" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="2128" y="1920" name="AN(3:0)" orien="R0" />
        <branch name="V1,V0,V1,V1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="768" y="2048" type="branch" />
            <wire x2="1520" y1="2048" y2="2048" x1="768" />
        </branch>
        <branch name="V0,V1,V1,V1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="2112" type="branch" />
            <wire x2="1520" y1="2112" y2="2112" x1="752" />
        </branch>
        <branch name="V1,V1,V0,V1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="2176" type="branch" />
            <wire x2="1520" y1="2176" y2="2176" x1="752" />
        </branch>
        <instance x="112" y="2304" name="XLXI_7" orien="R0" />
        <instance x="112" y="1952" name="XLXI_6" orien="R0" />
        <branch name="V1">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="1952" type="branch" />
            <wire x2="176" y1="1952" y2="1968" x1="176" />
            <wire x2="224" y1="1968" y2="1968" x1="176" />
            <wire x2="224" y1="1952" y2="1968" x1="224" />
        </branch>
        <branch name="V0">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="2176" type="branch" />
            <wire x2="176" y1="2160" y2="2176" x1="176" />
            <wire x2="224" y1="2160" y2="2160" x1="176" />
            <wire x2="224" y1="2160" y2="2176" x1="224" />
        </branch>
        <branch name="V1,V1,V1,V0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="768" y="1984" type="branch" />
            <wire x2="1520" y1="1984" y2="1984" x1="768" />
        </branch>
    </sheet>
</drawing>