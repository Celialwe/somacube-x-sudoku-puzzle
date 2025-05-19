face_sum(Ncube, F, S) :-
    complete_cube(Ncube), F=0..5, S = #sum { V, X, Y, Z : visible_values(V, F, Ncube, X, Y, Z) }.

% We need to have the same sum on all faces of the cube
:- face_sum(Ncube, F1, S1), face_sum(Ncube, F2, S2), complete_cube(Ncube), S1 != S2.

#show face_sum/3.