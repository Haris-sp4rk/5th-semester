function Fixed()
    syms f(x)
    Fun=input('Type a function','s');
    %out = inline(Fun,'x');
    f(x)= str2sym(Fun);
    n=input('Enter n');
    x=input('Enter x'); 
    i=1 ;
    y=f(x);
    if y==x 
    fprintf('The fixed point is %f', y);
    end
    while abs(x-y)>1.0E-5 && i+1<=n
    i=i+1;
    x=y;
    y=f(x);
    fprintf("%d        %.6f        %.6f    \n",i,x,y);
    end
end    