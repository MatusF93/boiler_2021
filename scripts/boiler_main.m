clear;
close all;
clc;
%% Simulation
x0   = [56.5;15.6;2834.7;3293.5;13.1;3486.5;496.5];
% x0   = zeros(7,1);
us   = [56.5;401.9;0.6841;1.546;0.165];
t0   = 0;
tend = 4000;
[tt,xt] = ode45(@boiler_ode, [t0 tend], x0, [], us);
%% Results
states = 1:7;
n = size(states,2);
figure
for i = 1:n
    subplot(n,1,i);
    plot(tt,xt(:,states(i)));
    title(['x_',num2str(states(i))]);
end  
