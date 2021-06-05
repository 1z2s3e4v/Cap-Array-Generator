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
* Library Name: ADC_SAR4BIT_VER3
* Cell Name:    CU1F
* View Name:    schematic
************************************************************************

.SUBCKT CU1F BOT TOP
*.PININFO BOT:B TOP:B
*CC0 TOP BOT 1f $[CP]
xC0 BOT TOP cfmom_2t  w=5e-08 s=5e-08 nr=3 lr=1.5e-06 stm=4 spm=6 $[CP]
.ENDS


