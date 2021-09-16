clear
fprintf('Newton-Raphson Modificado para funciones complejas\n')
%Raíces para f(z)=z^5+z^3-pi
z=-5+1i; %Punto inicial
%Separamos partes real e imaginaria
%f(x)=x^5+x^3+pi, f'(x)=5*x^4+3*x^2
%f(y)=y^5+y^3+pu, f'(y)=5*y^4+3*y^2
if imag(z)==0
    x0=z;
    eps=1;
    while eps>0.001
        x1=x0-(x0^5+x0^3-pi)/(5*x0^4+3*x0^2);
        eps=abs((x1-x0)/x1)*100;
        x0=x1;
    end
    w2=x1;
    fprintf('Raíz real: %8.8f\n',w2)
else
    y0=z;
    eps=1;
    while eps>0.001
        y1=y0-(y0^5+y0^3-pi)/(5*y0^4+3*y0^2);
        eps=abs((y1-y0)/y1)*100;
        y0=y1;
    end
    w1=y1;
    fprintf('Raíz Compleja: %8.8f+i%8.8f\n',real(w1),imag(w1))
end
