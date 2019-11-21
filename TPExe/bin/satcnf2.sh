./bin/build.sh jflex   -Danalyser.dir=satlib-cnf2 -Dlexer.name=satlib-cnf2.flex

./bin/build.sh cup  -Danalyser.dir=satlib-cnf2 -Dparser.name=satcnf2Parser -Dsymbols.name=satcnf2sym -Dcup.file.name=satlib-cnf2.cup

./bin/build.sh compile  -Danalyser.dir=satlib-cnf2 -Danalyser.files=satcnf2

./bin/build.sh makejar -Danalyser.dir=satlib-cnf2 -Djar.file=satcnf2.jar -Danalyser.files=satcnf2

