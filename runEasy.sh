cd TPExe
cd tf
./runEasy.sh
cd DocsTex
./generateLinks.sh
./compRes.sh
dvipdf results.dvi resultsEasy.pdf
mv resultsEasy.pdf ../../problems/output/wagnerNew/resultsEasy.pdf
xdvi results.dvi &
cd ..
cd ..
cd ..
