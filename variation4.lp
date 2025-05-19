same_pos(X, Y, Z, X, Y, Z) :- cube_dim(X, Y, Z).
    
:- visible_values(V, F, Ncube, X1, Y1, Z1), visible_values(V, F, Ncube, X2, Y2, Z2), not same_pos(X1, Y1, Z1, X2, Y2, Z2).