function ReguliFalsi()
    syms f(x)
    Fun=input('Type a function','s');
    out = inline(Fun,'x');
    f(x)= str2sym(Fun);
    a=input('enter the value of a','s');
    b=input('enter the value of b','s');
    if f(a)*f(b) >0
     fprintf('no root exist in the given interval');
    return
    end
    if f(a)==0
     fprintf('a is one of the root');
    return
    elseif f(b)==0
     fprintf('b is one of root');
    end
       fprintf("n             a            b              p             f(a)           f(b)            f(p)\n");     
    for i=1:100

        p=(a*f(b)-b*f(a))/(f(b)-f(a));
       fprintf('%i       %f       %f        %f        %f       %f        %f',i,a,b,p,f(a),f(b),f(p));
       fprintf('\n');
        if f(p)*f(a)<0
            b=p;
        else
            a=p;
        end
        if (abs(f(a))<=1.0E-4)
            break
        end
    end

    fprintf('the root :%f \n the number of iteration of falsy position :%d\n',a,i);
end
