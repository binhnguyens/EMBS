%% First section 

x = 10; % This is a variable to save x = 10

%% Second section 

y = 21; 

%comment here

%% Part 1

A = [1 2 3; 4 5 6; 7 8 9]; % Setting a matrix A
B = [1 2 3; 4 5 6; 7 8 9]; % Setting a matrix B

% Addition of A and B 
C = A + B;
disp (C);

%% Part 2

% A * inverse B
% .* is to multiply corresponding indices/ element by element matching
%  * is matrix multiplication

D = A .* inv (B);

disp (D);




%% Part 3

% tranpose is to transpose the matrix

E = B .* transpose (B);
E = B * transpose (B);

disp (E);

%% Part 4

% multiply transposed B (2,3) * A 

trans_B = transpose (B);

F = trans_B (2,3) .* A;

disp (F);


%% Part 5

% First and second column is B
% Third column is second row of C

G (:,1) = A (:,1); % First column of A
G (:,2) = A (:,2); % Second column of A
G (:,3) = transpose (B(3,:)) ; % Third row of A

disp (G);


%% Part 6

% diag is a function to summon the diagonal of the matrix
% sum is to sum whatever is in the brackets

diag_sum = sum (diag(G));

disp (diag_sum);