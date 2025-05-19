soma_cube_piece(v3). soma_cube_piece(l4). soma_cube_piece(t4). soma_cube_piece(z4). soma_cube_piece(a4). soma_cube_piece(p4). soma_cube_piece(b4).

piece(A) :- shape(A, _, _, _).

% Shapes for I3 and O4
shape(i3, 0, 0, 0). shape(i3, 0, 1, 0). shape(i3, 0, 2, 0).
shape(o4,  0, 0, 0). shape(o4, 1, 0, 0). shape(o4, 0, 1, 0). shape(o4, 1, 1, 0).

% Shapes for the soma cube
shape(v3, 0, 0, 0). shape(v3, 0, 1, 0). shape(v3, 1, 0, 0).
shape(l4, 0, 0, 0). shape(l4, 0, 1, 0). shape(l4, 1, 0, 0). shape(l4, 2, 0, 0).
shape(t4, 0, 0, 0). shape(t4, 1, 0, 0). shape(t4, 2, 0, 0). shape(t4, 1, 1, 0).
shape(z4, 0, 0, 0). shape(z4, 1, 0, 0). shape(z4, 1, 1, 0). shape(z4, 2, 1, 0).
shape(a4, 0, 0, 0). shape(a4, 0, 0, 1). shape(a4, 0, 1, 0). shape(a4, 1, 1, 0).
shape(p4, 0, 0, 0). shape(p4, 1, 0, 0). shape(p4, 0, 0, 1). shape(p4, 0, 1, 0).
shape(b4, 0, 0, 0). shape(b4, 0, 1, 0). shape(b4, 0, 0, 1). shape(b4, 1, 0, 1).

%pentominoes
shape(f5, 0, 0, 0). shape(f5, 1, 0, 0). shape(f5, 1, 1, 0). shape(f5, 1, 2, 0). shape(f5, 2, 1, 0).
shape(v5, 0, 0, 0). shape(v5, 0, 1, 0). shape(v5, 0, 2, 0). shape(v5, 1, 0, 0). shape(v5, 2, 0, 0).
shape(t5, 0, 0, 0). shape(t5, 1, 0, 0). shape(t5, 2, 0, 0). shape(t5, 1, 1, 0). shape(t5, 1, 2, 0).
shape(w5, 0, 0, 0). shape(w5, 1, 0, 0). shape(w5, 1, 1, 0). shape(w5, 2, 1, 0). shape(w5, 2, 2, 0).
shape(x5, 1, 0, 0). shape(x5, 0, 1, 0). shape(x5, 1, 1, 0). shape(x5, 2, 1, 0). shape(x5, 1, 2, 0).
shape(p5, 0, 0, 0). shape(p5, 0, 1, 0). shape(p5, 0, 2, 0). shape(p5, 1, 0, 0). shape(p5, 1, 1, 0).
shape(u5, 0, 0, 0). shape(u5, 1, 0, 0). shape(u5, 2, 0, 0). shape(u5, 0, 1, 0). shape(u5, 2, 1, 0).
shape(z5, 0, 0, 0). shape(z5, 1, 0, 0). shape(z5, 1, 1, 0). shape(z5, 1, 2, 0). shape(z5, 2, 2, 0).

%green pieces
shape(j3, 0, 0, 0). shape(j3, 1, 0, 0). shape(j3, 2, 0, 0). shape(j3, 2, 0, 1). shape(j3, 2, 1, 0).
shape(t1, 0, 1, 1). shape(t1, 1, 1, 1). shape(t1, 2, 1, 1). shape(t1, 1, 0, 1). shape(t1, 1, 1, 0).
shape(t2, 0, 1, 0). shape(t2, 1, 1, 0). shape(t2, 2, 1, 0). shape(t2, 1, 0, 1). shape(t2, 1, 1, 1).
shape(q5, 0, 0, 0). shape(q5, 0, 1, 0). shape(q5, 1, 1, 0). shape(q5, 1, 0, 0). shape(q5, 0, 0, 1).
shape(a5, 0, 0, 0). shape(a5, 0, 1, 0). shape(a5, 1, 0, 0). shape(a5, 0, 1, 1). shape(a5, 1, 0, 1).

%blue pieces
shape(l2, 0, 0, 0). shape(l2, 1, 0, 0). shape(l2, 2, 0, 0). shape(l2, 1, 1, 0). shape(l2, 0, 0, 1).
shape(j2, 0, 0, 0). shape(j2, 1, 0, 0). shape(j2, 2, 0, 0). shape(j2, 1, 1, 0). shape(j2, 2, 0, 1).
shape(l1, 0, 0, 0). shape(l1, 1, 0, 0). shape(l1, 2, 0, 0). shape(l1, 2, 1, 0). shape(l1, 0, 0, 1).
shape(j1, 0, 0, 0). shape(j1, 1, 0, 0). shape(j1, 2, 0, 0). shape(j1, 0, 1, 0). shape(j1, 2, 0, 1).
shape(l3, 1, 0, 0). shape(l3, 1, 0, 1). shape(l3, 0, 0, 0). shape(l3, 0, 1, 0). shape(l3, 0, 2, 0).
shape(j4, 0, 0, 0). shape(j4, 0, 0, 1). shape(j4, 1, 0, 0). shape(j4, 1, 1, 0). shape(j4, 1, 2, 0).
shape(s2, 0, 0, 0). shape(s2, 1, 0, 0). shape(s2, 1, 1, 0). shape(s2, 2, 1, 0). shape(s2, 1, 1, 1).
shape(n2, 0, 1, 0). shape(n2, 1, 1, 0). shape(n2, 1, 0, 0). shape(n2, 2, 0, 0). shape(n2, 1, 1, 1).
shape(s1, 0, 0, 0). shape(s1, 1, 0, 0). shape(s1, 1, 1, 0). shape(s1, 2, 1, 0). shape(s1, 0, 0, 1).
shape(n1, 0, 1, 0). shape(n1, 1, 1, 0). shape(n1, 1, 0, 0). shape(n1, 2, 0, 0). shape(n1, 2, 0, 1).
shape(v1, 0, 2, 0). shape(v1, 0, 1, 0). shape(v1, 0, 1, 1). shape(v1, 1, 1, 1). shape(v1, 1, 0, 1).
shape(v2, 0, 0, 1). shape(v2, 0, 1, 1). shape(v2, 1, 1, 1). shape(v2, 1, 1, 0). shape(v2, 1, 2, 0).
