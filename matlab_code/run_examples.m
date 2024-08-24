%%
for i=0.0: 0.1: 10
    u = [10*0.5, i*45*pi/180, i];
    drawPendulum(u);
    pause(0.1);
end
%%

[sys, x0, str, ts] = second_order_m(0.1, [0.1, 0.5], 0.5, 0, 0.5, 0.1);
%%