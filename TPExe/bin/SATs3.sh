./bin/build.sh jflex   -Danalyser.dir=satlib-sat-s3 -Dlexer.name=satlib-sat-s3.flex

./bin/build.sh cup  -Danalyser.dir=satlib-sat-s3 -Dparser.name=sats3Parser -Dsymbols.name=sats3sym -Dcup.file.name=satlib-sat-s3.cup

./bin/build.sh compile  -Danalyser.dir=satlib-sat-s3 -Danalyser.files=sats3

./bin/build.sh makejar -Danalyser.dir=satlib-sat-s3 -Djar.file=sats3.jar -Danalyser.files=sats3

