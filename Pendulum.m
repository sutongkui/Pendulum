% Author: Tongkui Su
% This script simulates the motion of a simple pendulum
% using three different numerical methods: (Forward)Euler, BackwardEuler,
% SemiEuler

% Variables
m=1;
L=9.81;
g=9.81;
theta0=(1/10)*pi;
omega0=0;
tf = 20;  %time from 0 to tf
N = 200;
h=tf/N;
theta=zeros(N+1);
omega=zeros(N+1);
theta(1)=theta0;
omega(1)=omega0;

% Compute
for k=1:N
    [theta(k+1),omega(k+1)] = Euler(omega(k), theta(k), h, g, L);
    %[theta(k+1),omega(k+1)] = BackEuler(omega(k), theta(k), h, g, L);
    %[theta(k+1),omega(k+1)] = SemiEuler(omega(k), theta(k), h, g, L);
    
    plot([0,L*sin(theta(k))], [0, -L*cos(theta(k))]);hold on;
    plot(L*sin(theta), -L*cos(theta), 'o');
    axis([-L-1, L+1, -L-1, L+1]);
    hold off;
    pause(0.01);
end

