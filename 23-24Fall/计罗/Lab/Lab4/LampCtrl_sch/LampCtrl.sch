<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="S1" />
        <signal name="S2" />
        <signal name="S3" />
        <signal name="XLXN_19" />
        <signal name="XLXN_22" />
        <signal name="XLXN_24" />
        <signal name="XLXN_30" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="F" />
        <signal name="LED(6:0)" />
        <signal name="LED(6)" />
        <signal name="LED(5)" />
        <signal name="LED(4)" />
        <signal name="LED(3)" />
        <signal name="LED(2)" />
        <signal name="LED(1)" />
        <signal name="LED(0)" />
        <port polarity="Input" name="S1" />
        <port polarity="Input" name="S2" />
        <port polarity="Input" name="S3" />
        <port polarity="Output" name="F" />
        <port polarity="Output" name="LED(6:0)" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="S1" name="I" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="S2" name="I" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="S3" name="I" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_14">
            <blockpin signalname="XLXN_19" name="I0" />
            <blockpin signalname="XLXN_22" name="I1" />
            <blockpin signalname="S1" name="I2" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_17">
            <blockpin signalname="XLXN_19" name="I0" />
            <blockpin signalname="S2" name="I1" />
            <blockpin signalname="XLXN_24" name="I2" />
            <blockpin signalname="XLXN_35" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_18">
            <blockpin signalname="S3" name="I0" />
            <blockpin signalname="XLXN_22" name="I1" />
            <blockpin signalname="XLXN_24" name="I2" />
            <blockpin signalname="XLXN_36" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_19">
            <blockpin signalname="S3" name="I0" />
            <blockpin signalname="S2" name="I1" />
            <blockpin signalname="S1" name="I2" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_20">
            <blockpin signalname="XLXN_37" name="I0" />
            <blockpin signalname="XLXN_36" name="I1" />
            <blockpin signalname="XLXN_35" name="I2" />
            <blockpin signalname="XLXN_30" name="I3" />
            <blockpin signalname="F" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_40">
            <blockpin signalname="LED(6)" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_41">
            <blockpin signalname="LED(5)" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_42">
            <blockpin signalname="LED(4)" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_43">
            <blockpin signalname="LED(3)" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_44">
            <blockpin signalname="LED(2)" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_45">
            <blockpin signalname="LED(1)" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_46">
            <blockpin signalname="LED(0)" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="S1">
            <wire x2="464" y1="1040" y2="1040" x1="336" />
            <wire x2="576" y1="1040" y2="1040" x1="464" />
            <wire x2="464" y1="816" y2="1040" x1="464" />
            <wire x2="1040" y1="816" y2="816" x1="464" />
            <wire x2="1312" y1="816" y2="816" x1="1040" />
            <wire x2="1040" y1="816" y2="1552" x1="1040" />
            <wire x2="1312" y1="1552" y2="1552" x1="1040" />
        </branch>
        <instance x="560" y="1648" name="XLXI_10" orien="R0" />
        <branch name="S3">
            <wire x2="464" y1="1616" y2="1616" x1="336" />
            <wire x2="560" y1="1616" y2="1616" x1="464" />
            <wire x2="464" y1="1424" y2="1616" x1="464" />
            <wire x2="1072" y1="1424" y2="1424" x1="464" />
            <wire x2="1312" y1="1424" y2="1424" x1="1072" />
            <wire x2="1072" y1="1424" y2="1664" x1="1072" />
            <wire x2="1072" y1="1664" y2="1680" x1="1072" />
            <wire x2="1312" y1="1680" y2="1680" x1="1072" />
        </branch>
        <instance x="1312" y="1008" name="XLXI_14" orien="R0" />
        <instance x="576" y="1072" name="XLXI_7" orien="R0" />
        <instance x="576" y="1328" name="XLXI_8" orien="R0" />
        <branch name="S2">
            <wire x2="464" y1="1296" y2="1296" x1="336" />
            <wire x2="576" y1="1296" y2="1296" x1="464" />
            <wire x2="464" y1="1104" y2="1120" x1="464" />
            <wire x2="464" y1="1120" y2="1296" x1="464" />
            <wire x2="864" y1="1104" y2="1104" x1="464" />
            <wire x2="1312" y1="1104" y2="1104" x1="864" />
            <wire x2="864" y1="1104" y2="1664" x1="864" />
            <wire x2="864" y1="1664" y2="1696" x1="864" />
            <wire x2="1264" y1="1696" y2="1696" x1="864" />
            <wire x2="1312" y1="1616" y2="1616" x1="1264" />
            <wire x2="1264" y1="1616" y2="1664" x1="1264" />
            <wire x2="1264" y1="1664" y2="1696" x1="1264" />
        </branch>
        <instance x="1312" y="1232" name="XLXI_17" orien="R0" />
        <instance x="1312" y="1488" name="XLXI_18" orien="R0" />
        <instance x="1312" y="1744" name="XLXI_19" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="1120" y1="1616" y2="1616" x1="784" />
            <wire x2="1200" y1="1616" y2="1616" x1="1120" />
            <wire x2="1120" y1="944" y2="1616" x1="1120" />
            <wire x2="1312" y1="944" y2="944" x1="1120" />
            <wire x2="1200" y1="1168" y2="1616" x1="1200" />
            <wire x2="1312" y1="1168" y2="1168" x1="1200" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="816" y1="1296" y2="1296" x1="800" />
            <wire x2="1232" y1="1296" y2="1296" x1="816" />
            <wire x2="1248" y1="1296" y2="1296" x1="1232" />
            <wire x2="1248" y1="1296" y2="1360" x1="1248" />
            <wire x2="1312" y1="1360" y2="1360" x1="1248" />
            <wire x2="1248" y1="880" y2="1296" x1="1248" />
            <wire x2="1312" y1="880" y2="880" x1="1248" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="976" y1="1040" y2="1040" x1="800" />
            <wire x2="1296" y1="1040" y2="1040" x1="976" />
            <wire x2="1312" y1="1040" y2="1040" x1="1296" />
            <wire x2="976" y1="1040" y2="1264" x1="976" />
            <wire x2="1312" y1="1264" y2="1264" x1="976" />
            <wire x2="1312" y1="1264" y2="1296" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="336" y="1040" name="S1" orien="R180" />
        <iomarker fontsize="28" x="336" y="1296" name="S2" orien="R180" />
        <iomarker fontsize="28" x="336" y="1616" name="S3" orien="R180" />
        <instance x="1856" y="1376" name="XLXI_20" orien="R0" />
        <branch name="XLXN_30">
            <wire x2="1744" y1="880" y2="880" x1="1568" />
            <wire x2="1744" y1="880" y2="1088" x1="1744" />
            <wire x2="1744" y1="1088" y2="1120" x1="1744" />
            <wire x2="1856" y1="1120" y2="1120" x1="1744" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="1600" y1="1104" y2="1104" x1="1568" />
            <wire x2="1600" y1="1104" y2="1168" x1="1600" />
            <wire x2="1600" y1="1168" y2="1184" x1="1600" />
            <wire x2="1840" y1="1184" y2="1184" x1="1600" />
            <wire x2="1856" y1="1184" y2="1184" x1="1840" />
        </branch>
        <branch name="XLXN_36">
            <wire x2="1600" y1="1360" y2="1360" x1="1568" />
            <wire x2="1856" y1="1248" y2="1248" x1="1600" />
            <wire x2="1600" y1="1248" y2="1360" x1="1600" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="1744" y1="1616" y2="1616" x1="1568" />
            <wire x2="1856" y1="1312" y2="1312" x1="1744" />
            <wire x2="1744" y1="1312" y2="1616" x1="1744" />
        </branch>
        <branch name="F">
            <wire x2="2144" y1="1216" y2="1216" x1="2112" />
        </branch>
        <iomarker fontsize="28" x="2144" y="1216" name="F" orien="R0" />
        <branch name="LED(6:0)">
            <wire x2="400" y1="2080" y2="2080" x1="320" />
            <wire x2="432" y1="2080" y2="2080" x1="400" />
            <wire x2="448" y1="2080" y2="2080" x1="432" />
            <wire x2="480" y1="2080" y2="2080" x1="448" />
            <wire x2="512" y1="2080" y2="2080" x1="480" />
            <wire x2="528" y1="2080" y2="2080" x1="512" />
            <wire x2="560" y1="2080" y2="2080" x1="528" />
            <wire x2="624" y1="2080" y2="2080" x1="560" />
            <wire x2="640" y1="2080" y2="2080" x1="624" />
            <wire x2="656" y1="2080" y2="2080" x1="640" />
            <wire x2="672" y1="2080" y2="2080" x1="656" />
            <wire x2="720" y1="2080" y2="2080" x1="672" />
            <wire x2="736" y1="2080" y2="2080" x1="720" />
            <wire x2="784" y1="2080" y2="2080" x1="736" />
            <wire x2="800" y1="2080" y2="2080" x1="784" />
            <wire x2="848" y1="2080" y2="2080" x1="800" />
            <wire x2="880" y1="2080" y2="2080" x1="848" />
            <wire x2="896" y1="2080" y2="2080" x1="880" />
            <wire x2="976" y1="2080" y2="2080" x1="896" />
            <wire x2="1008" y1="2080" y2="2080" x1="976" />
            <wire x2="1088" y1="2080" y2="2080" x1="1008" />
            <wire x2="1120" y1="2080" y2="2080" x1="1088" />
            <wire x2="1136" y1="2080" y2="2080" x1="1120" />
            <wire x2="1760" y1="2080" y2="2080" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1760" y="2080" name="LED(6:0)" orien="R0" />
        <bustap x2="432" y1="2080" y2="1984" x1="432" />
        <branch name="LED(6)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="432" y="1976" type="branch" />
            <wire x2="432" y1="1968" y2="1976" x1="432" />
            <wire x2="432" y1="1976" y2="1984" x1="432" />
        </branch>
        <bustap x2="528" y1="2080" y2="1984" x1="528" />
        <branch name="LED(5)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="528" y="1976" type="branch" />
            <wire x2="528" y1="1968" y2="1976" x1="528" />
            <wire x2="528" y1="1976" y2="1984" x1="528" />
        </branch>
        <bustap x2="624" y1="2080" y2="1984" x1="624" />
        <branch name="LED(4)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="624" y="1976" type="branch" />
            <wire x2="624" y1="1968" y2="1976" x1="624" />
            <wire x2="624" y1="1976" y2="1984" x1="624" />
        </branch>
        <bustap x2="736" y1="2080" y2="1984" x1="736" />
        <branch name="LED(3)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="736" y="1976" type="branch" />
            <wire x2="736" y1="1968" y2="1976" x1="736" />
            <wire x2="736" y1="1976" y2="1984" x1="736" />
        </branch>
        <bustap x2="848" y1="2080" y2="1984" x1="848" />
        <branch name="LED(2)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="848" y="1976" type="branch" />
            <wire x2="848" y1="1968" y2="1976" x1="848" />
            <wire x2="848" y1="1976" y2="1984" x1="848" />
        </branch>
        <bustap x2="976" y1="2080" y2="1984" x1="976" />
        <branch name="LED(1)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="976" y="1976" type="branch" />
            <wire x2="976" y1="1968" y2="1976" x1="976" />
            <wire x2="976" y1="1976" y2="1984" x1="976" />
        </branch>
        <bustap x2="1088" y1="2080" y2="1984" x1="1088" />
        <branch name="LED(0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="1976" type="branch" />
            <wire x2="1088" y1="1968" y2="1976" x1="1088" />
            <wire x2="1088" y1="1976" y2="1984" x1="1088" />
        </branch>
        <instance x="496" y="1840" name="XLXI_40" orien="R180" />
        <instance x="592" y="1840" name="XLXI_41" orien="R180" />
        <instance x="688" y="1840" name="XLXI_42" orien="R180" />
        <instance x="800" y="1840" name="XLXI_43" orien="R180" />
        <instance x="912" y="1840" name="XLXI_44" orien="R180" />
        <instance x="1040" y="1840" name="XLXI_45" orien="R180" />
        <instance x="1152" y="1840" name="XLXI_46" orien="R180" />
    </sheet>
</drawing>