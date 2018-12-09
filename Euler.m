% (Forward)Euler
function [Theta,Omega]=Euler(omega_k, theta_k, h, g, L)
Omega = omega_k - h*g/L*sin(theta_k);
Theta = theta_k + h*omega_k;
end