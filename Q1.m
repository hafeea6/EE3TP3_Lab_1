t = -5:5;
% Create an instance of the SimpleFunctions object.
f = SimpleFunctions();
% Evaluate the unit-step function, then plot it.
y = f.unitstep(t);
%stem(t, y, 'LineWidth', 3);

t = -10:10;
x_a = f.unitstep(t) - 2.*(f.unitstep(t-1))+f.unitstep(t-4);% equation for Q1 a 
%stem(t, x_a, 'LineWidth', 3);

x_b = (t+2).*f.unitstep(t+2) - 2.*(f.unitstep(t))- t.*f.unitstep(t-4);% equation for Q1 b
%stem(t, x_b, 'LineWidth', 3);

x_c = (f.delta(t+1)) - (f.delta(t)) + (f.unitstep(t+1)) - (f.unitstep(t-2));% equation for Q1 c 
%stem(t, x_c, 'LineWidth', 3);

x_d = exp(0.8.*t).*(f.unitstep(t+1)) + (f.unitstep(t));% equation for Q1 d 
stem(t, x_d, 'LineWidth', 3);
