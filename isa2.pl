:- ensure_loaded(readatom).

check_quit(X) :-
        ( member('quit',X) ; member('addio',X); member('exit',X) ), !.

response(welcome_msg, ' ------------------------------\n|          ISA   v0.0.1        |\n ------------------------------\n|          chatterbot          |\n ------------------------------\n\n') :- !.
response(exit, 'Addio e grazie per tutto il pesce!') :- !.


response([], [action('Non ho capito, puoi ripetere?')]):- !.
response([bot_sta], [action('sto bene grazie e tu?')]):- !.
response(['sono'], [action('sto bene grazie e tu?')]):- !.

response(['saluto'], [action('Ehi ciao!'),
                    action('Ciao anche a te!'),
                    action('Ciao!'),
                    action('Ciao, sono qui per te!'),
                    action('Ciao, hai bisogno di qualcosa?'),
                    action('Ciao, come posso aiutarti?!')]):- !.

response(['chi','sono'], [action('Non ti conosco ma mi piacerebbe molto parlare con te!'),
                    action('Non saprei!'),
                    action('Una persona fantastica? se ti va possiamo scambiare due chiacchere!'),
                    action('Non lo so...!')]):- !.

response([tu_sei,Y], [action(Z),action(Z1),action(Z2)]):-
                                            name(Y),
                                            atom_concat('Ciao! ',Y,Z),
                                            atom_concat('Ciao! piacere ',Y,Z1),
                                            atom_concat('Finalmente so il tuo nome ',Y,Z2), !.

response(Z, [action('Addio e grazie per tutto il pesce!')]):- check_quit(Z), !.

sr([ehi, ciao|X],[saluto|X]).
sr([ciao|X],[saluto|X]).
sr([ehi|X],[saluto|X]).
sr([ohi|X],[saluto|X]).
sr([salve|X],[saluto|X]).
sr([come, stai|X],[come_sto|X]).
sr([come, te, la, passi|X],[come_sto|X]).
sr([come, va|X],[come_sto|X]).
sr([saluto, come_sto|X],[bot_sta|X]).
sr([io, sono, Y|X],[tu_sei, Y|X]):- name(Y).
sr([,|X],X).
sr([.|X],X).
sr([!|X],X).
sr([?|X],X).

name(giulia).
name(alessandro).

user_name.


simplify(List, Result) :-
    sr(List, NewList),
    !,
    simplify(NewList,Result).
simplify([W|Words], [W| NewWords]):-
    simplify(Words,NewWords).
simplify([],[]).

keyword(come):- !.
keyword(stai):- !.
keyword(sono):- !.
keyword(ciao):- !.
keyword(chi):- !.
keyword(addio):- !.
keyword(quit):- !.
keyword(exit):- !.

elisa :-
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

:- elisa.
