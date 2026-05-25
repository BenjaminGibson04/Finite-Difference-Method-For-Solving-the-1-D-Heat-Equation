g = @(x) sin(2*pi*x); %Initial time position function
h = @(t) 0; %End of domain position function across time
s = @(t) 0; %End of domain position function across time

%Help using 2 separate plot figures: 
% https://www.mathworks.com/matlabcentral/answers/1926135-why-is-matlab-not-making-
%   multiple-plots-when-i-specify-separate-figures

%Time intervals: dt = 0.1 UNSTABE SOLUTION

figure();

hold on
U1 = PDE_Finite_Diff(1,1,1,0.1,0.1,h,s,g);
title("Time step \Deltat=0.1");
plot(linspace(0,1,1/0.1 + 1),U1(1,1:11),'LineWidth', 2) %t = 0
plot(linspace(0,1,1/0.1 + 1),U1(3,1:11),'LineWidth', 2) %t = 0.2
plot(linspace(0,1,1/0.1 + 1),U1(5,1:11),'LineWidth', 2) %t = 0.4
ylim([-5 5])
legend("t=0", "t=0.02", "t=0.04");

%Time intervals: dt = 0.05 STABLE SOLUTION
figure();
hold on
U1 = PDE_Finite_Diff(1,1,1,0.05,0.1,h,s,g);
title("Time step \Deltat=0.05");
plot(linspace(0,1,1/0.1 + 1),U1(1,1:11),'LineWidth', 2) %t = 0
plot(linspace(0,1,1/0.1 + 1),U1(3,1:11),'LineWidth', 2) %t = 0.2
plot(linspace(0,1,1/0.1 + 1),U1(5,1:11),'LineWidth', 2) %t = 0.4
ylim([-1 1])

legend("t=0", "t=0.02", "t=0.04");
hold off