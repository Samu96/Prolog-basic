fibo(0,0).
fibo(1,1).
fibo(N,M):-N>1,N1 is N-1, N2 is N-2, fibo(N1,M1),fibo(N2,M2),M is M1 + M2.

expo(_,0,1).
expo(M,N,V):-N>=1,N1 is N-1, expo(M,N1,V1), V is (M * V1).

minimo([N],N).
minimo([FIRST|LISTA],N):- minimo(LISTA,N), N<FIRST.
minimo([FIRST|LISTA],FIRST):- minimo(LISTA,N), N>FIRST.


inserta([],X,[X]).
inserta([H|T],X,[H|T]):- X=H.
inserta([H|T],X,[H|S]):-inserta(T,X,S), X>H.
inserta([H|T],X,[X,H|T]):- X<H.

invierte([],[]).
invierte([H|T],P):-invierte(T,S), append(S,[H],P).

elimina([X],N,[X]):-X=\=N.
elimina([X],N,[]):-X=:=N.
elimina([H|T],X,[H|S]):-elimina(T,X,S), X=\=H.
elimina([H|T],X,S):-elimina(T,X,S), X=:=H.

repetidos([],[]).
repetidos([H|T],S):-member(H,T),!,repetidos(T,S).
repetidos([H|T],[H|S]):-repetidos(T,S).


