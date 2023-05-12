clc;
close all;
fh = figure();
fh.WindowState = 'maximized';

data = load('result.txt');
x_forftran = data(:,1);
u_forftran = data(:,2);

data = load('comsol v.txt');
x_comsol = data(:,1)*1000;
u_comsol = data(:,3);

plot(x_forftran, u_forftran, x_comsol, u_comsol,  'o', 'markerSize', 15, 'lineWidth', 1.5);
legend('Полуаналитический метод ','COMSOL')
xlabel('$x$, mm', 'FontSize',16, 'Interpreter', 'LaTeX');
ylabel('$|u|$, mm', 'FontSize',16, 'Interpreter', 'LaTeX');
grid on
set(gca,'FontSize', 50, 'FontName', 'Times New Roman')
ylim([0 0.9e-8])

