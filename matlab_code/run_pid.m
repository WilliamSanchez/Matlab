%

m = 1   %   kg
b = 10  %   Ns/m
k = 20  %   N/m
F = 1   %   N


s = tf('s')

P = 1/(s^2 + 10*s + 20)
step(P)

Kp = 300
Kd = 10
Ki = 70

C = pid(Kp)

T = feedback(C*P,1)
t = 0:0.01:2;

step(T,t)

pause

C = pid(Kp,0,Kd)

T = feedback(C*P,1)

step(T,t)

pause

Kp = 30


C = pid(Kp,Ki)

T = feedback(C*P,1)

step(T,t)

pause

Kp = 350
Ki = 300
Kd = 50


C = pid(Kp,Ki,Kd)

T = feedback(C*P,1)

step(T,t)


