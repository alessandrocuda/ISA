% File TR_RULES.PL
% MIT License
% Copyright (c) [2019] [Alessandro Cudazzo, Giulia Volpi]

/****************************************************************************/
% check_quit(controlList)
check_quit(X) :-  
        ( member('quit', X); member('exit', X) ), !.

/****************************************************************************/
% response(InputKeywordList, responseList)

response(exit, 'So Long, and Thanks for All the Fish!') :- !.

response([], [ action('Sorry I didn\'t understand, can you repeat?')]) :- !.

response([help],[ action('Sure, I\'m your personal assistant for movies and tv shows!\nFor example you can ask me "what movie do you suggest me?" or "i want to watch a tv show"')]):-!.

response([need, help], X):- response([help], X), !.

response([help_as_suggest], [ action('You can ask me "what movie do you suggest me?" or "I want to watch a tv show'),
                              action('Tell me if you want to watch a movie or a tv show!')]) :- !.

response([hello], [ action('Hello, I\'m here to help! Type "help"!'),
                    action('Hi, do you need help? Type "help"'),
                    action('Hi, type "help" if you need help')]) :- !.

response([who_bot], [ action('Hi, I\'m your personal assistant, if you need help, type "help"'), 
                      action('Hi, I\'m ISA, your personal assistant for tv shows and movies'),
                      action('Hi, I\'m ISA! type "help" if you need help'),
                      action('Hi, I\'m a super computer here to help you choose a movie or a TV series')]) :- !.

response([hello, who_bot], X) :- response([who_bot], X), !.

response([how_bot], [ action('I\'m fine thanks! Do you need some advice for a movie or tv show?')]) :- !.

response([hello, how_bot], X) :- response([how_bot], X), !.

response([who_you_are], [ action('Well, I don\'t know that! But I\'m here to help you!'),
                          action('I dont\'t know but I\'m your personal assistant for movies and tv shows',
                          action('Is it really importat? Ahahah sorry I\'m just kidding you! I\'m here to help you with movie and tv shows!')),
                          action('... 1,000,000 ............ 10,000,000 years later...42? ')]) :- !.

response([hello, who_you_are], [ action('Hi! Well, I don\'t know that! but I\'m here to help you!'),
                                 action('Hello! I dont\'t know but I\'m your personal assistant for movies and tv shows',
                                 action('Hello! Is it really importat? Ahahah sorry I\'m just kidding you! I\'m here to help you with movie and tv shows!')),
                                 action('... 1,000,000 ............ 10,000,000 years later...42? ')]) :- !.

response(Z, [ action('So Long, and Thanks for All the Fish!')]) :- check_quit(Z), !.

response([suggest, movie], [ action(Z), action(Z1), action(Z2), action(Z3), action(Z4), action(Z5), action(Z6), action(Z7), action(Z8), action(Z9), action(Z10)]) :-  
                                        random(1000, 1099, ID), movie_title(ID, T),
                                        format(atom(Z), 'Maybe this one? "~w"!', [T]),
                                        format(atom(Z1), 'You might like this movie! "~w" ', [T]),
                                        format(atom(Z2), '"~w" is a very nice movie! you should watch it', [T]),
                                        format(atom(Z3), '"~w" is awsome! Everyone has already seen this movie!', [T]),
                                        format(atom(Z4), 'Maybe this one? "~w". You might like this movie!', [T]),
                                        format(atom(Z5), 'A super movie is definitely "~w"! You should watch it !', [T]),
                                        format(atom(Z6), 'Oh, let me think ... maybe "~w"?', [T]),
                                        format(atom(Z7), 'One...two...three...maybe "~w" could be your movie! ', [T]),
                                        format(atom(Z8), 'Of course! I\'m here for you! Here\'s a movie: "~w" ', [T]),
                                        format(atom(Z9), 'I\'m your ultimate expert, here\'s a movie: "~w" ', [T]),
                                        format(atom(Z10), 'Mmm well, it\'s hard to decide but "~w" is a good movie to watch!', [T]).

