%same as variation1
:- visible_values(V, F, Ncube, X1, Y1, Z1), visible_values(V2, F, Ncube, X2, Y2, Z2), V != V2.
%In addition we can't have the same values on the cube
:- visible_values(V, F1, Ncube, X1, Y1, Z1), visible_values(V, F2, Ncube, X2, Y2, Z2), F1 != F2.