u = udpport
v = udpport("LocalPort",5501,"EnablePortSharing",true)
configureTerminator(v,"CR/LF");

writeline(u,"Hello aqui desde MATLAB","127.0.0.1",5500)
pause(1)
data = readline(v)

writeline(u,"Hello aqui desde MATLAB 1","127.0.0.1",5500)
pause(1)
data = readline(v)