response([suggest, movies], [ action(Z), action(Z1), action(Z2), action(Z3), action(Z4), action(Z5), action(Z6), action(Z7), action(Z8), action(Z9), action(Z10)]) :-  
                                        random(1000, 1099, ID), movie_title(ID, T), movie_genre(ID, G),
                                        random(1000, 1099, ID1), movie_title(ID1, T1), movie_genre(ID1, G1),
                                        random(1000, 1099, ID2), movie_title(ID2, T2), movie_genre(ID2, G2),
                                        ID \== ID1, ID1 \== ID2, ID \== ID2,
                                        format(atom(Z), 'Maybe I could recommend 3 films by genre,\nas a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z1), 'Mmm well, it\'s hard to decide but I could suggest you 3 films by genre,\nas a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z2), 'One...two...three...movies could be the correct answer,\nas a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z3), 'Let me check in the magic ball...here 3 films by genre for you!\nAs a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z4), 'Someone once told me that these 3 films must be seen absolutely!\nAs a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z5), 'I asked my faithful assistant for help and he says that\nas a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z6), 'Oh wait I\'m the one! Sure I can help you!\nAs a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z7), 'Harry Potter\'s magic hat says\nas a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z8), 'This three movies are awesome!\nAs a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z9), 'Everyone has already seen these movies!\nAs a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z10), 'You might like these three movies!\nAs a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]).

response([suggest, action, movie], [ action(Z), action(Z1), action(Z2), action(Z3)]) :-  
                                        movie_range_id(action, L, U), random(L, U, ID), movie_title(ID, T),
                                        format(atom(Z), 'Always live the action, I have the movie for you! "~w"!', [T]),
                                        format(atom(Z1), 'Tired of your usual life? A little action is the one for you! Watch "~w"!', [T]),
                                        format(atom(Z2), 'If you want some adrenaline watch "~w"!', [T]),
                                        format(atom(Z3), 'Once someone said: live every day like the last one! Sooo, watch "~w"!', [T]).

response([suggest, animation, movie], [ action(Z), action(Z1), action(Z2), action(Z3)]) :-  
                                        movie_range_id(animation, L, U), random(L, U, ID), movie_title(ID, T),
                                        format(atom(Z), 'Can I join you in watching an animated film? We can see together "~w"!', [T]),
                                        format(atom(Z1), 'I like your choice! Here a film for you: "~w" ', [T]),
                                        format(atom(Z2), 'it\'s never too late to remember childhood, here is an animated film for you "~w"', [T]),
                                        format(atom(Z3), '"~w" is awsome! Watch it with frinds or family!', [T]).

response([suggest, drama, movie], [ action(Z), action(Z1), action(Z2), action(Z3)]) :-  
                                        movie_range_id(drama, L, U), random(L, U, ID), movie_title(ID, T),
                                        format(atom(Z), 'Hold on to the chair and watch "~w"!', [T]),
                                        format(atom(Z1), 'Lie down comfortably on the sofa and enjoy this drama movie: "~w" ', [T]),
                                        format(atom(Z2), 'Mmm, if you want a drama movie watch this one: "~w"', [T]),
                                        format(atom(Z3), 'Drama? are you sure? well, here it is: "~w"!', [T]).

response([suggest, horror, movie], [ action(Z), action(Z1), action(Z2), action(Z3)]) :-  
                                        movie_range_id(horror, L, U), random(L, U, ID), movie_title(ID, T),
                                        format(atom(Z), 'If you want something really scary "~w"!', [T]),
                                        format(atom(Z1), 'If you are not a scared person you could watch "~w" ', [T]),
                                        format(atom(Z2), 'Well, do you want a terrific evening? Here a movie for you: "~w"', [T]),
                                        format(atom(Z3), 'Why say no if you want to see a horror movie, watch "~w"!', [T]).

response([suggest, musical, movie], [ action(Z), action(Z1), action(Z2), action(Z3)]) :-  
                                        movie_range_id(musical, L, U), random(L, U, ID), movie_title(ID, T),
                                        format(atom(Z), 'Let\'s dance and let\'s get fun with "~w"!', [T]),
                                        format(atom(Z1), 'Do you want to get "~w" ', [T]),
                                        format(atom(Z2), 'If you want to have fun watch "~w" is a very nice movie! You should watch it', [T]),
                                        format(atom(Z3), 'Well, do you want a musical movie right? Let me think a little bit... Here it is: "~w"!', [T]).

