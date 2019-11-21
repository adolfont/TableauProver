./bin/build.sh jflex   -Danalyser.dir=satlib-cnf -Dlexer.name=satlib-cnf.flex

./bin/build.sh cup  -Danalyser.dir=satlib-cnf -Dparser.name=satcnfParser -Dsymbols.name=satcnfsym -Dcup.file.name=satlib-cnf.cup

./bin/build.sh compile  -Danalyser.dir=satlib-cnf -Danalyser.files=satcnf

./bin/build.sh makejar -Danalyser.dir=satlib-cnf -Djar.file=satcnf.jar -Danalyser.files=satcnf

