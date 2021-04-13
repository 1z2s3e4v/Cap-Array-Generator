#!/bin/bash
#GDS_FILE="/raidj/user/t28/t28u25/frank/project/runLPE/gds_sp/ARRAY_CAP_T1.gds"
#SP_FILE="/raidj/user/t28/t28u25/frank/project/runLPE/gds_sp/ARRAY_CMP.sp"
LOG_FILE="./log.runLPE"
GDS_FILE=$1
SPF_FILE=""
SPICE_FILE="/raidj/user/t28/t28u25/etron/ADC_SAR4BIT/spice/ARRAY_CMP.sp"
if [ $# -eq 2 ]; then
	SPICE_FILE=$2
fi

date > $LOG_FILE
if [ -f ./ARRAY_CMP_T1.spf ]; then
	rm ./ARRAY_CMP_T1.spf
fi
# check ARGC
if [ $# -eq 0 ]; then
	echo "[runLPE] - error! Please input a gds file." |& tee -a $LOG_FILE
	exit 0;
fi
# check gds and spice
if [ ! -f "$GDS_FILE" ]; then
	echo "[runLPE] - error! gds file not found." |& tee -a $LOG_FILE
	exit 0
fi
if [ ! -f "$SPICE_FILE" ]; then
	echo "[runLPE] - error! spice file not found." |& tee -a $LOG_FILE
	exit 0
fi
# Extract cell name, fix gds path, name spf file
if [[ "$GDS_FILE" =~ .*\.gds$ ]]; then
	CellName="$(basename $GDS_FILE)"
	CellName="${CellName%%.*}"
	echo "[runLPE] - running case '$CellName'" |& tee -a $LOG_FILE
	if [[ ! "$GDS_FILE" =~ ^/.* ]]; then
		GDS_FILE="$(pwd)/$GDS_FILE"
	fi
	echo "[runLPE] - gds file: '$GDS_FILE'" |& tee -a $LOG_FILE
	echo "[runLPE] - spice file: '$SPICE_FILE'" |& tee -a $LOG_FILE
	SPF_FILE="spf/$CellName.spf"
	echo "[runLPE] - spf file: '$SPF_FILE'" |& tee -a $LOG_FILE
else
	echo "[runLPE] - error! Input is not a gds file." |& tee -a $LOG_FILE
	exit 0
fi
# set gds, spice in DFM_LVS_RC_CALIBRE_N28HP_1p9m_ALRDL_CCI.v1.0_3o
sed -i "s#LAYOUT PATH.*#LAYOUT PATH \"$GDS_FILE\"#g" DFM_LVS_RC_CALIBRE_N28HP_1p9m_ALRDL_CCI.v1.0_3o
sed -i "s#SOURCE PATH.*#SOURCE PATH \"$SPICE_FILE\"#g" DFM_LVS_RC_CALIBRE_N28HP_1p9m_ALRDL_CCI.v1.0_3o

# run lvs check
echo "checking lvs ..."
calibre -lvs -hier DFM_LVS_RC_CALIBRE_N28HP_1p9m_ALRDL_CCI.v1.0_3o >> $LOG_FILE
if grep -Fqi "error" ./LVS/lvs.rep 
then 
	echo "[runLPE] - lvs error." |& tee -a $LOG_FILE
	exit 0
else 
	echo "[runLPE] - lvs pass." |& tee -a $LOG_FILE
fi
# Capacitance extraction
calibre -query ./LVS/svdb/ < query_cmd
StarXtract -clean star_cmd

# Change pin name of ARRAY_CMP_T1 in spf file
sed -i "s/\.SUBCKT ARRAY_CMP_T1.*/.SUBCKT ARRAY_CMP_T1 SL1A SL1B SL2A SL2B SL3A SL3B TOP_ARRAY VDD09A VSS09A/g" ARRAY_CMP_T1.spf
# Copy spf file to spf/Named
cp ARRAY_CMP_T1.spf $SPF_FILE
cp $SPF_FILE ~/frank/project/input/spf/
echo "$SPF_FILE generated."
exit 0
