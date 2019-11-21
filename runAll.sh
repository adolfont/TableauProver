cd TPExe
cd tf
./runAll.sh
cd DocsTex
./generateLinks.sh
./compRes.sh
dvipdf results.dvi resultsAll.pdf
mv resultsAll.pdf ../../problems/output/wagnerNew/resultsAll.pdf
xdvi results.dvi &
cd ..
cd ..
cd ..
