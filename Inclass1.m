%AW: Looks good 0.9/1 see couple comments below
% InClass1: some simple excerises to get started with MATLAB. Please complete by
% the second class. Answer questions in comments and return assignment via
% github
%% numbers vs strings
% Run the following two sections. explain why one gives a sensible result and the other doesn't
% Can you explain the value of the variable b? 
x = 1; 
y = x + x
%%
a = '1';
b = a+a
% JAMES' ANSWER: variable 'x' is an integer while variable 'a' is a string. Matlab can add numbers and hence we get y =2 when matlab adds 1 +1. 
%Matlab converts characters into their corresponding ASCII numbers. For
%string '1' the number is 49. Hence, 49+49 is 98. 
%% concatenation
% what is being done by the following statements? what is the difference between x2 and a2? 
% what is the difference between x2 and x2b (hint run the size command on
% these arrays and explain the results). 

x2 = [x x]

a2 = [a a]

x2b = [x; x]

%JAMES' ANSWER: x2 is a concatenation of numbers; it makes a  1 by 2
%matrix [1,1]. a2 is a concatenation of strings; we get a new string '11'.
%x2 is a 1 by 2 matrix while x2b is 2 by 1 matrix. 
%% = vs ==, isequal
% explain why the identical commands with the == commands give different answers 
% hint: check the values of a and b as you execute the following statements
% if necessary. 
a = 1; b =2; 

a == b
a = b;
a == b
% JAMES' ANSWER: This is because in-between the identical 'a==b' command, there is another statement that makes 'a' equals 'b'.
% Initially 'a' and 'b' are different and the first 'a==b' command gives a
% value of zero which means it's false. However, with the ' a = b' statment
% a becomes the same value as b, 2. Therefore, the seoncd 'a==b' outputs
% the value 1 which means True. 



%explain the results of the following operations:
a = [1, 2, 4];
b = [0,2,7];
a == b
% JAMES' ANSWER'0   1   0' is given as a result. Matlab compares the elements of one matrix with the that of the corresponding matrix. If the value is the same it outputs 1. If it is different it outputs 0.  
%explain why this gives an error:

b = [2, 3];
a == b
% JAMES' ANSWER The size of a and b are different and therefore, the comparison is in
% valid. 

%explain why this does not give an error
b = 2;
a == b 
% If a number is given, matlab can check all the elements of some matrix
% with that number. 
%%  : operator 
%(hint for the following type "help colon" at the command line to see
% how the ":" operator works
% the following makes an array of the numbers from one to ten: 
oneToTen = 1:10;

%here are two ways to make the array of numbers from 1 to twenty
%explain how the second line works.
1:20
[oneToTen, oneToTen+10]
% JAMES' ANSWER: we have defined oneToTen as 1:10. So the first element of
% the array is an array of the numbers from one to ten. This is concatenate
%d with the second element which is (1:10)+10 = 11:20. This turns out to be
%exactly same as 1:20. 

% do each of the following in two different ways, by manipulating the array
% oneToTen and by defining it concisely from scratch

%AW: You were supposed to do each of these two ways, as indicated in the question. -0.1

% 1. even numbers from two to twenty
%JAMES' ANSWER: 2:2:20
% 2. odd numbers from one to nineteen
%JAMES' ANSWER: 1:2:19
% 3. Even numbers in reverse order from twenty to two (hint lookup the
% matlab function fliplr)
%JAMES' ANSWER: fliplr(2:2:20)
% explain why the fliplr funciton no longer works and find a different
% matlab function that performs an equivalent function on the same array
oneToTen = oneToTen';
fliplr(oneToTen)
%JAMES" ANSWER: the ' mark transposes the array and therefore the fliplr
%function does not work. flipud function can flip columns. 
%% matrices, . operator

%look at the matrix this defines. Note the other functions zeros, eye, and
%rand which can define matrices. 

m1 = ones(2);
m2 = 2*ones(2);

%explain the output of these two commands:
m1*m2
m1.*m2
%JAMES' ANSWER:  * sign does the mathematical matrix multiplication. .* sign just
% mulitples by each element of one matrix to the corresponding element of
% the other. 
%explain this command:

m2./m1
%JAMES' ANSWER: ./ divides each element of one matrix to the corresponding
%elemetn of the other. 

%extra credit: explain why this command gives a warning:
m2/m1
% % JAMES' ANSWER: the matrix m1 is not invertible. The determinant of m1 is 1 -1 = 0. 
%% access particular elements and groups of elements

%define a random matrix

rand_nums = rand(5);
% JAMES' ANSWER: it gives a random number from 0 to 1. The number between
% the brackets define the size of the matrix. 

%explain what is being done in each of the following lines

rand_nums(2,3)
% JAMES' ANSWER: It calls for the element at row 2 column 3. 

rand_nums(2:4,3)
% JAMES' ANSWER: It calls for the elements at row 2, 3, and 4 of  column 3. 

rand_nums(1:2,3:4)
% JAMES' ANSWER: It extracts values from row 1 , 2 and column 3, 4. 
%AW: this is a little ambiguous - exactly how many numbers?
rand_nums(:,2)
% JAMES' ANSWER: It extracts values entire column 2
rand_nums(1,:)
% JAMES' ANSWER: It extracts values entire row 1

rand_nums(:,[1 3 5])
% JAMES' ANSWER: It extracts values of entire rows of columns 1,3, and 5

