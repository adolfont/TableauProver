./bin/build.sh jflex   -Danalyser.dir=satlib-sat-s4 -Dlexer.name=satlib-sat-s4.flex

./bin/build.sh cup  -Danalyser.dir=satlib-sat-s4 -Dparser.name=sats4Parser -Dsymbols.name=sats4sym -Dcup.file.name=satlib-sat-s4.cup

./bin/build.sh compile  -Danalyser.dir=satlib-sat-s4 -Danalyser.files=sats4

./bin/build.sh makejar -Danalyser.dir=satlib-sat-s4 -Djar.file=sats4.jar -Danalyser.files=sats4

