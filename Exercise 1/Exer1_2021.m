clear all
% Task 1: 

%2.1
x = [1 3 0 -1 5]
%2.2
disp(x)
%2.3
whos
%2.4
a = [5,6,7]
%2.5
x=[130-15]
%2.6
a=[1,2,3]
b=[4,5]
c=[a -b]
%2.7
a=[1,3,7]
a=[a 0 -1]
%2.8
x=[]

% Task 2:

% Exercise 2.1
a=2 / 2 * 3
b=2/3^2
c=(2 / 3) ^ 2 
d=2 + 3 * 4 - 4
e=2 ^ 2 * 3 / 4 + 3
f=2 ^ (2 * 3) / (4 + 3)
g=2*3+4
h=2 ^ 3 ^ 2
i=- 4 ^ 2

% Exercise 2.2
a=sqrt(2) 
b=(3+4)/(5+6)
c=(5+3)/15
d=2^(3^2) 
e=(2*pi)^2
f=2*(pi^2)
g=1/sqrt(2*pi)
h=1/(2*sqrt(pi))
i=(2.3*4.5)^(1/3)
j=(1-(2/(3+2)))/(1+(2/(3-2)))
k=1000*((1+(0.15/12))^60)
l=(0.0000123+(5.678*(10^-3)))*(0.4567)*(10^-4)

% Task 3:

% Page 64
% Question 1
tic();
s = 0;
for t = 0:1000
    s = s + (t^2);
end
disp(["Loop Sum",s])
loop_time=toc();

tic();
n=1:1000;
s= sum(n.^2);
disp(["Vector Sum",s])
vector_time=toc();
disp(["Vector time / Loop time:", vector_time ,"/", loop_time]);

% Question 2
tic();
s = 1;
sign = -1;
for n = 3:2:1003
    s = s + (sign/n);
    sign = sign*-1;
end
disp(["Loop Sum",s])
loop_time = toc();

tic();
n = 1:4:1001;
s = sum(1./n - 1./(n+2));
disp(["Vector Sum",s])
vector_time = toc();
disp(["Vector time / Loop time:", vector_time ,"/", loop_time]);

% Question 3
tic();
s = 0;
for n = 3:2:500
s = s + (1/(n^2*(n-2)^2));
end
disp(["Loop Sum",s])
loop_time = toc();

tic();
n = 3:2:500;
s = sum(1./(n.^2.*(n-2).^2));
disp(["Vector Sum",s])
vector_time = toc();
disp(["Vector time / Loop time:", vector_time ,"/", loop_time]);

%Page 66
x=3>2
x=2>3
x=-4<=-3
x=1<1
x=2~=2
x=3==3
x=0<0.5<1
whos("x")

% Task 4:

% 2.1
9,87
.0
25.82
-356231
disp(["3.57*e2 is not acceptable because of the asterisk. The correct number would be 3.57e2.", 3.57e2])
disp(["3.57e2.1 is not acceptable because there is missing paranthesis or multiplication/addition operator."])
3.57e+2
3,57e-2

% 2.2
a2 = 1
disp(["a.2 is invalid as variable name cannot include decimal point."])
disp(["2a is invalid as variable name cannot start with a number."])
disp(["'a'one is invalid as variable name cannot include inverted comma’s."])
aone=1
disp(["_x_1 is invalid as variable name cannot start with underscore."])
miXedUp = 1
disp(["pay day  is invalid as variable name cannot have space between characters."])
inf = 1
Pay_Day=1
disp(["min*2 is invalid as variable name cannot has asterisk."])
what=1


% Task 5:
v=[3,1,5];
i=1;
for j=v;
    i= i+1;
    if i == 3 
        i= i+2;
        m = i+j;
    end  
end

%% 
% 
% 
% 





%% 
%