classdef orderedNode < handle
    properties
        id
    end
    properties (SetAccess = private)
        prev
        next
    end
    methods
        function node=orderedNode(n)
            node.id=0;
            if nargin > 0 
                node.id = n; 
            end
        end
        function disp(node)
            if isscalar(node)
                if ~isempty(node.id) 
                    disp(node.id); 
                end
                disp(node.next);
            else
                disp('Array of ordered list nodes');
            end
        end   
        function head = insert(node,head)
            if isempty(head)
                error('no list provided');
            end
            cur=head;
            last=[];
            while ~isempty(cur) && node > cur
                last = cur;
                cur = cur.next;
            end
            if node == cur
                error('node already in the list');
            end
            if isempty(last)
                node.next = head;
                node.prev = [];
                head.prev = node;
                head = node;
            else
                last.next = node;
                node.prev = last;
                node.next = cur;
                if ~isempty(cur)
                    cur.prev = node;
                end
            end
        end
        function head = remove(node,head)
            if isempty(node)
                error('invalid node handle');
            end
            if ~isempty(node.prev)
                node.prev.next = node.next;                
            end
            if ~isempty(node.next)
                node.next.prev = node.prev;
            else
                head = node.next;
            end
            node.next = [];
            node.prev = [];
        end
        function delete(node)
            remove(node);
        end
   end
end