%% 1. Create data sets by selecting either 1, 2 or 3 
% Please select 1, 2 or 3 to pick a data set
numPoints = 100; % number of points per each class
loadData = 1; 
% loadData = 1 for linearly separable 2 classes
% loadData = 2 for XOR data set
% loadData = 3 for gaussian data points

%% 2. You don't have to change the code in this section.
% It just creates 3 different datasets based on the option you chose.


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


%% Initialize weights
w0 = rand(2,1);
numIterations = 300; 
%% 3. TASK: start a for loop for learning the weights iteratively.

% inside the loop, choose a random data point. randi(n) is the function that
% can select a random integer between 1 and n.




% computer the output of the current perceptron (using the current weights)



% find the change in the weights and update the weights



% get the predicted output (classification) for all the data points (y)

% plot the current classification result



% evaluate the performance (classification result)


