transform(X, Y, Z, 0, X, Y, Z) :- shape(A, X, Y, Z), set(A, _).
transformValue(F1, F1, 0) :- F1 =0..5.
transform(X, Y, Z, 1, -Y, X, Z) :- shape(A, X, Y, Z), set(A, _).
transformValue(F1, F2, 1) :- rot90(F1, F2).
transform(X, Y, Z, 2, -X, -Y, Z) :- shape(A, X, Y, Z), set(A, _).
transformValue(F1, F2, 2) :- rot180(F1, F2).
transform(X, Y, Z, 3, Y, -X, Z) :- shape(A, X, Y, Z), set(A, _).
transformValue(F1, F2, 3) :- rot270(F1, F2).
transform(X, Y, Z, 4, X, -Y, -Z) :- shape(A, X, Y, Z), set(A, _).
transformValue(F1, F2, 4) :- swapZMinus(F1, F2).
transform(X, Y, Z, 5, -Y, -X, -Z) :- shape(A, X, Y, Z), set(A, _).
transformValue(F1, F3, 5) :- rot90(F1, F2), swapZMinus(F2, F3).
transform(X, Y, Z, 6, -X, Y, -Z) :- shape(A, X, Y, Z), set(A, _).
transformValue(F1, F3, 6) :- rot180(F1, F2), swapZMinus(F2, F3).
transform(X, Y, Z, 7, Y, X, -Z) :- shape(A, X, Y, Z), set(A, _).
transformValue(F1, F3, 7) :- rot270(F1, F2), swapZMinus(F2, F3).
transform(X, Y, Z, 8, Z, Y, -X) :- shape(A, X, Y, Z), set(A, _).
transformValue(F1, F2, 8) :- swapXPlus(F1, F2).
transform(X, Y, Z, 9, Z, X, Y) :- shape(A, X, Y, Z), set(A, _).
transformValue(F1, F3, 9) :- rot90(F1, F2), swapXPlus(F2, F3).
transform(X, Y, Z, 10, Z, -Y, X) :- shape(A, X, Y, Z), set(A, _).
transformValue(F1, F3, 10) :- rot180(F1, F2), swapXPlus(F2, F3).
transform(X, Y, Z, 11, Z, -X, -Y) :- shape(A, X, Y, Z), set(A, _).
transformValue(F1, F3, 11) :- rot270(F1, F2), swapXPlus(F2, F3).
transform(X, Y, Z, 12, -Z, Y, X) :- shape(A, X, Y, Z), set(A, _).
transformValue(F1, F2, 12) :- swapXMinus(F1, F2).
transform(X, Y, Z, 13, -Z, X, -Y) :- shape(A, X, Y, Z), set(A, _).
transformValue(F1, F3, 13) :- rot90(F1, F2), swapXMinus(F2, F3).
transform(X, Y, Z, 14, -Z, -Y, -X) :- shape(A, X, Y, Z), set(A, _).
transformValue(F1, F3, 14) :- rot180(F1, F2), swapXMinus(F2, F3).
transform(X, Y, Z, 15, -Z, -X, Y) :- shape(A, X, Y, Z), set(A, _).
transformValue(F1, F3, 15) :- rot270(F1, F2), swapXMinus(F2, F3).
transform(X, Y, Z, 16, X, -Z, Y) :- shape(A, X, Y, Z), set(A, _).
transformValue(F1, F2, 16) :- swapYMinus(F1, F2).
transform(X, Y, Z, 17, -Y, -Z, X) :- shape(A, X, Y, Z), set(A, _).
transformValue(F1, F3, 17) :- rot90(F1, F2), swapYMinus(F2, F3).
transform(X, Y, Z, 18, -X, -Z, -Y) :- shape(A, X, Y, Z), set(A, _).
transformValue(F1, F3, 18) :- rot180(F1, F2), swapYMinus(F2, F3).
transform(X, Y, Z, 19, Y, -Z, -X) :- shape(A, X, Y, Z), set(A, _).
transformValue(F1, F3, 19) :- rot270(F1, F2), swapYMinus(F2, F3).
transform(X, Y, Z, 20, X, Z, -Y) :- shape(A, X, Y, Z), set(A, _).
transformValue(F1, F2, 20) :- swapYPlus(F1, F2).
transform(X, Y, Z, 21, -Y, Z, -X) :- shape(A, X, Y, Z), set(A, _).
transformValue(F1, F3, 21) :- rot90(F1, F2), swapYPlus(F2, F3).
transform(X, Y, Z, 22, -X, Z, Y) :- shape(A, X, Y, Z), set(A, _).
transformValue(F1, F3, 22) :- rot180(F1, F2), swapYPlus(F2, F3).
transform(X, Y, Z, 23, Y, Z, X) :- shape(A, X, Y, Z), set(A, _).
transformValue(F1, F3, 23) :- rot270(F1, F2), swapYPlus(F2, F3).

rot90(0, 1). rot90(1, 2). rot90(2, 3). rot90(3, 0). rot90(4, 4). rot90(5, 5).
rot180(0, 2). rot180(1, 3). rot180(2, 0). rot180(3, 1). rot180(4, 4). rot180(5, 5).
rot270(0, 3). rot270(1, 0). rot270(2, 1). rot270(3, 2). rot270(4, 4). rot270(5, 5).


swapYZAxis(5, 3). swapYZAxis(3, 2). swapYZAxis(1, 0). swapYZAxis(2, 5). swapYZAxis(4, 1). swapYZAxis(0, 4).

swapXZ(0, 4). swapXZ(4, 2). swapXZ(1, 1). swapXZ(3, 3). swapXZ(2, 5). swapXZ(5, 0).

swapZMinus(1, 1). swapZMinus(0, 2). swapZMinus(2, 0). swapZMinus(3, 3). swapZMinus(4, 5). swapZMinus(5, 4).

swapXPlus(0, 0). swapXPlus(1, 5). swapXPlus(2, 2). swapXPlus(3, 4). swapXPlus(4, 1). swapXPlus(5, 3).

swapXMinus(0, 0). swapXMinus(1, 4). swapXMinus(2, 2). swapXMinus(3, 5). swapXMinus(4, 3). swapXMinus(5, 1).

swapYMinus(0, 4). swapYMinus(1, 1). swapYMinus(2, 5). swapYMinus(3, 3). swapYMinus(4, 2). swapYMinus(5, 0).


swapYPlus(0, 5). swapYPlus(1, 1). swapYPlus(2, 4). swapYPlus(3, 3). swapYPlus(4, 0). swapYPlus(5, 2).