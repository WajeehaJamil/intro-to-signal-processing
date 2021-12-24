%---------------------- Exercise 2 --------------------%

% Task 1

t = 1790:10:2000; % date t in years
P = 197273000./(1+exp(-0.03134 *((t-1913.25)')));
format long
T = table( t', P, 'VariableNames', { 'Time','Population'});
disp('Population Modeled to time in years are: ');
disp(T);
plot(t, P),
title('  Plot of US population over years 1790 - 2000');
xlabel('Years');
ylabel('Population');
if length(P) == length(unique(P))
    disp("Population doesn't reach to a steady state.")
else
    disp("Population reaches to a steady state.")
end

% Task 2

fahrenheit = 56;
celcius = fahrenheit_to_celcius(fahrenheit);
disp([num2str(fahrenheit),' Fahrenheit Temperature is equal to ',num2str(celcius), ' Celsius Temperature']);

% Task 3

x = 0:0.01:(2*pi);
y = cos(x);
plot(x,y,'r-'); 
 
 % Task 4
 
t = 1790:10:2000; % date t in years
P = 197273000./(1+exp(-0.03134 *(t-1913.25)));
plot(t,P);
xlabel('Years');
ylabel('Population');
title('  Scatter of US population over years 1790 - 2000');
hold('on');
scatter(t, P),
hold('off')

% Task 5

theta = 0:0.01:2*pi;
a=randi([1 10]); % choose arbitrary value of a > 0
q=randi([2 10]); % choose arbitrary value of q > 1
r = a * (q.^theta);
polarplot(theta,r)



%%
function celcius = fahrenheit_to_celcius(fahrenheit)
    celcius = (5/9)*(fahrenheit-32);
end