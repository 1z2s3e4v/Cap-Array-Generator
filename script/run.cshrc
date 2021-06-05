
# Generate Cap-Array layout with cpp
rm output/layout.txt svg.html
bin/gen_capArray -genlayout -input input/4bit.txt

source ~/etron/source1.cshrc;
# Generate layout in virtuoso and stream-out to gds
cd ~/etron;
dbAccess -load "~/frank/project/skill/capGen.il";
strmout -library ADC_SAR4BIT -topCell ARRAY_CMP_T1 -view layout_skill -strmFile ~/frank/project/runLPE/gds/ARRAY_CAP_T1.gds -logFile ~/frank/project/runLPE/strmout.log

# Run LPE and generate spf file
cd ~/frank/project/runLPE/;
sh runLPE.sh ~/frank/project/runLPE/gds/ARRAY_CAP_T1.gds

# Generate cap-report with cpp
cd ~/frank/project/;
bin/gen_capArray -genparaRpt -input input/4bit.txt -spf input/spf/ARRAY_CAP_T1.spf
