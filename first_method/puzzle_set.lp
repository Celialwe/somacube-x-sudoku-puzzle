#const n=34.

%Defining the pieces available

%If we have 34 pieces or more, we put them all
set(A, 1) :- piece(A), n = 34. 
Min {set(A, 1..M) : M = Min..Min+1} Min+1 :- piece(A), Min = n / 34 , n > 34.

%If we have less than 34 pieces, we put first all the soma cube pieces
set(A, 1) :- soma_cube_piece(A), n < 34.
%we complete with other pieces 
{set(A, 1) : piece(A), not soma_cube_piece(A)} = N :-  n < 34, N = n - 7.

set(A, 1..27) :- soma_cube_piece(A), n = 189.
%We must not have more than the maximum number of pieces
:- #count { 1, M, A : set(A, M) } != n.

%Defining the values on the pieces of the set
%For each cube of a polycube, we place a number from 1 to 9 on each face.
face(F) :- F = 0..5.
{value(A, Ver, F, V, 0, X, Y, Z) : V = 1..9}=1 :- shape(A, X, Y, Z), face(F), set(A, Ver).

%the value of the piece change with the rotation
value(A, Ver, (F + 3)\4, V, 1, -Y, X, Z) :- value(A, Ver, F, V, 0, X, Y, Z), F < 4.
value(A, Ver, F, V, 1, -Y, X, Z) :- value(A, Ver, F, V, 0, X, Y, Z), F >= 4.
value(A, Ver, (F + 3)\4, V, 2, -Y, X, Z) :- value(A, Ver, F, V, 1, X, Y, Z), F < 4.
value(A, Ver, F, V, 2, -Y, X, Z) :- value(A, Ver, F, V, 1, X, Y, Z), F >= 4.
value(A, Ver, (F + 3)\4, V, 3, -Y, X, Z) :- value(A, Ver, F, V, 2, X, Y, Z), F < 4.
value(A, Ver, F, V, 3, -Y, X, Z) :- value(A, Ver, F, V, 2, X, Y, Z), F >= 4.


%Projection on Z minus axis
swapZMinus(1, 1). swapZMinus(0, 2). swapZMinus(2, 0). swapZMinus(3, 3). swapZMinus(4, 5). swapZMinus(5, 4).
value(A, Ver, F2, V, N+4, X, -Y, -Z) :- value(A, Ver, F1, V, N, X, Y, Z), swapZMinus(F1, F2), N < 4.

%Projection on X plus axis
swapXPlus(0, 0). swapXPlus(1, 5). swapXPlus(2, 2). swapXPlus(3, 4). swapXPlus(4, 1). swapXPlus(5, 3).
value(A, Ver, F2, V, N+8, Z, Y, -X) :- value(A, Ver, F1, V, N, X, Y, Z), swapXPlus(F1, F2), N < 4.

%Projection on X minus axis
swapXMinus(0, 0). swapXMinus(1, 4). swapXMinus(2, 2). swapXMinus(3, 5). swapXMinus(4, 3). swapXMinus(5, 1).
value(A, Ver, F2, V, N+12, -Z, Y, X) :- value(A, Ver, F1, V, N, X, Y, Z), swapXMinus(F1, F2),  N < 4.

%Projection on Y minus axis
swapYMinus(0, 4). swapYMinus(1, 1). swapYMinus(2, 5). swapYMinus(3, 3). swapYMinus(4, 2). swapYMinus(5, 0).
value(A, Ver, F2, V, N+16, X, -Z, Y) :- value(A, Ver, F1, V, N, X, Y, Z), swapYMinus(F1, F2), N < 4.

%Projection on Y plus axis
swapYPlus(0, 5). swapYPlus(1, 1). swapYPlus(2, 4). swapYPlus(3, 3). swapYPlus(4, 0). swapYPlus(5, 2).
value(A, Ver, F2, V, N+20, X, Z, -Y) :- value(A, Ver, F1, V, N, X, Y, Z), swapYPlus(F1, F2), N < 4.

nb_piece(n).

#show set/2.
#show value/8.
#show nb_piece/1.
