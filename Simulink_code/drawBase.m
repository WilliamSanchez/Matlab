function handle = drawBase(y, width, height, gap, handle, mode)
   X = [y-width/2, y+width/2, y+width/2, y-width/2];
   Y = [gap, gap, gap+height, gap+height];

   if isempty(handle)
       handle = fill(X,Y,'m');
       drawnow update
   else
      % set(handle, 'XData',X,'YData',Y);       
       handle.XData=X;
       handle.YData=Y;

   end