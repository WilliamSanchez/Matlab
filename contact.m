classdef contact
    properties
        firstname
        middlename
        lastname
        phonenumber
    end
    methods
        function obj = contact(lname, mname, fname, phone)
            if nargin > 0 obj.lastname = lname; end
            if nargin > 1 obj.middlename = mname; end
            if nargin > 2 obj.firstname = fname; end
            if nargin > 3 obj.phonenumber = phone; end
        end
        function disp(obj)
            if isscalar(obj)
                fprintf('Name: %s, %s, %s\n', obj.lastname, obj.firstname, obj.middlename);
                fprintf('Tel: %s\n\n',obj.phonenumber);
            else
                fprintf('Arrary of contacts\n');
            end
        end
    end
end
