% Author: Tongkui Su
% This script simulates the motion of a simple pendulum
% using three different numerical methods: (Forward)Euler, BackwardEuler,
% SemiEuler

% Variables
m=1;
L=9.81;
g=9.81;
theta=(1/10)*pi;
omega=0;
tf = 20;  %time from 0 to tf
N = 200;
h=tf/N;

hold off;
ax=gca;
scatter(ax,0, 0, 'bo');
axis(ax,[-L-1, L+1, -L-1, L+1]);
axis equal;
hold on;
title('SemiEuler');

pause;
% Compute
while 1
    %[theta,omega] = Euler(omega, theta, h, g, L);
    %[theta,omega] = BackEuler(omega, theta, h, g, L);
    [theta,omega] = SemiEuler(omega, theta, h, g, L);
    
    item1=line(ax,[0,L*sin(theta)], [0, -L*cos(theta)],'Color',[0.2,0.4,1]);
    item2=scatter(ax,L*sin(theta), -L*cos(theta), 'bo');
    axis(ax,[-L-1, L+1, -L-1, L+1]);
    
    pause(0.01);
    
    item1.delete;
    item2.delete;
end

