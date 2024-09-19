% Numerator             % Line 1
num = [2];              % Line 2
% Denominator           % Line 3
den = [1 1];            % Line 4
% Transfer Function     % Line 5
G = tf(num, den)        % Line 6
% Plot Frequency Response
bode(G), grid

pause


r=320; %Resistance
c=100*10^-9; %Capactiance
p=(1/(r.*c)); %Beta
a=0.95; %Signma, adjusts the wiper of a potentiometer
f=(5000); %Target Frequency
% s= (1i*f);
s = tf('s');
h=((s^2 + p^2) / (s^2+4*p*s*(1-a)+p^2)); %Transfer function
% num = [1  0  p^2];
% den = [1  4*p*(1-a)  p^2];
% h=tf(num,den)
bode(h), grid