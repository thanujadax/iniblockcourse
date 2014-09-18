%% Parameters
plotEachIteration = 0; % set to 1, to plot the learned classifier at each training iteration.
numberOfIterations = 1000;
learningRate = 0.1;

w0 = rand(3,1);  % randomly initialized weights

%% 1. Create data sets by selecting either 1, 2 or 3 

loadData = 1; 
% loadData = 1 for linearly separable 2 classes
% loadData = 2 for XOR data set
% loadData = 3 for gaussian data points

%% 2. You don't have to change the code in this section.
% It just creates 3 different datasets based on the option you chose.

numPoints = 100;  % number of data points for each class


if(loadData==1)
% set 1
% linearly separable data set at y = 1

dat1=[rand(1,numPoints);rand(1,numPoints);ones(1,numPoints)];   % class '+1'
dat2=[rand(1,numPoints);1+rand(1,numPoints);ones(1,numPoints)]; % class '-1'
data =[dat1,dat2];
data = data';
Y=[-ones(1,numPoints),ones(1,numPoints)];
size(data)
size(Y)
end


if(loadData==2)
% creates datapoints for the XOR-problem 
dat1 = [randn(numPoints,2)/20 ; 1+randn(numPoints,2)/20];
dat2 = [repmat([1,0],numPoints,1)+randn(numPoints,2)/20 ; repmat([0,1],numPoints,1)+randn(numPoints,2)/20];
data = [dat1;dat2];
bias = ones(size(data,1),1);
data = [data bias];
size(data)
Y = [-ones(1,numPoints*2), ones(1,numPoints*2)];
size(Y)
end

if(loadData==3)
%creates gaussian datapoints with distance "dist" between the means

dist = 3;  % 30 is a good separation. 3 would have lots of overlapping points between
% the two classes. Try different values and see how good/bad a linear
% classifier works for differently distributed data sets.

dat1 = randn(numPoints,2);
dat2 = sqrt(dist)+randn(numPoints,2);
data = [dat1; dat2];
bias = ones(size(data,1),1);
data = [data bias];
Y=[-ones(1,numPoints),ones(1,numPoints)];
size(data)
size(Y)
end


%% 2. start a for loop for learning the weights iteratively

% call perceptron

% this is the simple perceptron learning function. It doesn't provide
% certain outputs that are required to run the function
% makeClassificationMovie.
w_learned=perceptron(data',Y,w0,learningRate,numberOfIterations,plotEachIteration);

% prediction
ytag=w_learned'*data';
plotClassificationResult(data,ytag,w_learned);

%% 3. To create a movie (extra)
% % This function also trains a perceptron, but also returns some extra
% % information to make the evolution of the classifier during the weight
% % update iterations.
% [w_learned,w_history,predictionErrors]=perceptron_test(data',Y,w0,learningRate,numberOfIterations,plotEachIteration);
% frameInterval = 10;
% movieFrames = makeClassificationMovie(data,w_history,frameInterval);
% movie(movieFrames)