response([suggest, romance, movie], [ action(Z), action(Z1), action(Z2), action(Z3)]) :-  
                                        movie_range_id(romance, L, U), random(L, U, ID), movie_title(ID, T),
                                        format(atom(Z), 'Do you feel that little bit of romance in the air? Well it\'s a good moment for a romance movie! Watch "~w"!', [T]),
                                        format(atom(Z1), 'It was a sweet day, wasn\'t it? Watch "~w" as romance movie ', [T]),
                                        format(atom(Z2), '"~w" is a very romantic movie! You should watch it', [T]),
                                        format(atom(Z3), 'It\'s timeeee for Loooove! Watch "~w"', [T]).

response([suggest, science, movie], [ action(Z), action(Z1), action(Z2), action(Z3)]) :-  
                                        movie_range_id(science, L, U), random(L, U, ID), movie_title(ID, T),
                                        format(atom(Z), 'Wait a minute, I take my nerd glasses and look for a science movie for you...Here one for you: "~w"!', [T]),
                                        format(atom(Z1), 'Roger! A science movie for you is coming in one, two, three..."~w"! ', [T]),
                                        format(atom(Z2), 'I\'m traveling on the moon in this moment, maybe I\'m the right person to advise you on a science movie! Watch "~w"!', [T]),
                                        format(atom(Z3), '"~w" is awsome! A science movie is always a good choice!!', [T]).

response([suggest, fantasy, movie], [ action(Z), action(Z1), action(Z2), action(Z3)]) :-  
                                        movie_range_id(fantasy, L, U), random(L, U, ID), movie_title(ID, T),
                                        format(atom(Z), 'Isn\'t there a thrill, suspense, excitement in a fantasy story? Here one for you: "~w"!', [T]),
                                        format(atom(Z1), 'Do you want to escape from reality and live in another world for a moment? I understand you! here\'s a movie for you: "~w" ', [T]),
                                        format(atom(Z2), 'Fantasy? YEEEES my favorite genre! "~w" is a very nice movie! You should watch it', [T]),
                                        format(atom(Z3), '"~w" is awesome! Live a fantasy story for a moment! Enjoy it!', [T]).

response([suggest, G, movies], [ action(Z), action(Z1), action(Z2), action(Z3), action(Z4), action(Z5), action(Z6), action(Z7), action(Z8), action(Z9), action(Z10)]) :-  
                                        movie_range_id(G, L, U),
                                        random(L, U, ID), movie_title(ID, T), movie_genre(ID, G),
                                        random(L, U, ID1), movie_title(ID1, T1), movie_genre(ID1, G1),
                                        random(L, U, ID2), movie_title(ID2, T2), movie_genre(ID2, G2),
                                        ID \== ID1, ID1 \== ID2, ID \== ID2,
                                        format(atom(Z), 'Maybe I could recommend 3 films by genre,\nas a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z1), 'Mmm well, it\'s hard to decide but I could suggest you 3 films by genre,\nas a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z2), 'One...two...three...movies could be the correct answer,\nas a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z3), 'Let me check in the magic ball...here 3 films by genre for you!\nas a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z4), 'Someone once told me that these 3 films must be seen absolutely!\nas a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z5), 'I asked my faithful assistant for help and he says that\nas a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z6), 'Oh wait I\'m the one! Sure I can help you!\nAs a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z7), 'Harry Potter\'s magic hat says\nas a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z8), 'This three movies are aswsome!\nAs a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z9), 'Everyone has already seen these movies!\nAs a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]),
                                        format(atom(Z10), 'You might like these three movies!,\nAs a ~w you could watch "~w",\nor "~w" as ~w,\nor maybe "~w" as ~w ', [G, T, T1, G1, T2, G2]).

