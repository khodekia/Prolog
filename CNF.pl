vx(t).
vx(f).
vy(t).
vy(f).
vz(t).
vz(f).

x(X) :- X=t; \+ X=f.
y(Y) :- Y=t; \+ Y=f.
z(Z) :- Z=t; \+ Z=f.
nx(X) :- X=f; \+ X=t.
ny(Y) :- Y=f; \+ Y=t.
nz(Z) :- Z=f; \+ Z=t.

cnf :-
   (nx(X); y(Y); nz(Z)),
   (x(X); ny(Y); z(Z)),
   (x(X); y(Y); z(Z)),
   (nx(X); ny(Y); z(Z)),
   write(X), write(Y), write(Z).
