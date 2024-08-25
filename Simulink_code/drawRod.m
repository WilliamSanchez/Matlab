function handle = drawRod(Y, tetha, L, gap, height, handle, mode)
   X = [Y, Y+L*sin(tetha)];
   Y = [gap+height, gap+height + L*cos(tetha)];

   if isempty(handle)
       handle = plot(X,Y,'g');
       drawnow update
   else
       %set(handle, 'XData',X,'YData',Y);
       handle.XData=X;
       handle.YData=Y;
   end