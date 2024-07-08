<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="S" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="C" />
        <signal name="D" />
        <signal name="R" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="Qbar" />
        <signal name="Q" />
        <port polarity="Input" name="S" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="D" />
        <port polarity="Input" name="R" />
        <port polarity="Output" name="Qbar" />
        <port polarity="Output" name="Q" />
        <blockdef name="nand3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <block symbolname="nand3" name="XLXI_1">
            <blockpin signalname="XLXN_3" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="S" name="I2" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_2">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="R" name="I1" />
            <blockpin signalname="XLXN_4" name="I2" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_3">
            <blockpin signalname="XLXN_1" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_3" name="I2" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_4">
            <blockpin signalname="R" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="XLXN_10" name="I2" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_5">
            <blockpin signalname="Qbar" name="I0" />
            <blockpin signalname="XLXN_3" name="I1" />
            <blockpin signalname="S" name="I2" />
            <blockpin signalname="Q" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_6">
            <blockpin signalname="R" name="I0" />
            <blockpin signalname="XLXN_10" name="I1" />
            <blockpin signalname="Q" name="I2" />
            <blockpin signalname="Qbar" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="832" y="864" name="XLXI_1" orien="R0" />
        <instance x="832" y="1184" name="XLXI_2" orien="R0" />
        <instance x="832" y="1504" name="XLXI_3" orien="R0" />
        <instance x="832" y="1824" name="XLXI_4" orien="R0" />
        <instance x="1616" y="1184" name="XLXI_5" orien="R0" />
        <instance x="1616" y="1504" name="XLXI_6" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="832" y1="736" y2="736" x1="720" />
            <wire x2="720" y1="736" y2="1424" x1="720" />
            <wire x2="720" y1="1424" y2="1440" x1="720" />
            <wire x2="832" y1="1440" y2="1440" x1="720" />
            <wire x2="720" y1="1424" y2="1504" x1="720" />
            <wire x2="1152" y1="1504" y2="1504" x1="720" />
            <wire x2="1152" y1="1504" y2="1696" x1="1152" />
            <wire x2="1152" y1="1696" y2="1696" x1="1088" />
        </branch>
        <branch name="S">
            <wire x2="832" y1="560" y2="672" x1="832" />
            <wire x2="1616" y1="560" y2="560" x1="832" />
            <wire x2="1616" y1="560" y2="992" x1="1616" />
            <wire x2="1680" y1="560" y2="560" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1680" y="560" name="S" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="816" y1="800" y2="960" x1="816" />
            <wire x2="1152" y1="960" y2="960" x1="816" />
            <wire x2="1152" y1="960" y2="1056" x1="1152" />
            <wire x2="1616" y1="1056" y2="1056" x1="1152" />
            <wire x2="1152" y1="1056" y2="1184" x1="1152" />
            <wire x2="832" y1="800" y2="800" x1="816" />
            <wire x2="832" y1="1184" y2="1312" x1="832" />
            <wire x2="1152" y1="1184" y2="1184" x1="832" />
            <wire x2="1112" y1="1056" y2="1056" x1="1088" />
            <wire x2="1152" y1="1056" y2="1056" x1="1112" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="832" y1="928" y2="992" x1="832" />
            <wire x2="1168" y1="928" y2="928" x1="832" />
            <wire x2="1168" y1="736" y2="736" x1="1088" />
            <wire x2="1168" y1="736" y2="928" x1="1168" />
        </branch>
        <branch name="C">
            <wire x2="480" y1="1248" y2="1248" x1="416" />
            <wire x2="640" y1="1248" y2="1248" x1="480" />
            <wire x2="640" y1="1248" y2="1376" x1="640" />
            <wire x2="832" y1="1376" y2="1376" x1="640" />
            <wire x2="832" y1="1120" y2="1120" x1="640" />
            <wire x2="640" y1="1120" y2="1248" x1="640" />
        </branch>
        <branch name="D">
            <wire x2="832" y1="1696" y2="1696" x1="416" />
        </branch>
        <branch name="R">
            <wire x2="832" y1="1056" y2="1056" x1="752" />
            <wire x2="752" y1="1056" y2="1760" x1="752" />
            <wire x2="832" y1="1760" y2="1760" x1="752" />
            <wire x2="752" y1="1760" y2="1968" x1="752" />
            <wire x2="1616" y1="1968" y2="1968" x1="752" />
            <wire x2="1664" y1="1968" y2="1968" x1="1616" />
            <wire x2="1680" y1="1968" y2="1968" x1="1664" />
            <wire x2="1616" y1="1440" y2="1968" x1="1616" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="832" y1="1488" y2="1632" x1="832" />
            <wire x2="1152" y1="1488" y2="1488" x1="832" />
            <wire x2="1152" y1="1376" y2="1376" x1="1088" />
            <wire x2="1600" y1="1376" y2="1376" x1="1152" />
            <wire x2="1616" y1="1376" y2="1376" x1="1600" />
            <wire x2="1152" y1="1376" y2="1488" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1680" y="1968" name="R" orien="R0" />
        <branch name="Qbar">
            <wire x2="1616" y1="1120" y2="1120" x1="1600" />
            <wire x2="1600" y1="1120" y2="1248" x1="1600" />
            <wire x2="1920" y1="1248" y2="1248" x1="1600" />
            <wire x2="1920" y1="1248" y2="1376" x1="1920" />
            <wire x2="2000" y1="1376" y2="1376" x1="1920" />
            <wire x2="1920" y1="1376" y2="1376" x1="1872" />
        </branch>
        <branch name="Q">
            <wire x2="1616" y1="1184" y2="1312" x1="1616" />
            <wire x2="1920" y1="1184" y2="1184" x1="1616" />
            <wire x2="1920" y1="1056" y2="1056" x1="1872" />
            <wire x2="2000" y1="1056" y2="1056" x1="1920" />
            <wire x2="1920" y1="1056" y2="1184" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="2000" y="1056" name="Q" orien="R0" />
        <iomarker fontsize="28" x="2000" y="1376" name="Qbar" orien="R0" />
        <iomarker fontsize="28" x="416" y="1248" name="C" orien="R180" />
        <iomarker fontsize="28" x="416" y="1696" name="D" orien="R180" />
    </sheet>
</drawing>