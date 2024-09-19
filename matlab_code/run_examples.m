%%

addpath("../Simulink_code/")

for i=0.0: 0.1: 10
    u = [1, 0.05*i*45*pi/180, i];
    drawPendulum(u);
    pause(0.1);
end
%%

[sys, x0, str, ts] = second_order_m(0.1, [0.1, 0.5], 0.5, 0, 0.5, 0.1);

%%

% If FUN or NONLCON are parameterized, you can use anonymous functions to
% capture the problem-dependent parameters. Suppose you want to minimize 
% the objective given in the function myfun, subject to the nonlinear 
% constraint mycon, where these two functions are parameterized by their 
% second argument a1 and a2, respectively. Here myfun and mycon are 
% MATLAB file functions such as


% To optimize for specific values of a1 and a2, first assign the values 
% to these two parameters. Then create two one-argument anonymous 
% functions that capture the values of a1 and a2, and call myfun and 
% mycon with two arguments. Finally, pass these anonymous functions to 

myfunc([1;3],3)
mycon([1;2],5)
a1 = 2; a2 = 1.5;
options = optimoptions('fmincon','Algorithm','interior-point');
%x = fmincon(@(x) myfunc(x,a1),[1;2],[],[],[],[],[],[],@(x) mycon(x,a2),options)
x = fmincon(@myfunc,[1;2],[],[],[],[],[],[],@mycon,[],5)




