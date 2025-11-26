    % eleman(X,List): X listede mi?

eleman(X, [X|_]).
eleman(X, [_|T]) :- eleman(X, T).










% ekle(List,NewList,X): List'e X ekle (varsa ekleme) ve NewList oluştur 
ekle([], [X], X).
ekle([X|T], [X|T], X).
ekle([H|T], [H|R], X) :-
    H \= X,
    ekle(T, R, X).









% tersi(List,Rev): List'in terse çevrilmiş hali (ekle nedeniyle tekrarlar filtrelenebilir)
tersi([],[]).
tersi([H|T], L) :-
    tersi(T, X),
    ekle(X, [H], L).

% sil(List,Result,X): List'ten X'i çıkar
sil([],[],_).
sil([X|T],R,X) :- sil(T,R,X).
sil([H|T],[H|R],X) :- H \= X, sil(T,R,X).








% a2b(In,Out): In'deki 'a' -> 'b', diğerleri aynı
a2b([],[]).
a2b([a|T1],[b|T2]) :- a2b(T1,T2).
a2b([H|T1],[H|T2]) :- H \= a, a2b(T1,T2).






% Örnek sorgular:
% ?- eleman(a,[a,b,c]).        % true
% ?- ekle([a,b], L, c).        % L = [a,b,c]
% ?- tersi([a,b,a], R).        % R = [a,b]   (ekle/3 tekrarı engeller)
% ?- sil([a,b,a], R, a).       % R = [b]
% ?- a2b([a,x,a], R).          % R = [b,x,b]


