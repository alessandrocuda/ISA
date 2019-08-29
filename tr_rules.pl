check_quit(X) :-  
        ( member('quit',X); member('exit',X) ), !.

response(exit, 'So Long, and Thanks for All the Fish!') :- !.


response([], [action('sorry I didn\'t understand, can you repeat?')]):- !.

response([hello], [action('Oh hi!'), 
                    action('Hello!'),
                    action('hi!'),
                    action('Hello, i\'m here to help! do you need an advice for a movie?'),
                    action('hi, do you need help?'),
                    action('hi, how can i help you?!')]):- !.



response([who_bot], [action('Hi, I\'m your personal assistant, how can I help you?'), 
                    action('Hi, I\'m ISA, your personal assistant for tv shows and movies'),
                    action('Hi, I\'m ISA!'),
                    action('Hi, I\'m a super computer here to help you choose a movie or a TV series')]):- !.

response([hello, who_bot], X):- response([who_bot], X), !.

response([how_bot], [action('I\'m fine thanks! do you need some advice for a movie or tv show?')]):- !.
response([hello, how_bot], X):- response([how_bot], X), !.


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

response([suggest, G, movie], [action(Z), action(Z1), action(Z2), action(Z3), action(Z4), action(Z5), action(Z6), action(Z7), action(Z8), action(Z9), action(Z10)]):-  
                                        movie_range_id(G, L, U), random(L, U, ID), movie_title(ID,T),
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

%Forse anche questa si potrebbe levare
response([suggest, G, movies], [action(Z), action(Z1), action(Z2), action(Z3), action(Z4), action(Z5), action(Z6), action(Z7), action(Z8), action(Z9), action(Z10)]):-  
                                        movie_range_id(G, L, U),
                                        random(L, U, ID), movie_title(ID,T), movie_genre(ID,G),
                                        random(L, U, ID1), movie_title(ID1,T1), movie_genre(ID1,G1),
                                        random(L, U, ID2), movie_title(ID2,T2), movie_genre(ID2,G2),
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

response([suggest, tv, show], [action(Z), action(Z1), action(Z2), action(Z3), action(Z4), action(Z5), action(Z6), action(Z7), action(Z8), action(Z9), action(Z10)]):-  
                                        random(2000, 2059, ID), tvshow_title(ID,T), tvshow_genre(ID,G),tvshow_network(ID,N),
                                        format(atom(Z), 'Maybe you could see "~w"', [T]),
                                        format(atom(Z1), 'If you like ~w genre you might watch "~w"', [G,T]),
                                        format(atom(Z2), '"~w" is a popular tv show from ~w', [T,N]),
                                        format(atom(Z3), '"~w" is a very interesting tv show, I recommend it', [T]),
                                        format(atom(Z4), 'If you haven\'t done it yet, you can watch "~w"', [T]),
                                        format(atom(Z5), '"~w" from ~w it\s a very rewarded tv show, you can\'t miss it', [T,N]),
                                        format(atom(Z6), '"~w" is a must', [T]),
                                        format(atom(Z7), 'How about "~w"?', [T]),
                                        format(atom(Z8), '"~w" is the serie of the moment', [T]),
                                        format(atom(Z9), 'Shame on you if you have\'t watch "~w" yet. Fix it now!', [T]),
                                        format(atom(Z10), 'Maybe "~w"?', [T]).

response([suggest, tv, shows], [action(Z), action(Z1), action(Z2), action(Z3), action(Z4), action(Z5), action(Z6), action(Z7), action(Z8), action(Z9), action(Z10)]):-  
                                        random(2000, 2059, ID), tvshow_title(ID,T), tvshow_genre(ID,G),
                                        random(2000, 2059, ID1), tvshow_title(ID1,T1), tvshow_genre(ID1,G1),
                                        random(2000, 2059, ID2), tvshow_title(ID2,T2), tvshow_genre(ID2,G2),
                                        ID \== ID1, ID1 \== ID2, ID \== ID2,
                                        format(atom(Z), '"~w", "~w" and "~w" are three good options', [T, T1, T2]), 
                                        format(atom(Z1), 'I don\'t know which is better between "~w", "~w" and "~w"', [T, T1, T2]),
                                        format(atom(Z2), 'If you like ~w genre you might watch "~w", but also "~w" and "~w" are good series', [G, T, T1, T2]),
                                        format(atom(Z3), 'A marathon of these three: "~w", "~w" and "~w"', [T, T1, T2]),
                                        format(atom(Z4), 'I prefer "~w" because ~w is my favorite genre, but also "~w" and "~w" are quality series', [T, G, T1, T2]),
                                        format(atom(Z5), 'One of "~w", "~w" and "~w"', [T, T1, T2]),
                                        format(atom(Z6), 'These are masterpieces: "~w", "~w" and "~w"', [T, T1, T2]),
                                        format(atom(Z7), 'If you like ~w you could watch "~w", but also "~w" and "~w" are good', [G, T, T1, T2]),
                                        format(atom(Z8), 'I can\'t choose between "~w", "~w" and "~w"', [T, T1, T2]),
                                        format(atom(Z9), 'Mmm...maybe one of "~w", "~w" and "~w"', [T, T1, T2]),
                                        format(atom(Z10), 'Maybe as a ~w you could watch "~w", or "~w" as ~w, or, finally, "~w" as ~w ', [G, T, T1, G1, T2, G2]).                                       


