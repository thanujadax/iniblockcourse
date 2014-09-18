function y = tutorialBlockCourse_sigmoid(tstart,tstop,increment)

% Sigmoid function
% S(t) = 1 / (1 + e^(-t))

% Inputs:
% tstart (example -5)
% tstop (example 5)
% increment (example 0.5)

% Output y = S(t)

t = tstart:increment:tstop;

y = 1 ./ (1 + exp(-t) );

%% plot 1
figure(1)
plot(t,y)
title('tutorialBlockCourse sigmoid function')
xlabel('t')
ylabel('S(t)')

%% plot 2
figure(2)
plot(t,y,'*')
title('tutorialBlockCourse sigmoid function with *')
xlabel('t')
ylabel('S(t)')


