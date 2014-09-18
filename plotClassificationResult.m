function plotClassificationResult(X,ypred,wtag)

% plot prediction over origianal data
figure;hold on

plot(X(ypred<0,1),X(ypred<0,2),'b.','MarkerSize',30)
plot(X(ypred>0,1),X(ypred>0,2),'r.','MarkerSize',30)


numD = size(X,1);

plot(X(1:numD/2,1),X(1:numD/2,2),'b.','MarkerSize',18)
plot(X(numD/2 +1 : end,1),X(numD/2+1:end,2),'r.','MarkerSize',18)


legend('class -1','class +1','pred -1','pred +1')

% plot line
if(numel(wtag)==3)
    x0 = min(X(:,1)):0.0001:max(X(:,1));
    y0 = -(wtag(1)/wtag(2)).*x0 - wtag(3)/wtag(2);
else
    x0 = min(X(:,1)):0.0001:max(X(:,1));
    y0 = -(wtag(1)/wtag(2)).*x0;
end
plot(x0,y0)

hold off