check_quit(X) :-  
        ( member('quit',X); member('exit',X) ), !.


response(welcome_msg, ' ------------------------------\n|          ISA   v0.0.1        |\n ------------------------------\n|          chatterbot          |\n ------------------------------\n\n') :- !.
response(exit, 'So Long, and Thanks for All the Fish!') :- !.


response([], [action('sorry I didn\'t understand, can you repeat?')]):- !.
response([how_bot], [action('I\'m fine thanks! do you need some advice for a movie or tv show?')]):- !.

response([hello], [action('Oh hi!'), 
                    action('Hello!'),
                    action('hi!'),
                    action('Hello, i\'m here to help! do you need an advice?'),
                    action('hi, do you need help?'),
                    action('hi, how can i help you?!')]):- !.

response([who_bot], [action('Hi, I\'m your personal assistant, how can I help you?'), 
                    action('Hi, I\'m ISA, your personal assistant for tv shows and movies'),
                    action('Hi, I\'m ISA!'),
                    action('Hi, I\'m a super computer here to help you choose a movie or a TV series')]):- !.






response([you_are,Y], [action(Z),action(Z1),action(Z2)]):- 
                                            name(Y), 
                                            atom_concat('Ciao! ',Y,Z),
                                            atom_concat('Ciao! piacere ',Y,Z1),
                                            atom_concat('Finalmente so il tuo nome ',Y,Z2), !.

response(Z, [action('So Long, and Thanks for All the Fish!')]):- check_quit(Z), !.

