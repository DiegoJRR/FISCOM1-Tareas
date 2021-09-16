clear
%Datos iniciales
v=2; %Velocidad
M=360; %Número de profesores
a=5; %Apotema del polígono
angle=2*pi/M;
P=zeros(M,2); %Matriz de Posiciones
for n=1:1:M
    P(n,1)=real(a*exp(angle*1i)^(n-1));
    P(n,2)=imag(a*exp(angle*1i)^(n-1));
end
D=P; %Matriz de Direcciones
for n=1:1:M
    if n<M
        D(n,1)=-P(n,1)+P(n+1,1);
        D(n,2)=-P(n,2)+P(n+1,2);
    elseif n==M
        D(n,1)=-P(n,1)+P(1,1);
        D(n,2)=-P(n,2)+P(1,2);
    end
end
t=linspace(0,1/v,50);
Y=zeros(M,width(t)); %Componente X del movimiento de cada profesor
X=zeros(M,width(t)); %Componente Y del movimiento de cada profesor
for n=1:1:M 
    X(n,:)=P(n,1)+D(n,1)*t*v; %Ecuación de movimiento
    Y(n,:)=P(n,2)+D(n,2)*t*v;
end
hold on
axis equal
xlim([-a-1 a+1])
ylim([-a-1 a+1])
for i=1:1:width(t)
    
    plot(X(:,i),Y(:,i),'gx') %gráfica
    drawnow
    
end
hold off

