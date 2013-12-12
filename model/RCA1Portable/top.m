% tar archive attached. Just open it in a clean directory with this command:
% - tar -xvf RCAforJohnStudents.tar.bz2
% You now have a directory called RCA1Portable.
 
% -open up matlab
% at command prompt, type the following magical spells:

javaclasspath('jars/tda.jar');
import api.*;
tda=Tda();
 
% Ok, now let's run an example on a point cloud. 
% I've included my code for sampling point 
% clouds in the directory. But of course the 
% students can sub in their own point clouds for X

% train = csvread('../data/num/separate_ages/train.csv',1,0);
% X = vertcat(train(:,2:11),test);

nc = 100
X = csvread(strcat('../data/wass/wass_kern_',int2str(nc),'.csv'),0,0);
% Y = X'
% Y = Y(:)'
% me = mean(Y)



% tda.RCA1( { 'settingsFile=data/cts.txt', 'supplyDataAs=distanceMatrixs','distanceBoundOnEdges= 25'}, X );
  

 
% Note that I and J are now both (number of points in diagram) X 2 arrays. 

tda.RCA1( { 'settingsFile=data/cts.txt', 'supplyDataAs=distanceMatrix','distanceBoundOnEdges=10'}, X );


I = tda.getResultsRCA1(0).getIntervals();
J = tda.getResultsRCA1(1).getIntervals();

csvwrite(strcat('../data/psquared/p2-0-',int2str(nc),'.csv'),I)
csvwrite(strcat('../data/psquared/p2-1-',int2str(nc),'.csv'),J)

