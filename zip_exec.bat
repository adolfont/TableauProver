zip -ry TPExec.zip TableauProver/TPExe -x *.proof -x *.xml -x *.prove -x */TPEXE/analysers/output/\* -x *ant.jar -x *optional.jar
zip TPExec.zip TableauProver/*.*
zip -r TPExec.zip TableauProver/problemGenerator/ -x *.prove -x *.o -x */gamma -x */prove -x */php -x */h -x */h_old -x */statman -x *~
