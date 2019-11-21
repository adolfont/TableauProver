./bin/build.sh jflex       -Danalyser.dir=satlib-sat-h -Dlexer.name=satlib-sat-h.flex

./bin/build.sh cup        -Danalyser.dir=satlib-sat-h -Dparser.name=SATHParser -Dsymbols.name=SATHsym -Dcup.file.name=satlib-sat-h.cup

./bin/build.sh compile  -Danalyser.dir=satlib-sat-h  -Danalyser.files=SATH -DlogicJarName=pclAntigo

./bin/build.sh makejar -Danalyser.dir=satlib-sat-h -Djar.file=SATH.jar -Danalyser.files=SATH

