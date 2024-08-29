classdef zagi_parameters
    properties
            %   Parameters

        mass    % kg
        S       % m^2
        b       % m
        c       % m
        Sprop   % m^2
        den     % Kg/m^3
        Kmotor  
        Ktp     
        Komega  
        e   
        
        Jx      % Kg*m^2 
        Jy      % Kg*m^2
        Jz      % Kg*m^2 
        Jxz     % Kg*m^2 

    end
    methods
        function self = get_parameters()        
            self.mass    = 1.56;      % kg
            self.S       = 0.2589;    % m^2
            self.b       = 1.4224;    % m
            self.c       = 0.3302;    % m
            self.Sprop   = 0.0314;    % m^2
            self.den     = 1.2682;    % Kg/m^3
            self.Kmotor  = 20;
            self.Ktp     = 0;
            self.Komega  = 0;
            self.e       = 0.9;
            self.Jx      = 0.1147;    % Kg*m^2 
            self.Jy      = 0.0576;    % Kg*m^2
            self.Jz      = 0.1712;    % Kg*m^2 
            self.Jxz     = 0.0015;    % Kg*m^2 
        end
    end
end