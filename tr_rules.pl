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

response([suggest, movie], [action(Z), action(Z1), action(Z2), action(Z3), action(Z4), action(Z5), action(Z6), action(Z7), action(Z8), action(Z9), action(Z10)]):-  
                                        random(1000, 1099, ID), movie_title(ID,T),
                                        format(atom(Z), 'Maybe this one? "~w"!', [T]),
                                        format(atom(Z1), 'You might like this movie! "~w" ', [T]),
                                        format(atom(Z2), '"~w" is a very nice movie! you should watch it', [T]),
                                        format(atom(Z3), '"~w" is awsome! Everyone has already seen this movie!', [T]),
                                        format(atom(Z4), 'Maybe this one? ~w You might like this movie!', [T]),
                                        format(atom(Z5), 'A super movie is definitely "~w"! you should watch it !', [T]),
                                        format(atom(Z6), 'Oh, let me think ... maybe "~w"?', [T]),
                                        format(atom(Z7), 'One...two...three...maybe "~w" could be your movie! ', [T]),
                                        format(atom(Z8), 'Of course! I\'m here for you! here\'s a movie: "~w" ', [T]),
                                        format(atom(Z9), 'I\'m your ultimate expert, here\'s a movie: "~w" ', [T]),
                                        format(atom(Z10), 'mmm well, it\'s hard to decide but "~w" is a good movie to watch!', [T]).

response([suggest, movies], [action(Z), action(Z1), action(Z2), action(Z3), action(Z4), action(Z5), action(Z6), action(Z7), action(Z8), action(Z9), action(Z10)]):-  
                                        random(1000, 1099, ID), movie_title(ID,T), movie_genre(ID,G),
                                        random(1000, 1099, ID1), movie_title(ID1,T1), movie_genre(ID1,G1),
                                        random(1000, 1099, ID2), movie_title(ID2,T2), movie_genre(ID2,G2),
                                        ID \== ID1, ID1 \== ID2, ID \== ID2,
                                        format(atom(Z), 'Maybe i could recommend 3 films by genre,\nas a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z1), 'Mmm well, it\'s hard to decide but i could suggest you 3 films by genre,\nas a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z2), 'One...two...three...movies could be the correct answer,\nas a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z3), 'Let me check in the magic ball...here 3 films by genre for you!\nas a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z4), 'someone once told me that these 3 films must be seen absolutely!\nas a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z5), 'I asked my faithful assistant for help and he says that\nas a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z6), 'Oh wait i\'m the one! Sure i can help you!\nas a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z7), 'Harry Potter\'s magic hat says\nas a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z8), 'This three movies are aswsome!\nas a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z9), 'Everyone has already seen these movies!\nas a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z10), 'You might like these three movies!,\nas a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]).


response([suggest, tv, show], [action(Z), action(Z1), action(Z2)]):-  
                                        random(2000, 2059, ID), tvshow_title(ID,T),
                                        format(atom(Z), 'Maybe this one? ~w ', [T]),
                                        format(atom(Z1), 'This? ~w ', [T]),
                                        format(atom(Z2), '~w is a very nice movie! you should watch it', [T]).

response([suggest, tv, shows], [action(Z)]):-  
                                        random(2000, 2059, ID), tvshow_title(ID,T), tvshow_genre(ID,G),
                                        random(2000, 2059, ID1), tvshow_title(ID1,T1), tvshow_genre(ID1,G1),
                                        random(2000, 2059, ID2), tvshow_title(ID2,T2), tvshow_genre(ID2,G2),
                                        ID \== ID1, ID1 \== ID2, ID \== ID2,
                                        format(atom(Z), 'Maybe as a ~w you could watch ~w,\nor as ~w: ~w, or maybe as ~w: ~w ', [G, T, G1, T1, G2, T2]).                                        

%format('Maybe this one? ~w ', [T]))
%.