response([suggest, tv, show], [ action(Z), action(Z1), action(Z2), action(Z3), action(Z4), action(Z5), action(Z6), action(Z7), action(Z8), action(Z9), action(Z10)]) :-  
                                        random(2000, 2059, ID), tvshow_title(ID, T), tvshow_genre(ID, G), tvshow_network(ID, N),
                                        format(atom(Z), 'Maybe you could see "~w"', [T]),
                                        format(atom(Z1), 'If you like ~w genre you might watch "~w"', [G, T]),
                                        format(atom(Z2), '"~w" is a popular tv show from ~w', [T, N]),
                                        format(atom(Z3), '"~w" is a very interesting tv show, I recommend it', [T]),
                                        format(atom(Z4), 'If you haven\'t done it yet, you can watch "~w"', [T]),
                                        format(atom(Z5), '"~w" from ~w it\s a very rewarded tv show, you can\'t miss it', [T, N]),
                                        format(atom(Z6), '"~w" is a must', [T]),
                                        format(atom(Z7), 'How about "~w"?', [T]),
                                        format(atom(Z8), '"~w" is the serie of the moment', [T]),
                                        format(atom(Z9), 'Shame on you if you have\'t watch "~w" yet. Fix it now!', [T]),
                                        format(atom(Z10), 'Maybe "~w"?', [T]).

response([suggest, tv, shows], [ action(Z), action(Z1), action(Z2), action(Z3), action(Z4), action(Z5), action(Z6), action(Z7), action(Z8), action(Z9), action(Z10)]) :-  
                                        random(2000, 2059, ID), tvshow_title(ID, T), tvshow_genre(ID, G),
                                        random(2000, 2059, ID1), tvshow_title(ID1, T1), tvshow_genre(ID1, G1),
                                        random(2000, 2059, ID2), tvshow_title(ID2, T2), tvshow_genre(ID2, G2),
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

response([suggest, action, tv, show], [ action(Z), action(Z1), action(Z2), action(Z3)]) :-  
                                        tvshow_range_id(action, L, U), random(L, U, ID), tvshow_title(ID, T), tvshow_network(ID, N),
                                        format(atom(Z), 'I also like action! If you have ~w you could watch "~w"', [N, T]),
                                        format(atom(Z1), 'Lots of adrenaline with "~w"', [T]),
                                        format(atom(Z2), 'If you like action, "~w" is for you', [T]),
                                        format(atom(Z3), 'In "~w" there are spectacular fights', [T]).

response([suggest, comedy, tv, show], [ action(Z), action(Z1), action(Z2), action(Z3)]) :-  
                                        tvshow_range_id(comedy, L, U), random(L, U, ID), tvshow_title(ID, T), tvshow_network(ID, N),
                                        format(atom(Z), 'With "~w" you may laugh to death', [T]),
                                        format(atom(Z1), 'If you want a light and fun tv show, "~w" is for you', [T]),
                                        format(atom(Z2), 'When I saw "~w" i was in tears', [T]),
                                        format(atom(Z3), '~w always has good comedies, but "~w" is the best one', [N, T]).

response([suggest, drama, tv, show], [ action(Z), action(Z1), action(Z2), action(Z3)]) :-  
                                        tvshow_range_id(drama, L, U), random(L, U, ID), tvshow_title(ID, T),
                                        format(atom(Z), 'Here "~w" for the drama queen', [T]),
                                        format(atom(Z1), '"~w", serious and deep', [T]),
                                        format(atom(Z2), '"~w", because drama is always a good choice', [T]),
                                        format(atom(Z3), 'I SUGGEST "~w", WITH MY DRAMA VOICE', [T]).

response([suggest, fantasy, tv, show], [ action(Z), action(Z1), action(Z2), action(Z3)]) :-  
                                        tvshow_range_id(fantasy, L, U), random(L, U, ID), tvshow_title(ID, T),
                                        format(atom(Z), '"~w" to escape reality', [T]),
                                        format(atom(Z1), 'It\'s dangerous to go alone. Take this: "~w"', [T]),
                                        format(atom(Z2), '"~w" is amazing !!!!! (Five exclamation marks, the sure sign of an insane mind)', [T]),
                                        format(atom(Z3), 'Now, let me see..."~w"!', [T]).

response([suggest, horror, tv, show], [ action(Z), action(Z1), action(Z2), action(Z3)]) :-  
                                        tvshow_range_id(horror, L, U), random(L, U, ID), tvshow_title(ID, T),
                                        format(atom(Z), 'Hmm? Oh, yes, of course. Here we are "~w"', [T]),
                                        format(atom(Z1), 'You are a brave person. Here "~w"', [T]),
                                        format(atom(Z2), 'If you really insist..."~w"', [T]),
                                        format(atom(Z3), '"~w", so scary', [T]).

