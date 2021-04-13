
cd ~/etron;
#source ~/etron/source1.cshrc;
dbAccess -load "~/frank/project/skill/capGen.il";
strmout -library ADC_SAR4BIT -topCell ARRAY_CMP_T1 -view layout_skill -strmFile ~/frank/project/runLPE/gds_sp/ARRAY_CAP_T1.gds -logFile ~/frank/project/runLPE/strmout.log
cd ~/frank/project/;

