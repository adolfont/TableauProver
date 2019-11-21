cd TPExe
cd tf
./analyseAll.sh
cd DocsTex
./generateLinks.sh
./compAna.sh
dvipdf analysis.dvi
mv analysis.pdf ../../problems/output/wagnerNew/analysis.pdf
xdvi analysis.dvi &
cd ..
cd ..
cd ..

