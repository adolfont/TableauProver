cd TPExe
cd tf
./runMostDifficult.sh
cd DocsTex
./generateLinks.sh
./compRes.sh
dvipdf results.dvi resultsMostDifficult.pdf
mv resultsMostDifficult.pdf ../../problems/output/wagnerNew/resultsMostDifficult.pdf
xdvi results.dvi &
cd ..
cd ..
cd ..
