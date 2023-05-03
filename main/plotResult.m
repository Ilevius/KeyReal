clc;
close all;
fh = figure();
fh.WindowState = 'maximized';

data = load('result.txt');
x = data(:,1);
u = data(:,2);

% data = load('Oleg.txt');
% xOleg = data(:,1)/6.28;
% dzetaOleg = data(:,2);
% plot(x, dzeta, 'o', xOleg, dzetaOleg,  '.', 'markerSize', 15);
% legend('Олег','Александр')


plot(x, u, '.', 'markerSize', 15);


% hold on
% data = load('outpoints.txt');
% x = data(:,1);
% outs = data(:,2);
% 
% plot(x, outs, 'o', 'markerSize', 15);
% 
% %ylim([0 50])
% xlabel('hf км/с');
% grid on
% 
% set(gca,'FontSize', 65, 'FontName', 'Times New Roman')