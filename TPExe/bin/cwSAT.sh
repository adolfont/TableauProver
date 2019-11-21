./bin/build.sh jflex -Danalyser.dir=conversor-wagner-SATLIB -Dlexer.name=conversor-wagner-SATLIB.flex

./bin/build.sh  cup -Danalyser.dir=conversor-wagner-SATLIB -Dparser.name=ConversorWagnerSATLIBParser -Dsymbols.name=ConversorWagnerSATLIBsym -Dcup.file.name=conversor-wagner-SATLIB.cup

./bin/build.sh  compile -Danalyser.dir=conversor-wagner-SATLIB -Danalyser.files=ConversorWagnerSATLIB

./bin/build.sh makejar  -Danalyser.dir=conversor-wagner-SATLIB -Djar.file=cw.jar -Danalyser.files=ConversorWagnerSATLIB

