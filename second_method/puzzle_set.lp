#const n=34.

%Defining the pieces available
% The pieces are defined in the file piece_encoding.lp

%If we have 34 pieces or more, we put them all
set(A, 1) :- piece(A), n = 34. 
Min {set(A, 1..M) : M = Min..Min+1} Min+1 :- piece(A), Min = n / 34 , n > 34.

%If we have less than 34 pieces, we put first all the soma cube pieces
set(A, 1) :- soma_cube_piece(A), n < 34.
%we complete with other pieces 
{set(A, 1) : piece(A), not soma_cube_piece(A)} = N :-  n < 34, N = n - 7.

%We must not have more than the maximum number of pieces
:- #count { 1, M, A : set(A, M) } != n.

%Defining the values on the pieces of the set
%For each cube of a polycube, we place a number from 1 to 9 on each face.
face(F) :- F = 0..5.
{value(A, Ver, F, V, X, Y, Z) : V = 1..9}=1 :- shape(A, X, Y, Z), face(F), set(A, Ver).

nb_piece(n).

#show set/2.
#show transformValue/3.
#show transform/7.
#show value/7.
#show nb_piece/1.
