cd TPExe
cd tf
./runImpossible.sh
cd DocsTex
./generateLinks.sh
./compRes.sh
dvipdf results.dvi resultsImpossible.pdf
mv resultsImpossible.pdf ../../problems/output/wagnerNew/resultsImpossible.pdf
xdvi results.dvi &
cd ..
cd ..
cd ..
