

%% What are variables
a = 2
b = 3
c = a
a*b
a/b

%{  
Expected 0utput
a =

     2


b =

     3


c =

     2


ans =

     6


ans =

    0.6667
%}











%% what is the semicolon

a
c = a+b;
% in order to see the value of c you need to write "c" without the ";"
c

%{  
Expected 0utput
a =

     2


c =

     5
%}







%% what is a vector
x = [1;2;3]
y = [2;2;2]
z = 1:0.1:2

% access individual components
x(1)
x(2:3)
y(:)
z(4:end)
%{
Expected output
x =

     1
     2
     3


y =

     2
     2
     2


z =

  Columns 1 through 7

    1.0000    1.1000    1.2000    1.3000    1.4000    1.5000    1.6000

  Columns 8 through 11

    1.7000    1.8000    1.9000    2.0000


ans =

     1


ans =

     2
     3


ans =

     2
     2
     2


ans =

  Columns 1 through 7

    1.3000    1.4000    1.5000    1.6000    1.7000    1.8000    1.9000

  Column 8

    2.0000
%}








%% what is matrix
%declaration of a Matrix
A = [1 2 3;4 5 6;7 8 0]
B = [1 -1 -1;1 2 0.1;100 -0.1 3]

%entries of A 
A(1,1)
A(1,2)

% lower right Block of A
A(2:3,2:3)

%first row of B
B(1,:)

% third column of B 
B(:,3)

%{
Expected Output

A =

     1     2     3
     4     5     6
     7     8     0


B =

    1.0000   -1.0000   -1.0000
    1.0000    2.0000    0.1000
  100.0000   -0.1000    3.0000


ans =

     1


ans =

     2


ans =

     5     6
     8     0


ans =

     1    -1    -1


ans =

   -1.0000
    0.1000
    3.0000

%}




%% basic operations:  + , - , * , / , .* , ./ 
a*x
a+x

% elementwise multiplication (needs same dimensions)
x.*y
x./y
A.*B

% Transpose = ' , and the inner product
transpose(x)*y
x'*y

% the outer product
x*y'

% multplying matrix with vector
A*x
y' * B

%{
Expected Output

ans =

     2
     4
     6


ans =

     3
     4
     5


ans =

     2
     4
     6


ans =

    0.5000
    1.0000
    1.5000


ans =

    1.0000   -2.0000   -3.0000
    4.0000   10.0000    0.6000
  700.0000   -0.8000         0


ans =

    12


ans =

    12


ans =

     2     2     2
     4     4     4
     6     6     6


ans =

    14
    32
    23


ans =

  204.0000    1.8000    4.2000

%}

%% binary operators

% == equals
% <= smaller or equal
% >= larger or equal
% ~= not equal


%% The if conditional

g = 1;
if (g == 2)
    disp('g equals 2 and will be changed to 4')
    g = 4
else
    disp('g is not equal to 2')
end
%{ 
Expected output

g is not equal to 2

%}

%% what is a function
% take a look at the file tutorial_Blockcourse_function_multi3.m
% This is how you run a function and save the ouput to some varibles
[prod1 , prod2 ] = tutorial_Blockcourse_function_multi3(2,3,5)
[prod3 , prod4 ] = tutorial_Blockcourse_function_multi3(10,20,30)


%{
Expected Output

prod1 =

    30


prod2 =

        2250


prod3 =

        6000


prod4 =

   108000000

%}


%% for loop

for i = 0:1:10
    % output the odd numbers
    % the mod function shows the remainder of the division
    if(mod(i,2) == 1)
        i
    end
end

%{ 
Expected output
i =

     1


i =

     3


i =

     5


i =

     7


i =

     9
%}



%% useful functions
% if you don't know what a function (e.g plot) is doing type: help plot
repmat([1,2,3,4,5],10,1)
cat([1,2],3)
[[1,2],3]
plot(x,y,'*')







