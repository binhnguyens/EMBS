%% Part 1 

% Create the function 
eq1 = @(t) 

% Create the interval
interval = 

options = optimset('Display','iter'); % show iterations
[x fval exitflag output] = fzero(eq1,interval,options);

% x - location of sign change
% fval - function value at x
% Roots == x since it is the sign change aka the value at 0

%% Part 2
fx2 = 

results = roots (fx2);
disp (results);


%% Part 3

fun = @root2d;
x0 = [2,2];
x = fsolve(fun,x0)


%% Part 4

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
eqn1 = 
eqn2 = 
eqn3 = 


% M will be the left matrix and N will be the right matrix of '==' 
[M,N] = equationsToMatrix([eqn1, eqn2, eqn3], [x, y, z])


% linsolve is done by AX = B
% In this case: MX = N
X1 = linsolve(M,N)
X2 = linsolve(N,M)
