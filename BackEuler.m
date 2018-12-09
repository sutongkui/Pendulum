function [Theta,Omega]=BackEuler(omega_k, theta_k, h, g, L)
    delta = 0.0000001;
    theta_k0 = theta_k + h*omega_k - g/L*h*h*sin(theta_k);
    theta_k1 = theta_k0;
    pre = 0;
    while abs(pre-theta_k1) > delta
        pre = theta_k0;
        theta_k1 = theta_k + h*omega_k - g/L*h*h*sin(theta_k0);
        theta_k0 = theta_k1;
    end
    Theta = theta_k1;
    Omega = omega_k -g/L*h*sin(Theta);
end
