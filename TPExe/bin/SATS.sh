./bin/build.sh jflex       -Danalyser.dir=satlib-sat-s -Dlexer.name=satlib-sat-s.flex

./bin/build.sh cup        -Danalyser.dir=satlib-sat-s -Dparser.name=SATSParser -Dsymbols.name=SATSsym -Dcup.file.name=satlib-sat-s.cup

./bin/build.sh compile  -Danalyser.dir=satlib-sat-s -Danalyser.files=SATS -DlogicJarName=pclAntigo

./bin/build.sh makejar -Danalyser.dir=satlib-sat-s -Djar.file=SATS.jar -Danalyser.files=SATS

