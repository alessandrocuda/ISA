:- ensure_loaded(readatom).

check_quit(X) :-  
        ( member('quit',X) ; member('addio',X); member('exit',X) ), !.

response(welcome_msg, ' ------------------------------\n|          ISA   v0.0.1        |\n ------------------------------\n|          chatterbot          |\n ------------------------------\n\n') :- !.
response(exit, 'Addio e grazie per tutto il pesce!') :- !.


response([], [action('Non ho capito, puoi ripetere?')]):- !.
response([_,'come','stai'], [action('sto bene grazie e tu?')]):- !.
response(['sono'], [action('sto bene grazie e tu?')]):- !.

response(['ciao'], [action('Ehi ciao!'), 
                    action('Ciao anche a te!'),
                    action('Ciao!'),
                    action('Ciao, sono qui per te!'),
                    action('Ciao, hai bisogno di qualcosa?'),
                    action('Ciao, come posso aiutarti?!')]):- !.

response(['chi','sono'], [action('Non ti conosco ma mi piacerebbe molto parlare con te!'), 
                    action('Non saprei!'),
                    action('Una persona fantastica? se ti va possiamo scambiare due chiacchere!'),
                    action('Non lo so...!')]):- !.

response(Z, [action('Addio e grazie per tutto il pesce!')]):- check_quit(Z), !.

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
        find_keywords(Input,KeyWords),
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