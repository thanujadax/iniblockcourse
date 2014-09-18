
% how to create a function

% Inputs:
%   val1, val2, val3 : any three values

% Outputs:
%   res1 : multiplication 
%       val1 x val2 x val3
%   res2 : multiplication of the values raised to powers 1, 2 and 3
%   respectively
%       val1.^1 x val2.^2 x val3.^3
function [res1, res2] = tutorial_Blockcourse_function_multi3( val1, val2, val3)


res1 = val1*val2*val3;
res2 = val1.^1 * val2.^2 * val3.^3;

end