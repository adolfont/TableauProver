java -Dstrategy=SimpleStrategy -DproofTermination=.proof.xml -DXSLFileName=../../../tf/xsl/proof.xsl -DSFCreatorLibDir=../lib/ -DproblemsInputDir=../problems/input/wagnerNew/ -DproblemsOutputDir=../problems/output/wagnerNew/ -DanalyserName=sats3 -jar tf.jar runProblemSequence $1 $2 $3 $4 $5 $6 ../problems/output/wagnerNew/tex/$1_$6_results.tex