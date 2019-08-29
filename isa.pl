% File ISA.PL
% MIT License
% Copyright (c) [2019] [Alessandro Cudazzo, Giulia Volpi]

debug_enabled(debug_on).
%debug_enabled(debug_off).

init :-
	nl,
    write(' -------------------------------------------------------------------------------------'), nl,
    write('|                                     ISA v0.9.8                                      |'), nl,
    write(' -------------------------------------------------------------------------------------'), nl,
    write('|                      A Personal Assitant for movie and tv show!                     |'), nl,
    write(' -------------------------------------------------------------------------------------'), nl,
    write('|   The answer to the ultimate question of life, the universe and everything is 42.   |'), nl,
    write(' -------------------------------------------------------------------------------------'), nl, nl.

quit :-
    nl,
    response(exit, Exit_msg),
    write(Exit_msg).

/****************************************************************************/
% find_keywords(+InputList,?KeyWordList)

find_keywords([], []).
find_keywords([H|T], [H|T1]) :- keyword(H), !, find_keywords(T, T1).
find_keywords([_|T], T1) :- find_keywords(T, T1).

/****************************************************************************/
% simplify(+InputList,?WordList)

simplify(List, Result) :-
    sr(List, NewList),
    !,
    simplify(NewList, Result).
simplify([W|Words], [W|NewWords]):-
    simplify(Words, NewWords).
simplify([], []).

/****************************************************************************/
% Keyboard List
keyword(hello) :- !.
keyword(who_bot) :- !.
keyword(who_you_are) :- !.
keyword(how_bot) :- !.
keyword(quit) :- !.
keyword(exit) :- !.
keyword(suggest) :- !.
keyword(movie) :- !.
keyword(movies) :- !.
keyword(tv) :- !.
keyword(show) :- !.
keyword(shows) :- !.
keyword(help) :- !.
keyword(need) :- !.
keyword(other) :- !.
keyword(thank) :- !.
keyword(help_as_suggest) :- !.
keyword(seen) :- !.
keyword(i_like) :- !.
keyword(dont_like) :- !.

%Genre Keyword
keyword(action) :- !. 
keyword(animation) :- !.
keyword(comedy) :- !.
keyword(drama) :- !.
keyword(horror) :- !.
keyword(musical) :- !.
keyword(romance) :- !.
keyword(science) :- !.
keyword(fantasy) :- !.
keyword(sports) :- !.


/****************************************************************************/
% Main
isa :- 
	init,
    write('Hi, I\'m ISA your personal assistant for movies and TV show!'), nl,
    repeat,
        write('> '),
        read_atomics(Input), nl,
        simplify(Input, S1),
        find_keywords(S1,KeyWords),
        response(KeyWords, X),
        random_member(action(N), X),
        debug_write(debug_off, Input, S1, KeyWords, X),
        write(N), nl,
    check_quit(Input),
    !.

debug_write(Predicate, Input, S_input, K_input, Response) :-
    (   debug_enabled(Predicate)
    ->  write('Input: '), write(Input), nl, nl,
        write('simplify: '), write(S_input), nl, nl,
        write('Keywords: '), write(K_input), nl, nl,
        write('Response: '), write(Response), nl, nl
    ; true).