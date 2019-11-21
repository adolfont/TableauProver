./bin/build.sh jflex   -Danalyser.dir=satlib-sat-s2 -Dlexer.name=satlib-sat-s2.flex

./bin/build.sh cup  -Danalyser.dir=satlib-sat-s2 -Dparser.name=sats2Parser -Dsymbols.name=sats2sym -Dcup.file.name=satlib-sat-s2.cup

./bin/build.sh compile  -Danalyser.dir=satlib-sat-s2 -Danalyser.files=sats2

./bin/build.sh makejar -Danalyser.dir=satlib-sat-s2 -Djar.file=sats2.jar -Danalyser.files=sats2

