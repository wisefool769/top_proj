javaclasspath('../RCA1Portable/jars/tda.jar');
import api.*
tda = Tda()
X = sample_data('swiss',300,3,0);
train = csvread('../data/num/train.csv');
tda.RCA1( { 'settingsFile=../RCA1Portable/data/cts.txt', 'supplyDataAs=pointCloud','distanceBoundOnEdges=20'}, X );
I = tda.getResultsRCA1(0).getIntervals();
J = tda.getResultsRCA1(1).getIntervals();