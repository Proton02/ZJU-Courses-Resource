<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Ctrl" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="A(3:0)" />
        <signal name="A(3)" />
        <signal name="A(2)" />
        <signal name="A(1)" />
        <signal name="A(0)" />
        <signal name="B(3:0)" />
        <signal name="B(3)" />
        <signal name="B(2)" />
        <signal name="B(1)" />
        <signal name="B(0)" />
        <signal name="S(3:0)" />
        <signal name="S(3)" />
        <signal name="S(2)" />
        <signal name="S(1)" />
        <signal name="S(0)" />
        <signal name="C0" />
        <port polarity="Input" name="Ctrl" />
        <port polarity="Input" name="A(3:0)" />
        <port polarity="Input" name="B(3:0)" />
        <port polarity="Output" name="S(3:0)" />
        <port polarity="Output" name="C0" />
        <blockdef name="AddSub1b">
            <timestamp>2023-11-7T10:26:58</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="AddSub1b" name="XLXI_6">
            <blockpin signalname="A(0)" name="A" />
            <blockpin signalname="B(0)" name="B" />
            <blockpin signalname="Ctrl" name="Ctrl" />
            <blockpin signalname="Ctrl" name="Ci" />
            <blockpin signalname="S(0)" name="S" />
            <blockpin signalname="XLXN_41" name="Co" />
        </block>
        <block symbolname="AddSub1b" name="XLXI_7">
            <blockpin signalname="A(1)" name="A" />
            <blockpin signalname="B(1)" name="B" />
            <blockpin signalname="Ctrl" name="Ctrl" />
            <blockpin signalname="XLXN_41" name="Ci" />
            <blockpin signalname="S(1)" name="S" />
            <blockpin signalname="XLXN_42" name="Co" />
        </block>
        <block symbolname="AddSub1b" name="XLXI_8">
            <blockpin signalname="A(2)" name="A" />
            <blockpin signalname="B(2)" name="B" />
            <blockpin signalname="Ctrl" name="Ctrl" />
            <blockpin signalname="XLXN_42" name="Ci" />
            <blockpin signalname="S(2)" name="S" />
            <blockpin signalname="XLXN_43" name="Co" />
        </block>
        <block symbolname="AddSub1b" name="XLXI_9">
            <blockpin signalname="A(3)" name="A" />
            <blockpin signalname="B(3)" name="B" />
            <blockpin signalname="Ctrl" name="Ctrl" />
            <blockpin signalname="XLXN_43" name="Ci" />
            <blockpin signalname="S(3)" name="S" />
            <blockpin signalname="C0" name="Co" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1408" y="560" name="XLXI_6" orien="R0">
        </instance>
        <instance x="1408" y="992" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1408" y="1408" name="XLXI_8" orien="R0">
        </instance>
        <instance x="1408" y="1856" name="XLXI_9" orien="R0">
        </instance>
        <branch name="Ctrl">
            <wire x2="1280" y1="128" y2="128" x1="432" />
            <wire x2="1280" y1="128" y2="464" x1="1280" />
            <wire x2="1408" y1="464" y2="464" x1="1280" />
            <wire x2="1280" y1="464" y2="528" x1="1280" />
            <wire x2="1408" y1="528" y2="528" x1="1280" />
            <wire x2="1280" y1="528" y2="896" x1="1280" />
            <wire x2="1408" y1="896" y2="896" x1="1280" />
            <wire x2="1280" y1="896" y2="1312" x1="1280" />
            <wire x2="1408" y1="1312" y2="1312" x1="1280" />
            <wire x2="1280" y1="1312" y2="1760" x1="1280" />
            <wire x2="1408" y1="1760" y2="1760" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="432" y="128" name="Ctrl" orien="R180" />
        <branch name="XLXN_41">
            <wire x2="1344" y1="656" y2="960" x1="1344" />
            <wire x2="1408" y1="960" y2="960" x1="1344" />
            <wire x2="1872" y1="656" y2="656" x1="1344" />
            <wire x2="1872" y1="528" y2="528" x1="1792" />
            <wire x2="1872" y1="528" y2="656" x1="1872" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="1344" y1="1088" y2="1376" x1="1344" />
            <wire x2="1408" y1="1376" y2="1376" x1="1344" />
            <wire x2="1872" y1="1088" y2="1088" x1="1344" />
            <wire x2="1872" y1="960" y2="960" x1="1792" />
            <wire x2="1872" y1="960" y2="1088" x1="1872" />
        </branch>
        <branch name="XLXN_43">
            <wire x2="1344" y1="1536" y2="1824" x1="1344" />
            <wire x2="1408" y1="1824" y2="1824" x1="1344" />
            <wire x2="1872" y1="1536" y2="1536" x1="1344" />
            <wire x2="1872" y1="1376" y2="1376" x1="1792" />
            <wire x2="1872" y1="1376" y2="1536" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="368" y="384" name="A(3:0)" orien="R270" />
        <branch name="A(3:0)">
            <wire x2="368" y1="384" y2="512" x1="368" />
            <wire x2="368" y1="512" y2="624" x1="368" />
            <wire x2="368" y1="624" y2="720" x1="368" />
            <wire x2="368" y1="720" y2="832" x1="368" />
            <wire x2="368" y1="832" y2="896" x1="368" />
        </branch>
        <bustap x2="464" y1="832" y2="832" x1="368" />
        <branch name="A(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="488" y="832" type="branch" />
            <wire x2="496" y1="832" y2="832" x1="464" />
            <wire x2="1008" y1="832" y2="832" x1="496" />
            <wire x2="1008" y1="832" y2="1632" x1="1008" />
            <wire x2="1136" y1="1632" y2="1632" x1="1008" />
            <wire x2="1408" y1="1632" y2="1632" x1="1136" />
        </branch>
        <bustap x2="464" y1="720" y2="720" x1="368" />
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="488" y="720" type="branch" />
            <wire x2="496" y1="720" y2="720" x1="464" />
            <wire x2="1088" y1="720" y2="720" x1="496" />
            <wire x2="1088" y1="720" y2="1184" x1="1088" />
            <wire x2="1408" y1="1184" y2="1184" x1="1088" />
        </branch>
        <bustap x2="464" y1="624" y2="624" x1="368" />
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="504" y="624" type="branch" />
            <wire x2="512" y1="624" y2="624" x1="464" />
            <wire x2="1152" y1="624" y2="624" x1="512" />
            <wire x2="1152" y1="624" y2="768" x1="1152" />
            <wire x2="1408" y1="768" y2="768" x1="1152" />
        </branch>
        <bustap x2="464" y1="512" y2="512" x1="368" />
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="496" y="512" type="branch" />
            <wire x2="496" y1="512" y2="512" x1="464" />
            <wire x2="1184" y1="512" y2="512" x1="496" />
            <wire x2="1408" y1="336" y2="336" x1="1184" />
            <wire x2="1184" y1="336" y2="512" x1="1184" />
        </branch>
        <branch name="B(3:0)">
            <wire x2="368" y1="1152" y2="1328" x1="368" />
            <wire x2="368" y1="1328" y2="1440" x1="368" />
            <wire x2="368" y1="1440" y2="1568" x1="368" />
            <wire x2="368" y1="1568" y2="1696" x1="368" />
            <wire x2="368" y1="1696" y2="1776" x1="368" />
        </branch>
        <iomarker fontsize="28" x="368" y="1152" name="B(3:0)" orien="R270" />
        <bustap x2="464" y1="1696" y2="1696" x1="368" />
        <branch name="B(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="472" y="1696" type="branch" />
            <wire x2="480" y1="1696" y2="1696" x1="464" />
            <wire x2="752" y1="1696" y2="1696" x1="480" />
            <wire x2="1408" y1="1696" y2="1696" x1="752" />
        </branch>
        <bustap x2="464" y1="1568" y2="1568" x1="368" />
        <branch name="B(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="488" y="1568" type="branch" />
            <wire x2="496" y1="1568" y2="1568" x1="464" />
            <wire x2="864" y1="1568" y2="1568" x1="496" />
            <wire x2="864" y1="1248" y2="1568" x1="864" />
            <wire x2="1408" y1="1248" y2="1248" x1="864" />
        </branch>
        <bustap x2="464" y1="1440" y2="1440" x1="368" />
        <branch name="B(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="488" y="1440" type="branch" />
            <wire x2="496" y1="1440" y2="1440" x1="464" />
            <wire x2="768" y1="1440" y2="1440" x1="496" />
            <wire x2="768" y1="864" y2="1440" x1="768" />
            <wire x2="1408" y1="864" y2="864" x1="768" />
            <wire x2="1408" y1="832" y2="864" x1="1408" />
        </branch>
        <bustap x2="464" y1="1328" y2="1328" x1="368" />
        <branch name="B(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="504" y="1328" type="branch" />
            <wire x2="512" y1="1328" y2="1328" x1="464" />
            <wire x2="688" y1="1328" y2="1328" x1="512" />
            <wire x2="1408" y1="400" y2="400" x1="688" />
            <wire x2="688" y1="400" y2="1328" x1="688" />
        </branch>
        <bustap x2="2416" y1="1360" y2="1360" x1="2512" />
        <branch name="S(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2328" y="1360" type="branch" />
            <wire x2="2240" y1="1632" y2="1632" x1="1792" />
            <wire x2="2336" y1="1360" y2="1360" x1="2240" />
            <wire x2="2416" y1="1360" y2="1360" x1="2336" />
            <wire x2="2240" y1="1360" y2="1632" x1="2240" />
        </branch>
        <bustap x2="2416" y1="1120" y2="1120" x1="2512" />
        <branch name="S(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2312" y="1120" type="branch" />
            <wire x2="2208" y1="1184" y2="1184" x1="1792" />
            <wire x2="2320" y1="1120" y2="1120" x1="2208" />
            <wire x2="2416" y1="1120" y2="1120" x1="2320" />
            <wire x2="2208" y1="1120" y2="1184" x1="2208" />
        </branch>
        <bustap x2="2416" y1="816" y2="816" x1="2512" />
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2312" y="816" type="branch" />
            <wire x2="2208" y1="768" y2="768" x1="1792" />
            <wire x2="2208" y1="768" y2="816" x1="2208" />
            <wire x2="2320" y1="816" y2="816" x1="2208" />
            <wire x2="2416" y1="816" y2="816" x1="2320" />
        </branch>
        <bustap x2="2416" y1="576" y2="576" x1="2512" />
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="576" type="branch" />
            <wire x2="2256" y1="336" y2="336" x1="1792" />
            <wire x2="2256" y1="336" y2="576" x1="2256" />
            <wire x2="2336" y1="576" y2="576" x1="2256" />
            <wire x2="2416" y1="576" y2="576" x1="2336" />
        </branch>
        <branch name="C0">
            <wire x2="2560" y1="1824" y2="1824" x1="1792" />
        </branch>
        <iomarker fontsize="28" x="2560" y="1824" name="C0" orien="R0" />
        <branch name="S(3:0)">
            <wire x2="2512" y1="320" y2="560" x1="2512" />
            <wire x2="2512" y1="560" y2="576" x1="2512" />
            <wire x2="2512" y1="576" y2="816" x1="2512" />
            <wire x2="2512" y1="816" y2="1120" x1="2512" />
            <wire x2="2512" y1="1120" y2="1360" x1="2512" />
            <wire x2="2512" y1="1360" y2="1472" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2512" y="320" name="S(3:0)" orien="R270" />
    </sheet>
</drawing>