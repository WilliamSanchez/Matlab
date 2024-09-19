function [sys, x0, str, ts] = second_order_m(t,x,u,flag,zeta,wn) 
    switch flag
        case 0
            [sys,x0,str,ts] = mdlInitializeSizes;
        case 1
            sys = mdlDerivatives(t,x,u,zeta,wn);
        case 3
            sys = mdlOutputs(t,x,u,wn);
        otherwise
            sys = [];
    end
end

function [sys, x0, str, ts] = mdlInitializeSizes
    sizes = simsizes;
    sizes.NumContStates = 2;
    sizes.NumDiscStates = 0;
    sizes.NumOutputs = 1;
    sizes.NumInputs = 1;
    sizes.DirFeedthrough = 0;
    sizes.NumSampleTimes = 1;
    sys = simsizes(sizes);
    x0 = [0,0];
    str = [];
    ts = [0, 0];
end

function xdot = mdlDerivatives(t,x,u,zeta,wn)
    xdot(1) = -2*zeta*wn*x(1) - wn^2*x(2);
    xdot(2) = x(1);
end

function y = mdlOutputs(t,x,u,wn)
    y = wn^2*x(2);
end
