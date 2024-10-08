XYZ=[100; 50; 450];

ps=4; th=40; ph=50;

psi = ps*pi/180
theta = th*pi/180
phi = ph*pi/180


e(1) = cos(psi/2)*cos(theta/2)*cos(phi/2)+sin(psi/2)*sin(theta/2)*sin(phi/2);
e(2) = cos(psi/2)*cos(theta/2)*sin(phi/2)-sin(psi/2)*sin(theta/2)*cos(phi/2);
e(3) = cos(psi/2)*sin(theta/2)*cos(phi/2)+sin(psi/2)*cos(theta/2)*sin(phi/2);
e(4) = sin(psi/2)*cos(theta/2)*cos(phi/2)-cos(psi/2)*sin(theta/2)*sin(phi/2);

%% Quaternions
RQ = [e(2)^2+e(1)^2-e(3)^2-e(4)^2   2*(e(2)*e(3)-e(4)*e(1))         2*(e(2)*e(4)+e(3)*e(1));...
      2*(e(2)*e(3)+e(4)*e(1))       e(3)^2+e(1)^2-e(2)^2-e(4)^2     2*(e(3)*e(4)-e(2)*e(1));...
      2*(e(2)*e(4)-e(3)*e(1))       2*(e(3)*e(4)+e(2)*e(1))         e(4)^2+e(1)^2-e(2)^2-e(3)^2]

%%  Euler angles
RE = [cos(theta)*cos(psi)   sin(phi)*sin(theta)*cos(psi)-cos(phi)*sin(psi) cos(phi)*sin(theta)*cos(psi)+sin(phi)*sin(psi);...
      cos(theta)*sin(psi)   sin(phi)*sin(theta)*sin(psi)+cos(phi)*cos(psi) cos(phi)*sin(theta)*sin(psi)-sin(phi)*cos(psi);...
        -sin(theta)                      sin(phi)*cos(theta)                      cos(phi)*cos(theta)]


%%

Q = RQ*XYZ
E = RE*XYZ

c_psi = atan2((2*(e(1)*e(4)+e(2)*e(3))),(1-2*(e(3)^2+e(4)^2)))
c_phi = atan2((2*(e(1)*e(2)+e(3)*e(4))),(1-2*(e(2)^2+e(3)^2)))
c_theta = asin(2*(e(1)*e(3)-e(2)*e(4)))



