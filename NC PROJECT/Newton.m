function Newton()
    clear
    syms x  z s k ;
    Fun=input('Type a function','s');
    string func;
    func = Fun;
    out = inline(Fun,'x');
    in = str2sym(Fun);
    syms f(x)
    f(x) = in;
    f1 = diff(f,x);
    a=input('enter a');
    b=input('enter b');
    po=a;
             fprintf("n     po             p1\n");
    %fprintf('po is %f',po);
    for j=1:100
        p1=po-(f(po)/f1(po));
        %fprintf('p1 is %f\n',p1);
        if  (abs(p1-po))>1.0E-4
            k = po;
            po=p1;

            fprintf("%d     %f            %f ",j ,k, p1);

            fprintf('\n');
         %   fprintf('p0 is %f\n',po);
        else
            fprintf("%d     %f             %f ",j ,k, p1);
            % fprintf('p is %f\n',p1);
            %fprintf('number of iterations are %d',j);
            return
        end
    end
end