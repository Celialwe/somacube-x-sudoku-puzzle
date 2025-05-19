%By defaut, the dimension of the cube is 3. But we can change to execute the 5th variation. 
#const dim=3.

%We select a variation for each piece in the set
{selected(A, M ,N) : N = 0..23} = 1:- set(A, M).

%We define the value of the piece according to its variation
value_selected(A, Ver, F2, V, X2, Y2, Z2) :- value(A, Ver, F1, V, X1, Y1, Z1), transform(X1, Y1, Z1, N, X2, Y2, Z2), selected(A,Ver, N), transformValue(F1, F2, N).


cube_needed(dim*dim*dim).

%We estimate the maximum number of cube possible that can be built with the set by estimating that all pieces are pentacubes (to have a higher bound).
cube(1..Max) :- Max = (X*5)/N, nb_piece(X), cube_needed(N). %averaging the number of pieces

cube_dim(1..dim, 1..dim, 1..dim).

%For each piece, we check where it cannot be put
cannot_put(A, Ver, X, Y, Z) :- selected(A, Ver, N), value_selected(A, Ver, 0, _, Dx, Dy, Dz), not cube_dim(X + Dx, Y + Dy, Z + Dz), cube_dim(X, Y, Z).

%Then, we choose a position. Note that as some pieces might not be put, we can also not put them (which explains the 0 lower bound in the choice).
0 {put(A, Ver, Ncube, X, Y, Z) : not cannot_put(A, Ver, X, Y, Z), cube_dim(X, Y, Z), cube(Ncube) } 1 :- selected(A, Ver, N).

%We define the occupied positions
occupies(A, Ver, Ncube, X + Dx, Y + Dy, Z + Dz) :- put(A, Ver, Ncube, X, Y, Z), value_selected(A, Ver, 0, _, Dx, Dy, Dz).

%We check that a cube is complete, i.e. that all positions are occupied
complete_cube(Ncube) :- 
    cube(Ncube),
    #sum { 1, A, X, Y, Z : occupies(A, Ver, Ncube, X, Y, Z) } = M, cube_needed(M).

%We make sure that pieces do not overlap
:- occupies(A, Ver1,Ncube, X, Y, Z), occupies(A2, Ver2, Ncube, X, Y, Z), A != A2, Ver1 != Ver2.
:- occupies(A1, Ver, Ncube, X, Y, Z), occupies(A2, Ver, Ncube, X, Y, Z), A1 != A2.

%To keep track of the values that are visible on a complete cube
visible_values(V,0,Ncube,X,1,Z) :- occupies(A, Ver ,Ncube,X,1,Z), value_selected(A, Ver,0,V,X - Dx,1 - Dy,Z - Dz), put(A, Ver, Ncube, Dx, Dy, Dz).
visible_values(V,1,Ncube,1,Y,Z) :- occupies(A, Ver, Ncube,1,Y,Z), value_selected(A, Ver, 1,V,1 - Dx,Y - Dy,Z - Dz), put(A, Ver, Ncube, Dx, Dy, Dz).
visible_values(V,2,Ncube,X,dim,Z) :- occupies(A, Ver, Ncube,X,dim,Z), value_selected(A, Ver, 2,V,X - Dx,dim - Dy,Z - Dz), put(A, Ver, Ncube, Dx, Dy, Dz).
visible_values(V, 3,Ncube,dim,Y,Z) :- occupies(A, Ver, Ncube,dim,Y,Z), value_selected(A, Ver, 3,V,dim - Dx,Y - Dy,Z - Dz), put(A, Ver,  Ncube, Dx, Dy, Dz).
visible_values(V,4,Ncube,X,Y,1) :- occupies(A, Ver, Ncube,X,Y,1), value_selected(A, Ver, 4,V,X-Dx,Y- Dy,1 - Dz), put(A, Ver, Ncube, Dx, Dy, Dz).
visible_values(V,5,Ncube,X,Y,dim) :- occupies(A, Ver, Ncube,X,Y,dim), value_selected(A, Ver, 5,V,X - Dx,Y - Dy,dim - Dz), put(A, Ver, Ncube, Dx, Dy, Dz).

%To ensure that the puzzle is solvable
:- not complete_cube(1).
%To ensure that it is not possible to have a complete_cube(2) and not a complete_cube(1)
:- complete_cube(Ncube), not complete_cube(Ncube2), Ncube > 1, Ncube2=Ncube-1.

#show set/2.
#show selected/3.
#show value_selected/7.
#show occupies/6.
#show visible_values/6.
#show complete_cube/1.
