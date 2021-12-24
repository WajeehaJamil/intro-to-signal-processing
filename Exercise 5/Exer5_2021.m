% Task 3
clear all
help filter
u = [zeros(1,7),ones(1,20)];
n=-7:19;
b=1;
a=[1 -1.1];
y=filter(b,a,u);
stem(n,y,'r')
%%
% Task 4
clear all

delta=[1,zeros(1,127)];
n=0:127;
a=[1 -0.75];
b=[1];
y1=filter(b,a,delta);
stem(n,y1)

a1=[1 -0.6 0.3];
b1=[0.2 -0.5 0.8];
y2=filter(b1,a1,delta);
stem(n,y2)

a2=[1 0.8 -0.8];
b2=[1 0.5 1.25];
y3=filter(b2,a2,delta);
stem(n,y3)
%%
% Task 5
clear all 

delta=[1,zeros(1,127)];
n=0:127;

a=[1 -0.75];
b=[1];
impz(b,a)

a1=[1 -0.6 0.3];
b1=[0.2 -0.5 0.8];
impz(b1,a1)

a2=[1 0.8 -0.8];
b2=[1 0.5 1.25];
impz(b2,a2)