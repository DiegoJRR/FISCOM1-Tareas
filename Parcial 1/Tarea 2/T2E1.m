clear
a=0; %Intervalos [a,b] a buscar
b=85;
dx=0.001;
i=1;
format long
%Método de Bisección
fprintf('Método de Bisección\n')
while a<b %Encontrar intervalos donde pueda encontrarse una raíz
    x=a+dx;
    if (sqrt(100-a)*tan(sqrt(100-a))-sqrt(a))*(sqrt(100-x)*tan(sqrt(100-x))-sqrt(x))<0
        if abs(sqrt(100-a)*tan(sqrt(100-a))-sqrt(a))<1 %condición para exluir indeterminaciones
            j=x;
            fprintf('Posible raíz en el intervalo [%f,%f]\n',a,j)
            r(i,1)=a;
            r(i,2)=j;
            i=i+1;
        end
    end
    a=x;
end
for i=1:1:3 %Bisección
    eps=1;
    v=r(i,1);
    j=r(i,2);
    while eps>0.0001
        root=(v+j)/2;
        if (sqrt(100-v)*tan(sqrt(100-v))-sqrt(v))*(sqrt(100-j)*tan(sqrt(100-j))-sqrt(j))<0
            v=root;
        elseif (sqrt(100-v)*tan(sqrt(100-v))-sqrt(v))*(sqrt(100-j)*tan(sqrt(100-j))-sqrt(j))>0
            j=root;
        end
        root1=(v+j)/2;
        eps=(abs((root1-root)/root1))*100;
    end
    fprintf('Raíz: %f\n',root)
end
%Newton Raphson
fprintf('Método Newton-Raphson\n')
%f'(x)=-tan(sqrt(100-x))/(2*sqrt(100-x)-(sec(sqrt(100-x)))^2/2-1/(2*sqrt(x))
eps=1;
for i=1:1:3
    x=r(i,1);
    while eps>0.001
        xi=x-(sqrt(100-x)*tan(sqrt(100-x))-sqrt(x))/(-tan(sqrt(100-x))/(2*sqrt(100-x))-(sec(sqrt(100-x)))^2/2-1/(2*sqrt(x)));
        eps=(abs((xi-x)/xi))*100;
        x=xi;
    end
    fprintf('Raíz: %f\n',xi)
    eps=1;
end