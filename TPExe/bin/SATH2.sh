./bin/build.sh jflex       -Danalyser.dir=satlib-sat-h2 -Dlexer.name=satlib-sat-h2.flex

./bin/build.sh cup        -Danalyser.dir=satlib-sat-h2 -Dparser.name=SATH2Parser -Dsymbols.name=SATH2sym -Dcup.file.name=satlib-sat-h2.cup

./bin/build.sh compile  -Danalyser.dir=satlib-sat-h2  -Danalyser.files=SATH2 -DlogicJarName=pcl

./bin/build.sh makejar -Danalyser.dir=satlib-sat-h2 -Djar.file=SATH2.jar -Danalyser.files=SATH2

