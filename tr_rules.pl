check_quit(X) :-  
        ( member('quit',X) ; member('addio',X); member('exit',X) ), !.


response(welcome_msg, ' ------------------------------\n|          ISA   v0.0.1        |\n ------------------------------\n|          chatterbot          |\n ------------------------------\n\n') :- !.
response(exit, 'Addio e grazie per tutto il pesce!') :- !.


response([], [action('Non ho capito, puoi ripetere?')]):- !.
response([come_sto], [action('sto bene grazie e tu?')]):- !.
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

