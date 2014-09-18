function [w,w_history,predictionErrors] = perceptron_test(X,Y,w_init,learningRate,numberOfIterations,plotEachIteration)
%
% Inputs:
%   X - data matrix
%   Y - training labels
%   w_init - initial weights to start training
%   learning rate (refer weight update rule)
%   numberOfIterations - how long should the weight update procedure
%   continue
%   plotEachIteration - if set to 1, plots the classification result for
%   each iteration (also in a movie format once training is done)

% Output:
%   w - column vector of weights learned
%   w_hist - record of all the weights during the all the iterations
%   predictionErrors - record of the prediction errors for all iterations

predictionErrors = [];
iter = [];
w_history = [];
w = w_init;
w_history = [w_history w];
for iteration = 1 : numberOfIterations  %<- in practice, use some stopping criterion!
     ii = randi(size(X,2));
     %cycle through training set
    if sign(w'*X(:,ii)) ~= Y(ii) %wrong decision?
      w = w + learningRate .* X(:,ii) * Y(ii);   %then add (or subtract) this point to w
    end
    w_history = [w_history w];
    % plot prediction error %
  thisError = sum(sign(w'*X)~=Y)/size(X,2) .* 100;   %show misclassification rate
  predictionErrors = [predictionErrors thisError];
  iter = [iter iteration];
  figure(1)
  plot(iter,predictionErrors);
  title('Prediction Error %');
  xlabel('iteration')
  ylabel('Prediction Error %')
  
  if(plotEachIteration)
    yPred = w'*X;
    plotClassificationResult(X',yPred,w);
  end
end