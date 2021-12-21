function Euler()
    % Euler's Method
    str = input('Give an equation in x and y: ','s')  ;
    f = inline(str,'x', 'y' , 'i') ;
    h = input('Value of h : ');
    ini = input('Value of x : ');
    max = input('Maximum value of x : ');
    valy = input('Value of Y on initial value of x : ');
    x = ini:h:max; 
    y = zeros(size(x));  
    y(1) = 1;  
    n = numel(y);

    for i=1:n-1
        p = feval(f,x,y,i) ;    
        y(i+1) = y(i) + h * p;
    end
    end2