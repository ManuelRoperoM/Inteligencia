%% clase IC 15 de agosto de 2023
clear all;
close all;
clc;

n=200;
d=40/n;
t=0:d:40;

%caliente
ub=trimf(t,[10 20 30]);

%frio
%ua=trapmf(t,[-5 0 10 20]);

%muy caliente
uc=trapmf(t,[20 30 40 45]);

%h=figure;
%h.Position=[200 50 800 600];
% %plot(t,ua,'B',LineWidth=2)
% hold on
% plot(t,ub,'B',LineWidth=2)
% plot(t,uc,'R',LineWidth=2)
% set(gca,'FontSize',16)
% Xlim=xlim;
% xlabel('t^{o}C','Position',[Xlim(2) -0.06],'VerticalAlignment','top','HorizontalAlignment','center')
% ylabel('\mu(t)')
% title('Taller parte 1')
% axis([0 40 0 1.2])
% %legend('Frio','Templado')
% %print('myfirstfuzzy','-dpng','-r100')

%%%COMPLEMENTOS%%%%%%%


%Complemento basico ub
cub = 1-ub;
%figure;
% hold on;
% plot(t,ub,'B',LineWidth=2)
% plot(t,cub,'C',LineWidth=2)
% set(gca,'FontSize',16)
% Xlim=xlim;
% xlabel('t^{o}C','Position',[Xlim(2) -0.06],'VerticalAlignment','top','HorizontalAlignment','center')
% ylabel('\mu(t)')
% title('Complemento basicoUB')
% axis([0 40 0 1.2])

%Complemento Ronald Yager
% w = 2;
% cyb = (1-ub.^w).^(1/w);
% hold on;
% plot(t,ub,'B',LineWidth=2);
% plot(t,cub,'g',LineWidth=2);
% plot(t,cyb,'R',LineWidth=2);
% set(gca,'FontSize',16);
% Xlim=xlim;
% xlabel('t^{o}C','Position',[Xlim(2) -0.06],'VerticalAlignment','top','HorizontalAlignment','center');
% ylabel('\mu(t)');
% title('Complemento Yager UB');
% axis([0 40 0 1.5]);


%%%%UNION%%%%%%

%Union por maximo
umax = max(ub,uc);
% h=figure;
% h.Position=[200 50 800 600];
% plot(t,ub,'B',LineWidth=2)
% hold on
% plot(t,uc,'R',LineWidth=2)
% plot(t,umax,'k',LineWidth=2)
% set(gca,'FontSize',16)
% Xlim=xlim;
% xlabel('t^{o}C','Position',[Xlim(2) -0.06],'VerticalAlignment','top','HorizontalAlignment','center')
% ylabel('\mu(t)')
% title('Union por maximo')
% axis([0 40 0 1.2])

%Union por suma algebraica(usa) y einsten (use)
% usa = ub+uc-ub.*uc;
% use = (ub+uc)./(1+ub.*uc);
% h=figure;
% h.Position=[200 50 800 600];
% plot(t,ub,'B',LineWidth=2)
% hold on
% plot(t,uc,'R',LineWidth=2)
% plot(t,umax,'k',LineWidth=2)
% plot(t,usa,'g',LineWidth=2)
% plot(t,use,'y',LineWidth=2)
% set(gca,'FontSize',16)
% Xlim=xlim;
% xlabel('t^{o}C','Position',[Xlim(2) -0.06],'VerticalAlignment','top','HorizontalAlignment','center')
% ylabel('\mu(t)')
% title('Union por maximo')
% axis([0 40 0 1.2])

%Interseccion 

%Interseccion por minimo
% imin = min (ub,uc);
% iprod = ub .* uc;
% ie = ( ub .* uc)./(2-(uc+ub-uc.*ub));
% h=figure;
% h.Position=[200 50 800 600];
% plot(t,ub,'B',LineWidth=2)
% hold on
% plot(t,uc,'R',LineWidth=2)
% plot(t,imin,'k',LineWidth=2)
% plot(t,iprod,'g',LineWidth=2)
% plot(t,ie,'y',LineWidth=2)
% set(gca,'FontSize',16)
% Xlim=xlim;
% xlabel('t^{o}C','Position',[Xlim(2) -0.06],'VerticalAlignment','top','HorizontalAlignment','center')
% ylabel('\mu(t)')
% title('Union por maximo')
% axis([0 40 0 1.2])


%INTERSECCION DE UB CON SU COMPLEMENTO

imin = min(ub,cub);
h=figure;
h.Position=[200 50 800 600];
plot(t,ub,'B',LineWidth=2)
hold on
plot(t,cub,'G',LineWidth=2)
plot(t,imin,'R',LineWidth=2)
set(gca,'FontSize',16)
Xlim=xlim;
xlabel('t^{o}C','Position',[Xlim(2) -0.06],'VerticalAlignment','top','HorizontalAlignment','center')
ylabel('\mu(t)')
title('Inteseccion')
axis([0 40 0 1.2])

%Union
imax = max(ub,cub);
h=figure;
h.Position=[200 50 800 600];
%plot(t,ub,'B',LineWidth=2)
hold on
plot(t,imax,'R',LineWidth=2)
set(gca,'FontSize',16)
Xlim=xlim;
xlabel('t^{o}C','Position',[Xlim(2) -0.06],'VerticalAlignment','top','HorizontalAlignment','center')
ylabel('\mu(t)')
title('union')
axis([0 40 0 1.2])
