echo "Tableau Prover Problem Generator - by Wagner Dias"
echo "Creating problem generators..."
make all
echo "Generating problems... It may ask for some numbers..."
bin/createAll.sh
cd ..
echo "Problems were created in the directory indicated in bin/createAll.sh"