response([suggest, action, tv, show], [action(Z), action(Z1), action(Z2), action(Z3)]):-  
                                        tvshow_range_id(action, L, U), random(L, U, ID), tvshow_title(ID,T), tvshow_network(ID,N),
                                        format(atom(Z), 'I also like action! If you have ~w you could watch "~w"', [N,T]),
                                        format(atom(Z1), 'Lots of adrenaline with "~w"', [T]),
                                        format(atom(Z2), 'If you like action, "~w" is for you', [T]),
                                        format(atom(Z3), 'In "~w" there are spectacular fights', [T]).

response([suggest, comedy, tv, show], [action(Z), action(Z1), action(Z2), action(Z3)]):-  
                                        tvshow_range_id(comedy, L, U), random(L, U, ID), tvshow_title(ID,T), tvshow_network(ID,N),
                                        format(atom(Z), 'With "~w" you may laugh to death', [T]),
                                        format(atom(Z1), 'If you want a light and fun tv show, "~w" is for you', [T]),
                                        format(atom(Z2), 'When I saw "~w" i was in tears', [T]),
                                        format(atom(Z3), '~w always has good comedies, but "~w" is the best one', [N,T]).

response([suggest, drama, tv, show], [action(Z), action(Z1), action(Z2), action(Z3)]):-  
                                        tvshow_range_id(drama, L, U), random(L, U, ID), tvshow_title(ID,T),
                                        format(atom(Z), 'Here "~w" for the drama queen', [T]),
                                        format(atom(Z1), '"~w", serious and deep', [T]),
                                        format(atom(Z2), '"~w", because drama is always a good choice', [T]),
                                        format(atom(Z3), 'I SUGGEST "~w", WITH MY DRAMA VOICE', [T]).

response([suggest, fantasy, tv, show], [action(Z), action(Z1), action(Z2), action(Z3)]):-  
                                        tvshow_range_id(fantasy, L, U), random(L, U, ID), tvshow_title(ID,T),
                                        format(atom(Z), '"~w" to escape reality', [T]),
                                        format(atom(Z1), 'It\'s dangerous to go alone. Take this: "~w"', [T]),
                                        format(atom(Z2), '"~w" is amazing !!!!! (Five exclamation marks, the sure sign of an insane mind)', [T]),
                                        format(atom(Z3), 'Now, let me see..."~w"!', [T]).

response([suggest, horror, tv, show], [action(Z), action(Z1), action(Z2), action(Z3)]):-  
                                        tvshow_range_id(horror, L, U), random(L, U, ID), tvshow_title(ID,T),
                                        format(atom(Z), 'Hmm? Oh, yes, of course. Here we are "~w"', [T]),
                                        format(atom(Z1), 'You are a brave person. Here "~w"', [T]),
                                        format(atom(Z2), 'If you really insist..."~w"', [T]),
                                        format(atom(Z3), '"~w", so scary', [T]).

response([suggest, science, tv, show], [action(Z), action(Z1), action(Z2), action(Z3)]):-  
                                        tvshow_range_id(science, L, U), random(L, U, ID), tvshow_title(ID,T),
                                        format(atom(Z), 'So much universe, and so little time. Start from "~w"', [T]),
                                        format(atom(Z1), 'I\'m sorry, Dave. I\'m afraid I can...Sorry,lapsus. Here the serie: "~w"', [T]),
                                        format(atom(Z2), 'Mmm...maybe you could watch "~w"', [T]),
                                        format(atom(Z3), 'Maybe "~w"', [T]).

%Questa forse si potrebbe levare
response([suggest, G, tv, shows], [action(Z), action(Z1), action(Z2), action(Z3), action(Z4), action(Z5), action(Z6), action(Z7), action(Z8), action(Z9), action(Z10)]):-  
                                        tvshow_range_id(G, L, U),
                                        random(L, U, ID), tvshow_title(ID,T), tvshow_genre(ID,G),
                                        random(L, U, ID1), tvshow_title(ID1,T1), tvshow_genre(ID1,G1),
                                        random(L, U, ID2), tvshow_title(ID2,T2), tvshow_genre(ID2,G2),
                                        ID \== ID1, ID1 \== ID2, ID \== ID2,
                                        format(atom(Z), '~w, ~w and ~w are three good options', [T, T1, T2]), 
                                        format(atom(Z1), 'I don\'t know which is better between ~w, ~w and ~w', [T, T1, T2]),
                                        format(atom(Z2), 'If you like ~w genre you might watch ~w, but also ~w and ~w are good series', [G, T, T1, T2]),
                                        format(atom(Z3), 'A marathon of these three: ~w, ~w and ~w', [T, T1, T2]),
                                        format(atom(Z4), 'I prefer ~w because ~w is my favorite genre, but also ~w and ~w are quality series', [T, G, T1, T2]),
                                        format(atom(Z5), 'One of ~w, ~w and ~w', [T, T1, T2]),
                                        format(atom(Z6), 'These are masterpieces: ~w, ~w and ~w', [T, T1, T2]),
                                        format(atom(Z7), 'If you like ~w you could watch ~w, but also ~w and ~w are good', [G, T, T1, T2]),
                                        format(atom(Z8), 'I can\'t choose between ~w, ~w and ~w', [T, T1, T2]),
                                        format(atom(Z9), '~w-~w, ~w-~w and ~w-~w', [G, T, G1, T1, G2, T2]),
                                        format(atom(Z10), 'Maybe as a ~w you could watch ~w, or ~w as ~w, or, finally, ~w as ~w ', [G, T, T1, G1, T2, G2]).                                       

response([suggest], X) :- random_member(T, [[suggest, movie], [suggest, movies],[suggest, tv,show],[suggest, tv, shows]]), response(T,X), !.