response([suggest, science, tv, show], [ action(Z), action(Z1), action(Z2), action(Z3)]) :-  
                                        tvshow_range_id(science, L, U), random(L, U, ID), tvshow_title(ID, T),
                                        format(atom(Z), 'So much universe, and so little time. Start from "~w"', [T]),
                                        format(atom(Z1), 'I\'m sorry, Dave. I\'m afraid I can...Sorry,lapsus. Here the serie: "~w"', [T]),
                                        format(atom(Z2), 'Mmm...maybe you could watch "~w"', [T]),
                                        format(atom(Z3), 'Maybe "~w"', [T]).

response([suggest, G, tv, shows], [ action(Z), action(Z1), action(Z2), action(Z3), action(Z4), action(Z5), action(Z6), action(Z7), action(Z8), action(Z9), action(Z10)]) :-  
                                        tvshow_range_id(G, L, U),
                                        random(L, U, ID), tvshow_title(ID, T), tvshow_genre(ID, G),
                                        random(L, U, ID1), tvshow_title(ID1, T1), tvshow_genre(ID1, G1),
                                        random(L, U, ID2), tvshow_title(ID2, T2), tvshow_genre(ID2, G2),
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
                                        format(atom(Z9), 'Mmm...maybe "~w" or "~w" or "~w"', [T, T1, T2]),
                                        format(atom(Z10), 'Maybe as a ~w you could watch "~w", or "~w", or "~w"', [G, T, T1, T2]).                                       

%response([suggest], X) :- random_member(T, [[suggest, movie], [suggest, movies],[suggest, tv,show],[suggest, tv, shows]]), response(T,X), !.
response([suggest],[ action('i can help you but you have to tell me if you want watch movies or tv shows')]).
response([suggest, movie, suggest], X) :- response([suggest, movie], X), !.
response([suggest, movies, suggest], X) :- response([suggest, movies], X), !.
response([suggest, tv, show, suggest], X) :- response([suggest, tv, show], X), !.
response([suggest, tv, shows, suggest], X) :- response([suggest, tv, shows], X), !.
response([suggest, other, movie], X) :- response([suggest, movie], X), !.
response([suggest, other, movies], X) :- response([suggest, movies], X), !.
response([suggest, other, tv, show], X) :- response([suggest, tv, show], X), !.
response([suggest, other, tv, shows], X) :- response([suggest, tv, shows], X), !.
response([need, movie], X) :- response([suggest, movie], X), !.
response([need, movies], X) :- response([suggest, movies], X), !.
response([need, tv, show], X) :- response([suggest, tv, show], X), !.
response([need, tv, shows], X) :- response([suggest, tv, shows], X), !.
response([need, help, movie], X) :- response([suggest, movie], X), !.
response([need, help, movies], X) :- response([suggest, movies], X), !.
response([need, help, tv, show], X) :- response([suggest, tv, show], X), !.
response([need, help, tv, shows], X) :- response([suggest, tv, shows], X), !.
response([movie], X) :- response([suggest, movie], X), !.
response([movies], X) :- response([suggest, movies], X), !.
response([tv, show], X) :- response([suggest, tv, show], X), !.
response([tv, shows], X) :- response([suggest, tv, shows], X), !.

response([other, movie], X) :- response([other], X), !.
response([other, movies], X) :- response([other], X), !.
response([other, tv, show], X) :- response([other], X), !.
response([other, tv, shows], X) :- response([other], X), !.
response([other], [ action('Sure just ask me again what do you want to watch!')]) :- !.

response([thank], [ action('Your Welcome!'),
                    action('sure! if you need just ask'),
                    action('I\'m here always for you!')]) :- !.

response([seen], [ action('Oh well! ask for another!'),
                   action('I could not have known'),
                   action('Not my problem! ahahah just kidding! ask again!')]) :- !.

response([i_like], [ action('This is my job!'),
                     action('I\'m happy for you'),
                     action('I\'m happy! Your are Welcome!')]) :- !.

response([dont_like], [ action('well, try again!'),
                        action('So sorry, you could ask it again!'),
                        action('I will do better!')]) :- !.
