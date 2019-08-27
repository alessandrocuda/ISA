name(giulia).
name(alessandro).

user_name.

quit :-
    nl,
    response(exit, Exit_msg),
    write(Exit_msg).

init :-
	nl,
	response(welcome_msg, Welcome_msg),
	write(Welcome_msg).

/****************************************************************************/
% find_keywords(+InputList,?KeyWordList)

find_keywords([],[]).
find_keywords([H|T],[H|T1]) :- keyword(H), !, find_keywords(T,T1).
find_keywords([_|T],T1) :- find_keywords(T,T1).

/****************************************************************************/
% simplify(+InputList,?WordList)

simplify(List, Result) :-
    sr(List, NewList),
    !,
    simplify(NewList,Result).
simplify([W|Words], [W| NewWords]):-
    simplify(Words,NewWords).
simplify([],[]).

/****************************************************************************/
% Keyboard List
keyword(hello):- !.
keyword(who_bot):- !.
keyword(how_bot):- !.
keyword(quit):- !.
keyword(exit):- !.
keyword(suggest):- !.
keyword(movie):- !.
keyword(movies):- !.
keyword(tv):- !.
keyword(show):- !.
keyword(shows):- !.
keyword(help):- !.
keyword(need):- !.


/****************************************************************************/
% Main
isa :- 
	init,
    write('Hi, I\'m ISA your personal assistant for movies and TV show!?'),nl,
    repeat,
        write('> '),
        read_atomics(Input),nl,
        write('Input: '), write(Input),nl,
        simplify(Input, S1),
        find_keywords(S1,KeyWords),
        % simplify(S1,KeyWords),
        write('Keywords: '), write(KeyWords),nl,
        response(KeyWords, X),nl,
        write('Response: '), write(X),nl,
        random_member(action(N), X),
        write(N),nl,
        check_quit(Input),
        !.