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

X = sample_data('swiss',300,3,0);
tda.RCA1( { 'settingsFile=data/cts.txt', 'supplyDataAs=pointCloud','distanceBoundOnEdges=20'}, X );
 
% Now let's extract the zero and one dimensional diagrams.

I = tda.getResultsRCA1(0).getIntervals();
J = tda.getResultsRCA1(1).getIntervals();
 
% Note that I and J are now both (number of points in diagram) X 2 arrays. 
% You may plot them if you like, or you may do
 % whatever you would like to do with an array.
 
% If you want to run this on an arbitrary "distance matrix" D,
% first you produce such a matrix at your will, and then you run:

tda.RCA1( { 'settingsFile=data/cts.txt', 'supplyDataAs=distanceMatrix','distanceBoundOnEdges=20'}, X );
 
% Finally, if you want your distance matrix to take sparse 
% form S, you first create a sparse matrix S. It needs to be
% created in the following form. If N is the number of
% non-zero entries in your matrix, then S must be a N X 3 array,
% with each row taking the form  (i,j,#), where # is the nonzero
% entry in row i and row j of the matrix.

% With S produced, you then just run:

tda.RCA1( { 'settingsFile=data/cts.txt', 'supplyDataAs=sparseMatrix','distanceBoundOnEdges=20'}, X );

