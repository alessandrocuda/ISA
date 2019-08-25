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
keyword(come):- !.
keyword(stai):- !.
keyword(sono):- !.
keyword(ciao):- !.
keyword(chi):- !.
keyword(addio):- !.
keyword(quit):- !.
keyword(exit):- !.

/****************************************************************************/
% Main
isa :- 
	init,
    write('Ciao. Io sono ISA. Come posso aiutarti?'),nl,
    repeat,
        write('> '),
        read_atomics(Input),nl,
        write('Input: '), write(Input),nl,
        % find_keywords(Input,KeyWords),
        simplify(Input,S1),
        simplify(S1,KeyWords),
        write('Keywords: '), write(KeyWords),nl,
        response(KeyWords, X),nl,
        write('Response: '), write(X),nl,
        random_member(action(N), X),
        write(N),nl,
        check_quit(Input),
        !.