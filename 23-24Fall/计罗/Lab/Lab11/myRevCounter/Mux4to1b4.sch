<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="s(1:0)" />
        <signal name="s(1)" />
        <signal name="s(0)" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="I1(3:0)" />
        <signal name="I2(3:0)" />
        <signal name="I3(3:0)" />
        <signal name="I0(3:0)" />
        <signal name="I2(3)" />
        <signal name="I2(2)" />
        <signal name="I2(0)" />
        <signal name="I2(1)" />
        <signal name="XLXN_55" />
        <signal name="XLXN_56" />
        <signal name="XLXN_57" />
        <signal name="XLXN_58" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69" />
        <signal name="XLXN_70" />
        <signal name="XLXN_71" />
        <signal name="XLXN_72" />
        <signal name="XLXN_73" />
        <signal name="XLXN_74" />
        <signal name="XLXN_75" />
        <signal name="XLXN_76" />
        <signal name="XLXN_77" />
        <signal name="XLXN_78" />
        <signal name="XLXN_79" />
        <signal name="XLXN_80" />
        <signal name="XLXN_81" />
        <signal name="XLXN_82" />
        <signal name="XLXN_83" />
        <signal name="o(3:0)" />
        <signal name="o(3)" />
        <signal name="o(2)" />
        <signal name="o(1)" />
        <signal name="o(0)" />
        <signal name="I0(3)" />
        <signal name="I0(2)" />
        <signal name="I0(1)" />
        <signal name="I0(0)" />
        <signal name="I3(3)" />
        <signal name="I3(2)" />
        <signal name="I3(1)" />
        <signal name="I3(0)" />
        <signal name="I1(3)" />
        <signal name="I1(2)" />
        <signal name="I1(1)" />
        <signal name="I1(0)" />
        <port polarity="Input" name="s(1:0)" />
        <port polarity="Input" name="I1(3:0)" />
        <port polarity="Input" name="I2(3:0)" />
        <port polarity="Input" name="I3(3:0)" />
        <port polarity="Input" name="I0(3:0)" />
        <port polarity="Output" name="o(3:0)" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
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
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="s(1)" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="s(0)" name="I" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="s(0)" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="s(1)" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="s(1)" name="I0" />
            <blockpin signalname="s(0)" name="I1" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="I0(0)" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_67" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="I1(0)" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="XLXN_68" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="I2(0)" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="XLXN_69" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="I3(0)" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="XLXN_70" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_11">
            <blockpin signalname="I0(1)" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_71" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_12">
            <blockpin signalname="I1(1)" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="XLXN_72" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_13">
            <blockpin signalname="I2(1)" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="XLXN_73" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_14">
            <blockpin signalname="I3(1)" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="XLXN_74" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_15">
            <blockpin signalname="I0(2)" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_75" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_16">
            <blockpin signalname="I1(2)" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="XLXN_77" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_17">
            <blockpin signalname="I2(2)" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="XLXN_78" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_18">
            <blockpin signalname="I3(2)" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="XLXN_79" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_19">
            <blockpin signalname="I0(3)" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_80" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_20">
            <blockpin signalname="I1(3)" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="XLXN_81" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_21">
            <blockpin signalname="I2(3)" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="XLXN_82" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_22">
            <blockpin signalname="I3(3)" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="XLXN_83" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_23">
            <blockpin signalname="XLXN_70" name="I0" />
            <blockpin signalname="XLXN_69" name="I1" />
            <blockpin signalname="XLXN_68" name="I2" />
            <blockpin signalname="XLXN_67" name="I3" />
            <blockpin signalname="o(0)" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_24">
            <blockpin signalname="XLXN_74" name="I0" />
            <blockpin signalname="XLXN_73" name="I1" />
            <blockpin signalname="XLXN_72" name="I2" />
            <blockpin signalname="XLXN_71" name="I3" />
            <blockpin signalname="o(1)" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_25">
            <blockpin signalname="XLXN_79" name="I0" />
            <blockpin signalname="XLXN_78" name="I1" />
            <blockpin signalname="XLXN_77" name="I2" />
            <blockpin signalname="XLXN_75" name="I3" />
            <blockpin signalname="o(2)" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_26">
            <blockpin signalname="XLXN_83" name="I0" />
            <blockpin signalname="XLXN_82" name="I1" />
            <blockpin signalname="XLXN_81" name="I2" />
            <blockpin signalname="XLXN_80" name="I3" />
            <blockpin signalname="o(3)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <branch name="s(1:0)">
            <wire x2="240" y1="112" y2="112" x1="144" />
            <wire x2="240" y1="112" y2="128" x1="240" />
            <wire x2="240" y1="128" y2="224" x1="240" />
            <wire x2="240" y1="224" y2="288" x1="240" />
            <wire x2="240" y1="80" y2="112" x1="240" />
        </branch>
        <iomarker fontsize="28" x="144" y="112" name="s(1:0)" orien="R180" />
        <bustap x2="336" y1="128" y2="128" x1="240" />
        <branch name="s(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="128" type="branch" />
            <wire x2="352" y1="128" y2="128" x1="336" />
            <wire x2="368" y1="128" y2="128" x1="352" />
            <wire x2="464" y1="128" y2="128" x1="368" />
            <wire x2="352" y1="128" y2="528" x1="352" />
            <wire x2="912" y1="528" y2="528" x1="352" />
            <wire x2="352" y1="528" y2="688" x1="352" />
            <wire x2="912" y1="688" y2="688" x1="352" />
        </branch>
        <bustap x2="336" y1="224" y2="224" x1="240" />
        <branch name="s(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="224" type="branch" />
            <wire x2="368" y1="224" y2="224" x1="336" />
            <wire x2="400" y1="224" y2="224" x1="368" />
            <wire x2="464" y1="224" y2="224" x1="400" />
            <wire x2="400" y1="224" y2="368" x1="400" />
            <wire x2="400" y1="368" y2="624" x1="400" />
            <wire x2="912" y1="624" y2="624" x1="400" />
            <wire x2="912" y1="368" y2="368" x1="400" />
        </branch>
        <instance x="464" y="160" name="XLXI_1" orien="R0" />
        <instance x="464" y="256" name="XLXI_2" orien="R0" />
        <instance x="912" y="272" name="XLXI_3" orien="R0" />
        <instance x="912" y="432" name="XLXI_4" orien="R0" />
        <instance x="912" y="592" name="XLXI_5" orien="R0" />
        <instance x="912" y="752" name="XLXI_6" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="800" y1="128" y2="128" x1="688" />
            <wire x2="800" y1="128" y2="144" x1="800" />
            <wire x2="800" y1="144" y2="304" x1="800" />
            <wire x2="912" y1="304" y2="304" x1="800" />
            <wire x2="912" y1="144" y2="144" x1="800" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="784" y1="224" y2="224" x1="688" />
            <wire x2="784" y1="224" y2="464" x1="784" />
            <wire x2="912" y1="464" y2="464" x1="784" />
            <wire x2="784" y1="208" y2="224" x1="784" />
            <wire x2="912" y1="208" y2="208" x1="784" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1360" y1="176" y2="176" x1="1168" />
            <wire x2="1360" y1="176" y2="880" x1="1360" />
            <wire x2="1360" y1="880" y2="1600" x1="1360" />
            <wire x2="2064" y1="1600" y2="1600" x1="1360" />
            <wire x2="1360" y1="1600" y2="2320" x1="1360" />
            <wire x2="2064" y1="2320" y2="2320" x1="1360" />
            <wire x2="2064" y1="880" y2="880" x1="1360" />
            <wire x2="2048" y1="176" y2="176" x1="1360" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1296" y1="336" y2="336" x1="1168" />
            <wire x2="1296" y1="336" y2="1040" x1="1296" />
            <wire x2="1296" y1="1040" y2="1760" x1="1296" />
            <wire x2="2064" y1="1760" y2="1760" x1="1296" />
            <wire x2="1296" y1="1760" y2="2480" x1="1296" />
            <wire x2="2064" y1="2480" y2="2480" x1="1296" />
            <wire x2="2064" y1="1040" y2="1040" x1="1296" />
            <wire x2="2048" y1="336" y2="336" x1="1296" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="1248" y1="496" y2="496" x1="1168" />
            <wire x2="1248" y1="496" y2="1200" x1="1248" />
            <wire x2="1248" y1="1200" y2="1920" x1="1248" />
            <wire x2="2064" y1="1920" y2="1920" x1="1248" />
            <wire x2="1248" y1="1920" y2="2640" x1="1248" />
            <wire x2="2064" y1="2640" y2="2640" x1="1248" />
            <wire x2="2064" y1="1200" y2="1200" x1="1248" />
            <wire x2="2048" y1="496" y2="496" x1="1248" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1216" y1="656" y2="656" x1="1168" />
            <wire x2="1216" y1="656" y2="1344" x1="1216" />
            <wire x2="1216" y1="1344" y2="2080" x1="1216" />
            <wire x2="2064" y1="2080" y2="2080" x1="1216" />
            <wire x2="1216" y1="2080" y2="2800" x1="1216" />
            <wire x2="2064" y1="2800" y2="2800" x1="1216" />
            <wire x2="2064" y1="1344" y2="1344" x1="1216" />
            <wire x2="2048" y1="656" y2="656" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="528" y="1824" name="I1(3:0)" orien="R180" />
        <iomarker fontsize="28" x="528" y="1984" name="I2(3:0)" orien="R180" />
        <iomarker fontsize="28" x="528" y="2144" name="I3(3:0)" orien="R180" />
        <iomarker fontsize="28" x="528" y="1664" name="I0(3:0)" orien="R180" />
        <branch name="I0(3:0)">
            <wire x2="1472" y1="1664" y2="1664" x1="528" />
            <wire x2="1472" y1="1664" y2="2384" x1="1472" />
            <wire x2="1472" y1="240" y2="944" x1="1472" />
            <wire x2="1472" y1="944" y2="1664" x1="1472" />
        </branch>
        <branch name="I1(3:0)">
            <wire x2="1520" y1="1824" y2="1824" x1="528" />
            <wire x2="1520" y1="1824" y2="2528" x1="1520" />
            <wire x2="1520" y1="2528" y2="2544" x1="1520" />
            <wire x2="1520" y1="400" y2="1104" x1="1520" />
            <wire x2="1520" y1="1104" y2="1824" x1="1520" />
        </branch>
        <branch name="I2(3:0)">
            <wire x2="1696" y1="1984" y2="1984" x1="528" />
            <wire x2="1696" y1="1984" y2="2544" x1="1696" />
            <wire x2="1696" y1="2544" y2="2704" x1="1696" />
            <wire x2="1696" y1="560" y2="1264" x1="1696" />
            <wire x2="1696" y1="1264" y2="1984" x1="1696" />
        </branch>
        <bustap x2="1792" y1="2704" y2="2704" x1="1696" />
        <branch name="I2(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="2704" type="branch" />
            <wire x2="1808" y1="2704" y2="2704" x1="1792" />
            <wire x2="2064" y1="2704" y2="2704" x1="1808" />
        </branch>
        <bustap x2="1792" y1="1984" y2="1984" x1="1696" />
        <branch name="I2(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1984" type="branch" />
            <wire x2="1808" y1="1984" y2="1984" x1="1792" />
            <wire x2="2064" y1="1984" y2="1984" x1="1808" />
        </branch>
        <bustap x2="1792" y1="560" y2="560" x1="1696" />
        <branch name="I2(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="560" type="branch" />
            <wire x2="1840" y1="560" y2="560" x1="1792" />
            <wire x2="2048" y1="560" y2="560" x1="1840" />
        </branch>
        <bustap x2="1792" y1="1264" y2="1264" x1="1696" />
        <branch name="I2(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1264" type="branch" />
            <wire x2="1808" y1="1264" y2="1264" x1="1792" />
            <wire x2="2064" y1="1264" y2="1264" x1="1808" />
        </branch>
        <instance x="2048" y="304" name="XLXI_7" orien="R0" />
        <instance x="2048" y="464" name="XLXI_8" orien="R0" />
        <instance x="2048" y="624" name="XLXI_9" orien="R0" />
        <instance x="2048" y="784" name="XLXI_10" orien="R0" />
        <instance x="2064" y="1008" name="XLXI_11" orien="R0" />
        <instance x="2064" y="1168" name="XLXI_12" orien="R0" />
        <instance x="2064" y="1328" name="XLXI_13" orien="R0" />
        <instance x="2064" y="1472" name="XLXI_14" orien="R0" />
        <instance x="2064" y="1728" name="XLXI_15" orien="R0" />
        <instance x="2064" y="1888" name="XLXI_16" orien="R0" />
        <instance x="2064" y="2048" name="XLXI_17" orien="R0" />
        <instance x="2064" y="2208" name="XLXI_18" orien="R0" />
        <instance x="2064" y="2448" name="XLXI_19" orien="R0" />
        <instance x="2064" y="2608" name="XLXI_20" orien="R0" />
        <instance x="2064" y="2768" name="XLXI_21" orien="R0" />
        <instance x="2064" y="2928" name="XLXI_22" orien="R0" />
        <branch name="I3(3:0)">
            <wire x2="1760" y1="2144" y2="2144" x1="528" />
            <wire x2="1840" y1="2144" y2="2144" x1="1760" />
            <wire x2="1840" y1="2144" y2="2864" x1="1840" />
            <wire x2="1840" y1="720" y2="1408" x1="1840" />
            <wire x2="1840" y1="1408" y2="2144" x1="1840" />
        </branch>
        <instance x="2528" y="592" name="XLXI_23" orien="R0" />
        <instance x="2528" y="1296" name="XLXI_24" orien="R0" />
        <instance x="2544" y="2032" name="XLXI_25" orien="R0" />
        <instance x="2528" y="2752" name="XLXI_26" orien="R0" />
        <branch name="XLXN_67">
            <wire x2="2528" y1="208" y2="208" x1="2304" />
            <wire x2="2528" y1="208" y2="336" x1="2528" />
        </branch>
        <branch name="XLXN_68">
            <wire x2="2416" y1="368" y2="368" x1="2304" />
            <wire x2="2416" y1="368" y2="400" x1="2416" />
            <wire x2="2528" y1="400" y2="400" x1="2416" />
        </branch>
        <branch name="XLXN_69">
            <wire x2="2416" y1="528" y2="528" x1="2304" />
            <wire x2="2416" y1="464" y2="528" x1="2416" />
            <wire x2="2528" y1="464" y2="464" x1="2416" />
        </branch>
        <branch name="XLXN_70">
            <wire x2="2528" y1="688" y2="688" x1="2304" />
            <wire x2="2528" y1="528" y2="688" x1="2528" />
        </branch>
        <branch name="XLXN_71">
            <wire x2="2528" y1="912" y2="912" x1="2320" />
            <wire x2="2528" y1="912" y2="1040" x1="2528" />
        </branch>
        <branch name="XLXN_72">
            <wire x2="2416" y1="1072" y2="1072" x1="2320" />
            <wire x2="2416" y1="1072" y2="1104" x1="2416" />
            <wire x2="2528" y1="1104" y2="1104" x1="2416" />
        </branch>
        <branch name="XLXN_73">
            <wire x2="2416" y1="1232" y2="1232" x1="2320" />
            <wire x2="2416" y1="1168" y2="1232" x1="2416" />
            <wire x2="2528" y1="1168" y2="1168" x1="2416" />
        </branch>
        <branch name="XLXN_74">
            <wire x2="2528" y1="1376" y2="1376" x1="2320" />
            <wire x2="2528" y1="1232" y2="1376" x1="2528" />
        </branch>
        <branch name="XLXN_75">
            <wire x2="2544" y1="1632" y2="1632" x1="2320" />
            <wire x2="2544" y1="1632" y2="1776" x1="2544" />
        </branch>
        <branch name="XLXN_77">
            <wire x2="2336" y1="1792" y2="1792" x1="2320" />
            <wire x2="2336" y1="1792" y2="1840" x1="2336" />
            <wire x2="2544" y1="1840" y2="1840" x1="2336" />
        </branch>
        <branch name="XLXN_78">
            <wire x2="2432" y1="1952" y2="1952" x1="2320" />
            <wire x2="2432" y1="1904" y2="1952" x1="2432" />
            <wire x2="2544" y1="1904" y2="1904" x1="2432" />
        </branch>
        <branch name="XLXN_79">
            <wire x2="2544" y1="2112" y2="2112" x1="2320" />
            <wire x2="2544" y1="1968" y2="2112" x1="2544" />
        </branch>
        <branch name="XLXN_80">
            <wire x2="2528" y1="2352" y2="2352" x1="2320" />
            <wire x2="2528" y1="2352" y2="2496" x1="2528" />
        </branch>
        <branch name="XLXN_81">
            <wire x2="2416" y1="2512" y2="2512" x1="2320" />
            <wire x2="2416" y1="2512" y2="2560" x1="2416" />
            <wire x2="2528" y1="2560" y2="2560" x1="2416" />
        </branch>
        <branch name="XLXN_82">
            <wire x2="2512" y1="2672" y2="2672" x1="2320" />
            <wire x2="2512" y1="2624" y2="2672" x1="2512" />
            <wire x2="2528" y1="2624" y2="2624" x1="2512" />
        </branch>
        <branch name="XLXN_83">
            <wire x2="2528" y1="2832" y2="2832" x1="2320" />
            <wire x2="2528" y1="2688" y2="2832" x1="2528" />
        </branch>
        <branch name="o(3:0)">
            <wire x2="3120" y1="400" y2="432" x1="3120" />
            <wire x2="3120" y1="432" y2="1136" x1="3120" />
            <wire x2="3120" y1="1136" y2="1504" x1="3120" />
            <wire x2="3344" y1="1504" y2="1504" x1="3120" />
            <wire x2="3120" y1="1504" y2="1872" x1="3120" />
            <wire x2="3120" y1="1872" y2="2016" x1="3120" />
            <wire x2="3120" y1="2016" y2="2592" x1="3120" />
            <wire x2="3120" y1="2592" y2="2720" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="3344" y="1504" name="o(3:0)" orien="R0" />
        <bustap x2="3024" y1="2592" y2="2592" x1="3120" />
        <branch name="o(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2904" y="2592" type="branch" />
            <wire x2="2904" y1="2592" y2="2592" x1="2784" />
            <wire x2="3024" y1="2592" y2="2592" x1="2904" />
        </branch>
        <bustap x2="3024" y1="1872" y2="1872" x1="3120" />
        <branch name="o(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="1872" type="branch" />
            <wire x2="2912" y1="1872" y2="1872" x1="2800" />
            <wire x2="3024" y1="1872" y2="1872" x1="2912" />
        </branch>
        <bustap x2="3024" y1="1136" y2="1136" x1="3120" />
        <branch name="o(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2904" y="1136" type="branch" />
            <wire x2="2904" y1="1136" y2="1136" x1="2784" />
            <wire x2="3024" y1="1136" y2="1136" x1="2904" />
        </branch>
        <bustap x2="3024" y1="432" y2="432" x1="3120" />
        <branch name="o(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2904" y="432" type="branch" />
            <wire x2="2904" y1="432" y2="432" x1="2784" />
            <wire x2="3024" y1="432" y2="432" x1="2904" />
        </branch>
        <bustap x2="1568" y1="2384" y2="2384" x1="1472" />
        <branch name="I0(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1816" y="2384" type="branch" />
            <wire x2="1816" y1="2384" y2="2384" x1="1568" />
            <wire x2="2064" y1="2384" y2="2384" x1="1816" />
        </branch>
        <bustap x2="1568" y1="1664" y2="1664" x1="1472" />
        <branch name="I0(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1816" y="1664" type="branch" />
            <wire x2="1816" y1="1664" y2="1664" x1="1568" />
            <wire x2="2064" y1="1664" y2="1664" x1="1816" />
        </branch>
        <bustap x2="1568" y1="944" y2="944" x1="1472" />
        <branch name="I0(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1816" y="944" type="branch" />
            <wire x2="1816" y1="944" y2="944" x1="1568" />
            <wire x2="2064" y1="944" y2="944" x1="1816" />
        </branch>
        <bustap x2="1568" y1="240" y2="240" x1="1472" />
        <branch name="I0(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="240" type="branch" />
            <wire x2="1808" y1="240" y2="240" x1="1568" />
            <wire x2="2048" y1="240" y2="240" x1="1808" />
        </branch>
        <bustap x2="1936" y1="2864" y2="2864" x1="1840" />
        <branch name="I3(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="2864" type="branch" />
            <wire x2="2000" y1="2864" y2="2864" x1="1936" />
            <wire x2="2064" y1="2864" y2="2864" x1="2000" />
        </branch>
        <bustap x2="1936" y1="2144" y2="2144" x1="1840" />
        <branch name="I3(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="2144" type="branch" />
            <wire x2="2000" y1="2144" y2="2144" x1="1936" />
            <wire x2="2064" y1="2144" y2="2144" x1="2000" />
        </branch>
        <bustap x2="1936" y1="1408" y2="1408" x1="1840" />
        <branch name="I3(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="1408" type="branch" />
            <wire x2="2000" y1="1408" y2="1408" x1="1936" />
            <wire x2="2064" y1="1408" y2="1408" x1="2000" />
        </branch>
        <bustap x2="1936" y1="720" y2="720" x1="1840" />
        <branch name="I3(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1992" y="720" type="branch" />
            <wire x2="1992" y1="720" y2="720" x1="1936" />
            <wire x2="2048" y1="720" y2="720" x1="1992" />
        </branch>
        <bustap x2="1616" y1="2528" y2="2528" x1="1520" />
        <branch name="I1(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="2528" type="branch" />
            <wire x2="1632" y1="2528" y2="2528" x1="1616" />
            <wire x2="1648" y1="2528" y2="2528" x1="1632" />
            <wire x2="1856" y1="2528" y2="2528" x1="1648" />
            <wire x2="1856" y1="2528" y2="2544" x1="1856" />
            <wire x2="2064" y1="2544" y2="2544" x1="1856" />
        </branch>
        <bustap x2="1616" y1="1824" y2="1824" x1="1520" />
        <branch name="I1(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1664" y="1824" type="branch" />
            <wire x2="1664" y1="1824" y2="1824" x1="1616" />
            <wire x2="1712" y1="1824" y2="1824" x1="1664" />
            <wire x2="2064" y1="1824" y2="1824" x1="1712" />
        </branch>
        <bustap x2="1616" y1="1104" y2="1104" x1="1520" />
        <branch name="I1(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1704" y="1104" type="branch" />
            <wire x2="1704" y1="1104" y2="1104" x1="1616" />
            <wire x2="1792" y1="1104" y2="1104" x1="1704" />
            <wire x2="2064" y1="1104" y2="1104" x1="1792" />
        </branch>
        <bustap x2="1616" y1="400" y2="400" x1="1520" />
        <branch name="I1(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1720" y="400" type="branch" />
            <wire x2="1720" y1="400" y2="400" x1="1616" />
            <wire x2="1824" y1="400" y2="400" x1="1720" />
            <wire x2="2048" y1="400" y2="400" x1="1824" />
        </branch>
    </sheet>
</drawing>