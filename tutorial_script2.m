%% 1. Create data sets by selecting either 1, 2 or 3 
% Please select 1, 2 or 3 to pick a data set

loadData = 1; 
% loadData = 1 for linearly separable 2 classes
% loadData = 2 for XOR data set
% loadData = 3 for gaussian data points



%% 2. don't have to change these lines in block 2
if(loadData==1)
% set 1
% linearly separable data set at y = 1

dat1=[rand(1,numPoints);rand(1,numPoints)];   % class '+1'
dat2=[rand(1,numPoints);1+rand(1,numPoints)]; % class '-1'
X =[dat1,dat2];
data = X';
Y=[-ones(1,numPoints),ones(1,numPoints)];
size(data)
size(Y)
end


if(loadData==2)
% creates datapoints for the XOR-problem 
dat1 = [randn(numPoints,2)/20 ; 1+randn(numPoints,2)/20];
dat2 = [repmat([1,0],numPoints,1)+randn(numPoints,2)/20 ; repmat([0,1],numPoints,1)+randn(numPoints,2)/20];
data = [dat1;dat2];
size(data)
Y = [-ones(1,numPoints*2), ones(1,numPoints*2)];
size(Y)
end

if(loadData==3)
%creates gaussian datapoints with distance "dist" between the means

dist = 5;

dat1 = randn(numPoints,2);
dat2 = sqrt(dist)+randn(numPoints,2);
data = [dat1; dat2];
Y=[-ones(1,numPoints),ones(1,numPoints)];
size(data)
size(Y)
end


%% 3. TASK: start a for loop for learning the weights iteratively.

% inside the loop, choose a random data point. randi(n) is the function that
% can select a random integer between 1 and n.




% computer the output of the current perceptron (using the current weights)



% find the change in the weights and update the weights



% get the predicted output (classification) for all the data points (y)

% plot the current classification result



% evaluate the performance (classification result)


