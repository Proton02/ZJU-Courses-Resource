<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="LED(7:0)" />
        <signal name="S1" />
        <signal name="S2" />
        <signal name="S3" />
        <signal name="S6" />
        <signal name="S4" />
        <signal name="S5" />
        <port polarity="Output" name="LED(7:0)" />
        <port polarity="Input" name="S1" />
        <port polarity="Input" name="S2" />
        <port polarity="Input" name="S3" />
        <port polarity="Input" name="S6" />
        <port polarity="Input" name="S4" />
        <port polarity="Input" name="S5" />
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
        <block symbolname="D_74LS138" name="XLXI_1">
            <blockpin signalname="S1" name="A" />
            <blockpin signalname="S2" name="B" />
            <blockpin signalname="S3" name="C" />
            <blockpin signalname="S6" name="G2A" />
            <blockpin signalname="S4" name="G" />
            <blockpin signalname="S5" name="G2B" />
            <blockpin signalname="LED(7:0)" name="Y(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1520" y="1440" name="XLXI_1" orien="R0">
        </instance>
        <branch name="LED(7:0)">
            <wire x2="1936" y1="1088" y2="1088" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="1936" y="1088" name="LED(7:0)" orien="R0" />
        <branch name="S1">
            <wire x2="1520" y1="1088" y2="1088" x1="1488" />
        </branch>
        <iomarker fontsize="28" x="1488" y="1088" name="S1" orien="R180" />
        <branch name="S2">
            <wire x2="1520" y1="1152" y2="1152" x1="1488" />
        </branch>
        <iomarker fontsize="28" x="1488" y="1152" name="S2" orien="R180" />
        <branch name="S3">
            <wire x2="1520" y1="1216" y2="1216" x1="1488" />
        </branch>
        <iomarker fontsize="28" x="1488" y="1216" name="S3" orien="R180" />
        <branch name="S6">
            <wire x2="1520" y1="1280" y2="1280" x1="1488" />
        </branch>
        <iomarker fontsize="28" x="1488" y="1280" name="S6" orien="R180" />
        <branch name="S4">
            <wire x2="1520" y1="1344" y2="1344" x1="1488" />
        </branch>
        <iomarker fontsize="28" x="1488" y="1344" name="S4" orien="R180" />
        <branch name="S5">
            <wire x2="1520" y1="1408" y2="1408" x1="1488" />
        </branch>
        <iomarker fontsize="28" x="1488" y="1408" name="S5" orien="R180" />
    </sheet>
</drawing>