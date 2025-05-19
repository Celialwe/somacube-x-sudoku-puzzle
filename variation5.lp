

eq(I, J, I, J) :- I = 1..9, J = 1..9.
block(BL, BC, L, C) :- BL=1..3, BC=1..3, L=3*BL-2..3*BL, C=3*BC-2..3*BC.

value_sudoku(0, V, L, C, Ncube) :- visible_values(V, 0, Ncube, L, 1, C).
value_sudoku(1, V, L, C, Ncube) :- visible_values(V, 1, Ncube, 1, L, C).
value_sudoku(2, V, L, C, Ncube) :- visible_values(V, 2, Ncube, L, 9, C).
value_sudoku(3, V, L, C, Ncube) :- visible_values(V, 3, Ncube, 9, L, C).
value_sudoku(4, V, L, C, Ncube) :- visible_values(V, 4, Ncube, L, C, 1).
value_sudoku(5, V, L, C, Ncube) :- visible_values(V, 5, Ncube, L, C, 9).


:- value_sudoku(F, V ,Ncube,L, C1), value_sudoku(F, V, Ncube,L, C2), C1 < C2.
:- value_sudoku(F, V, Ncube, L1, C), value_sudoku(F, V, Ncube, L2, C), L1 < L2.
:- block(BL, BC, L1, C1), block(BL, BC, L2, C2), value_sudoku(F, V, Ncube, L1, 1), value_sudoku(F, V, Ncube, L2, 1), not eq(L1, C1, L2, C2).
