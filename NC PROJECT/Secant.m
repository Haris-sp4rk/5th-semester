function Secant()
    syms f(x)
    Fun=input('Type a function','s');
    out = inline(Fun,'x');
    f(x)= str2sym(Fun);
    a=input('Enter a','s');
    b=input('Enter b','s');
    fprintf("n       po      p1            pn\n");

    po=a;
    p1=b;
    i=2;
    k = '-';
        fprintf("%d      %f    %f    %c\n",1,po,p1,k);
    while (abs(p1-po))>1.0E-4
        pn=p1-(f(p1)*(p1-po))/(f(p1)-f(po));
        fprintf("%d     %f     %f    %f",i,po,p1,pn);
        fprintf('\n');
        po=p1;
        p1=pn;
        i=i+1;

    end
    return
end