% Work shop number 2
% Hosted by Binh Nguyen

% Goals for today: 
% - Do some physics questions
% - Plot some graphs
% - Solve some linear lines

%% Part 1 
% Use two comments to create section 
% We're going to have time = 8 s and speed = 150 km/h

% First thing we need to do is to turn 150 km/h to m/s
velocity = 150;
time = 8;

new_v = velocity * 1000 / 3600; % 1 km = 1000 m and 1 hour = 3600 s

% Find Acceleration 
acel = new_v/time; % A = V/T
disp (acel); % Displaying acceleration in m/s^2

% Find Distance with constant acceleration
dist = new_v*time; % V = D/T
disp (dist);   % Displaying distance in metres

% Speed at 10s 
new_t = 10;
vel = acel*new_t; % A = V/T
vel = vel * 3600/1000; % Turn it back into km/h
disp (vel); % Velocity in Km/h

%% Part 2
% Our goal in this section is to create two plots on one

% Create your range from 0 to 2 pi with a step of pi/100
% start:step:end
x = 0:pi/100:2*pi; 

% Creat both the equations y1 and y2
% Must use .^ for exponent since you're 
y1 = cos(x).^2;
y2 = sin (x.^2);

%%%%%% Explaintation of code
% figure - function to open a window so that you can plot stuff
%           If you don't use this function, then if you try to plot new
%           figures, then it'll overlap on the same figure.
% 
% hold on - function that allows the figure to "hold on" so you could   
%           plot multiple different signals on.
% 
% plot - plot something on the figure.
% 
% xlabel and ylabel - to label the axes.
% 
% xlim and ylim - set the limits of the axes. syntax is as follows ([min max])
% 
% legend and title - labelling of legend and title of the figure

figure; 
hold on;
plot (x,y1,'r','-');
plot (x,y2,'g');
xlabel ('x axis');
ylabel ('y axis');
xlim([0 6]);
ylim([-1 1]);
title ("Plot of y1= cos^2(x) and y2=sin(x^2) ");
legend ('y1','y2');


%% Part 3

%%%%Explaination of code
% syms - functioned used to create symbolic variables 
% 
% create various equations
% 
% equationToMatrix - turn the 3 equations into a matrix with the variables
%                   x,y,z
% 
% linsolve - solve the equations of the values x,y,z


syms x y z
eqn1 = 2*x + y + z == 2;
eqn2 = -x + y - z == 3;
eqn3 = x + 2*y + 3*z == -10;

[A,B] = equationsToMatrix([eqn1, eqn2, eqn3], [x, y, z])
X = linsolve(A,B)
