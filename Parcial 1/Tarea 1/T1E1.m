clear
%Condiciones Iniciales
T=1; %Tiempo de vuelo
t=0:0.01:T;
k=width(t);
g=9.81;
%Posición del Angry IFI
%c0=[10 50 -40];
%c0=[0 30 0];
c0=[30 -20 -20];
x0=c0(1);
y0=c0(2);
z0=c0(3);
%Velocidades Iniciales
%Aleatorias
V0x=rand*20;
V0y=rand*20;
V0z=rand*20;
%Reales
Vx=x0/T;
Vy=y0/T;
Vz=z0/T+g*T/2;
%Ecuaciones de Movimiento
x1=V0x*t;
y1=V0y*t;
z1=V0z*t-g.*t.^2/2;
x=Vx*t;
y=Vy*t;
z=Vz*t-g.*t.^2/2;
%Gráfico
plot3(x0,y0,z0,'mx')
hold on
xlim([min(x1)-abs(x0) max(x1)+abs(x0)]) %Límite de los ejes de la simulación
ylim([min(y1)-abs(y0) max(y1)+abs(y0)])
zlim([min(z1)-abs(z0) max(z1)+abs(z0)])
str1=compose("V0x=%f\n V0y=%f\n V0z=%f",V0x,V0y,V0z); %Variable a texto
str2=compose("Angry IFI [%i,%i,%i]",x0,y0,z0);
t1=text(0,0,0,str1); %Colocar texto en simulación
t2=text(x0,y0,z0,str2);
quiver3(zeros(3,1),zeros(3,1),zeros(3,1),[1;0;0],[0;1;0],[0;0;1],'k') %Referencia Origen
for i=1:1:k
    g=plot3(x1(i),y1(i),z1(i),'ro'); %Simulación
    drawnow
end
hold off
pause
delete(t1) %Eliminar texto previo
delete(t2)
hold on
xlim([min(x)-1 max(x)+1]) %Nuevos límites de simulación
ylim([min(y)-1 max(y)+1])
zlim([min(z)-1 max(z)+1])
str3=compose("V0x=%f\n V0y=%f\n V0z=%f",Vx,Vy ,Vz); %Variable a texto
str4=compose("Angry IFI [%i,%i,%i]",x0,y0,z0);
text(0,0,0,str3) %Colocar texto
text(x0,y0,z0,str4)
quiver3(zeros(3,1),zeros(3,1),zeros(3,1),[1;0;0],[0;1;0],[0;0;1],'k') %Referencia Origen
for i=1:1:k
    plot3(x(i),y(i),z(i),'go') %Simulación
    drawnow
end
