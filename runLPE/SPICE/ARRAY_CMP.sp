************************************************************************
* auCdl Netlist:
* 
* Library Name:  ADC_SAR4BIT
* Top Cell Name: ARRAY_CMP
* View Name:     schematic
* Netlisted on:  Oct 15 19:30:54 2020
************************************************************************

.INCLUDE  /raidj/user/t28/t28u25/LPE/source.added
*.BIPOLAR
*.RESI = 2000 
*.RESVAL
*.CAPVAL
*.DIOPERI
*.DIOAREA
*.EQUATION
*.SCALE METER
*.MEGA
.PARAM

*.GLOBAL VDD09A:P
+        VSS09A:G

*.PIN VDD09A
*+    VSS09A

************************************************************************
* Library Name: ADC_SAR4BIT
* Cell Name:    CU1F
* View Name:    schematic
************************************************************************

.SUBCKT CU1F BOT TOP
*.PININFO BOT:B TOP:B
CC0 TOP BOT 1f $[CP]
.ENDS

************************************************************************
* Library Name: ADC_SAR4BIT
* Cell Name:    ARRAY_CMP
* View Name:    schematic
************************************************************************

.SUBCKT ARRAY_CMP SL1A SL1B SL2A SL2B SL3A SL3B TOP_ARRAY VDD09A VSS09A
*.PININFO SL1A:I SL1B:I SL2A:I SL2B:I SL3A:I SL3B:I VDD09A:I VSS09A:I 
*.PININFO TOP_ARRAY:B
MM42 VDD09A VDD09A VDD09A VDD09A pch_mac l=30n w=100n m=1 nf=1
MM41 VDD09A VDD09A VDD09A VDD09A pch_mac l=30n w=100n m=1 nf=1
MM39 VDD09A VDD09A VDD09A VDD09A pch_mac l=30n w=100n m=1 nf=1
MM37 VDD09A VDD09A VDD09A VDD09A pch_mac l=30n w=100n m=1 nf=1
MM14 net068 SL3B VDD09A VDD09A pch_mac l=30n w=100n m=1 nf=1
MM13 net064 SL3A VDD09A VDD09A pch_mac l=30n w=100n m=1 nf=1
MM12 net060 SL2B VDD09A VDD09A pch_mac l=30n w=100n m=1 nf=1
MM11 net056 SL3A VDD09A VDD09A pch_mac l=30n w=100n m=1 nf=1
MM10 net55 SL3B VDD09A VDD09A pch_mac l=30n w=100n m=1 nf=1
MM9 net51 SL2A VDD09A VDD09A pch_mac l=30n w=100n m=1 nf=1
MM8 net47 SL1B VDD09A VDD09A pch_mac l=30n w=100n m=1 nf=1
MM7 net43 SL1A VDD09A VDD09A pch_mac l=30n w=100n m=1 nf=1
MM6 net39 SL2B VDD09A VDD09A pch_mac l=30n w=100n m=1 nf=1
MM5 net35 SL3B VDD09A VDD09A pch_mac l=30n w=100n m=1 nf=1
MM4 net31 SL3A VDD09A VDD09A pch_mac l=30n w=100n m=1 nf=1
MM3 net024 SL2A VDD09A VDD09A pch_mac l=30n w=100n m=1 nf=1
MM2 net020 SL3A VDD09A VDD09A pch_mac l=30n w=100n m=1 nf=1
MM35 VDD09A VDD09A VDD09A VDD09A pch_mac l=30n w=100n m=1 nf=1
MM33 VDD09A VDD09A VDD09A VDD09A pch_mac l=30n w=100n m=1 nf=1
MM31 VDD09A VDD09A VDD09A VDD09A pch_mac l=30n w=100n m=1 nf=1
MM1 net015 SL3B VDD09A VDD09A pch_mac l=30n w=100n m=1 nf=1
MM0 VDD09A VDD09A VDD09A VDD09A pch_mac l=30n w=100n m=1 nf=1
MM43 VSS09A VSS09A VSS09A VSS09A nch_mac l=30n w=100n m=1 nf=1
MM40 VSS09A VSS09A VSS09A VSS09A nch_mac l=30n w=100n m=1 nf=1
MM38 VSS09A VSS09A VSS09A VSS09A nch_mac l=30n w=100n m=1 nf=1
MM36 VSS09A VSS09A VSS09A VSS09A nch_mac l=30n w=100n m=1 nf=1
MM29 net068 SL3B VSS09A VSS09A nch_mac l=30n w=100n m=1 nf=1
MM28 net064 SL3A VSS09A VSS09A nch_mac l=30n w=100n m=1 nf=1
MM27 net060 SL2B VSS09A VSS09A nch_mac l=30n w=100n m=1 nf=1
MM26 net056 SL3A VSS09A VSS09A nch_mac l=30n w=100n m=1 nf=1
MM25 net55 SL3B VSS09A VSS09A nch_mac l=30n w=100n m=1 nf=1
MM24 net51 SL2A VSS09A VSS09A nch_mac l=30n w=100n m=1 nf=1
MM23 net47 SL1B VSS09A VSS09A nch_mac l=30n w=100n m=1 nf=1
MM22 net43 SL1A VSS09A VSS09A nch_mac l=30n w=100n m=1 nf=1
MM21 net39 SL2B VSS09A VSS09A nch_mac l=30n w=100n m=1 nf=1
MM20 net35 SL3B VSS09A VSS09A nch_mac l=30n w=100n m=1 nf=1
MM19 net31 SL3A VSS09A VSS09A nch_mac l=30n w=100n m=1 nf=1
MM18 net024 SL2A VSS09A VSS09A nch_mac l=30n w=100n m=1 nf=1
MM17 net020 SL3A VSS09A VSS09A nch_mac l=30n w=100n m=1 nf=1
MM16 net015 SL3B VSS09A VSS09A nch_mac l=30n w=100n m=1 nf=1
MM15 VSS09A VSS09A VSS09A VSS09A nch_mac l=30n w=100n m=1 nf=1
MM34 VSS09A VSS09A VSS09A VSS09A nch_mac l=30n w=100n m=1 nf=1
MM32 VSS09A VSS09A VSS09A VSS09A nch_mac l=30n w=100n m=1 nf=1
MM30 VSS09A VSS09A VSS09A VSS09A nch_mac l=30n w=100n m=1 nf=1
XI40 VDD09A VDD09A / CU1F
XI39 VDD09A VDD09A / CU1F
XI38 VDD09A VDD09A / CU1F
XI37 VSS09A TOP_ARRAY / CU1F
XI36 VSS09A TOP_ARRAY / CU1F
XI35 VSS09A TOP_ARRAY / CU1F
XI34 VSS09A TOP_ARRAY / CU1F
XI14 net068 TOP_ARRAY / CU1F
XI13 net064 TOP_ARRAY / CU1F
XI12 net060 TOP_ARRAY / CU1F
XI11 net056 TOP_ARRAY / CU1F
XI10 net55 TOP_ARRAY / CU1F
XI9 net51 TOP_ARRAY / CU1F
XI8 net47 TOP_ARRAY / CU1F
XI7 net43 TOP_ARRAY / CU1F
XI6 net39 TOP_ARRAY / CU1F
XI5 net35 TOP_ARRAY / CU1F
XI4 net31 TOP_ARRAY / CU1F
XI3 net024 TOP_ARRAY / CU1F
XI2 net020 TOP_ARRAY / CU1F
XI1 net015 TOP_ARRAY / CU1F
XI0 VSS09A TOP_ARRAY / CU1F
.ENDS
