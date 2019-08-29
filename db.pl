% File DB.PL
% MIT License
% Copyright (c) [2019] [Alessandro Cudazzo, Giulia Volpi]

%Movies (id 1000-1099)
movie_range_id(action, 1000, 1009).
movie_range_id(animation, 1010, 1019).
movie_range_id(comedy, 1020, 1029).
movie_range_id(drama, 1030, 1039).
movie_range_id(horror, 1040, 1049).
movie_range_id(musical, 1050, 1059).
movie_range_id(romance, 1060, 1069).
movie_range_id(science, 1070, 1079).
movie_range_id(fantasy, 1080, 1089).
movie_range_id(sport, 1090, 1099).

%Action
movie(1000, 'Black Panter', action, 2018).
movie(1001, 'Mad Max: Fury Road', action, 2015).
movie(1002, 'Wonder Woman', action, 2017).
movie(1003, 'Jaws', action, 1975).
movie(1004, 'Logan', action, 2017).
movie(1005, 'No Country for Old Men', action, 2007).
movie(1006, 'Gostbusters', action, 1984).
movie(1007, 'Saving Private Ryan', action, 1998).
movie(1008, 'Jurassic Park', action, 1993).
movie(1009, 'Who Framed Roger Rabbit', action, 1988).

%Animation
movie(1010, 'Princess Mononoke', animation, 1999).
movie(1011, 'Snow White and the Seven Dwarfs', animation, 1937).
movie(1012, 'Toy Story', animation, 1995).
movie(1013, '101 Dalmatians', animation, 1961).
movie(1014, 'The Nightmare Before Christmas', animation, 1993).
movie(1015, 'The Iron Giant', animation, 1999).
movie(1016, 'The Lion King', animation, 1994).
movie(1017, 'My Neighbor Totoro', animation, 1988).
movie(1018, 'Fantasia', animation, 1940).
movie(1019, 'Sleeping Beauty', animation, 1959).

%Comedy
movie(1020, 'Beetlejuice', comedy, 1988).
movie(1021, 'Mean Girls', comedy, 2004).
movie(1022, 'Meet the Parents', comedy, 2001).
movie(1023, '22 Jump Street', comedy, 2014).
movie(1024, 'The Hangover', comedy, 2009).
movie(1025, 'The Big Sick', comedy, 2017).
movie(1026, 'The Death of Stalin', comedy, 2018).
movie(1027, 'The Disaster Artist', comedy, 2017).
movie(1028, 'Roman Holiday', comedy, 1953).
movie(1029, 'Playtime', comedy, 1988).

%Drama
movie(1030, 'Moonlight', drama, 2016).
movie(1031, 'Casablanca', drama, 1942).
movie(1032, '12 Years a Slave', drama, 2016).
movie(1033, 'Selma', drama, 2014).
movie(1034, 'The Godfather', drama, 1972).
movie(1035, 'Call Me By Your Name', drama, 2018).
movie(1036, 'Boyhood', drama, 2014).
movie(1037, 'Manchester by the Sea', drama, 2016).
movie(1038, 'Taxi Driver', drama, 1976).
movie(1039, 'Vertigo', drama, 1958).

%Horror
movie(1041, 'Shaun of the Dead', horror, 2004).
movie(1042, 'Psycho', horror, 1960).
movie(1043, 'The Babadook', horror, 2014).
movie(1044, 'It Follows', horror, 2015).
movie(1045, 'Hereditary', horror, 2018).
movie(1046, 'The Shining', horror, 1980).
movie(1047, 'Halloween', horror, 1978).
movie(1048, 'The Birds', horror, 1963).
movie(1049, 'The Evil Dead', horror, 1981).

%Musical
movie(1050, 'The Wizard of Oz', musical, 1939).
movie(1051, 'La La Land', musical, 2016).
movie(1052, 'An American in Paris', musical, 1951).
movie(1053, 'Les Misérables', musical, 2012).
movie(1054, 'Mary Poppins', musical, 1964).
movie(1055, 'Hairspray', musical, 1988).
movie(1056, 'Grease', musical, 1978).
movie(1057, 'Chicago', musical, 2002).
movie(1058, 'Mamma Mia!', musical, 2008).
movie(1059, 'Aladdin', musical, 2019).

%Romance
movie(1060, 'Her', romance, 2013).
movie(1061, 'Titanic', romance, 1997).
movie(1062, 'Sense and Sensibility', romance, 1995).
movie(1063, 'Lost in Translation', romance, 2003).
movie(1064, 'Your Name', romance, 2017).
movie(1065, 'Shakespear in Love', romance, 1998).
movie(1066, 'Eternal Sunshine Of The Spotless Mind', romance, 2004).
movie(1067, 'Midnight in Paris', romance, 2011).
movie(1068, 'Gone with the Wind', romance, 1939).
movie(1069, 'Carol', romance, 2016).

%Science
movie(1070, 'E.T. The Extra - Terrestrial', science, 1982).
movie(1071, 'Arrival', science, 2016).
movie(1072, 'Snowpiercer', science, 2014).
movie(1073, 'Alien', science, 1979).
movie(1074, 'Blade Runner', science, 1982).
movie(1075, 'Star Wars: Episode IV - A New Hope', science, 1977).
movie(1076, 'Back to the Future', science, 1985).
movie(1077, '2001: A Space Odyssey', science, 1968).
movie(1078, 'Star Wars: Episode V - The Empire Strikes Back', science, 1980).
movie(1079, 'District 9', science, 2009).

%Fantasy
movie(1081, 'Dark Crystal', fantasy, 1982).
movie(1082, 'Dragonheart', fantasy, 1996).
movie(1083, 'Stardust', fantasy, 2007).
movie(1084, 'Alice in Wonderland', fantasy, 2010).
movie(1085, 'Labyrint', fantasy, 1986).
movie(1086, 'Pinocchio', fantasy, 1940).
movie(1087, 'The Lord of the Rings - The Fellowship of the Rings', fantasy, 2001).
movie(1088, 'The Lord of the Rings - The Two Towers', fantasy, 2002).
movie(1089, 'The Lord of the Rings - The Return of the King', fantasy, 2003).

%Sport
movie(1090, 'Hoop Dreams', sport, 1994).
movie(1091, 'Rocky', sport, 1976).
movie(1092, 'Surfwise', sport, 2007).
movie(1093, 'Sugar', sport, 2008).
movie(1094, 'Boxing Gym', sport, 2010).
movie(1095, 'Field of Dreams', sport, 1989).
movie(1096, 'Tyson', sport, 2009).
movie(1097, 'The Armstrong Lie', sport, 2013).
movie(1098, 'Invictus', sport, 2009).
movie(1099, 'The Blind Side', sport, 2009).

%Predicates to retrieve the vaues of movies
movie_title(ID, T) :- movie(ID, T, _, _).
movie_genre(ID, G) :- movie(ID, _, G, _).
movie_year(ID, Y) :- movie(ID, _, _, Y).
movie(T) :- movie(_, T, _, _).
movie_per_genre(T, G) :- movie(_, T, G, _).

display_movie(ID) :-
    movie(ID, T, G, Y),
    write([ID, T, G, Y]),
    nl.

%TVShows (id 2000-2059)
tvshow_range_id(action, 2000, 2009).
tvshow_range_id(comedy, 2010, 2019).
tvshow_range_id(drama, 2020, 2029).
tvshow_range_id(fantasy, 2030, 2039).
tvshow_range_id(horror, 2040, 2049).
tvshow_range_id(science, 2050, 2059).

%Action
tvshow(2000, 'Daredevil', action, 'Netflix').
tvshow(2001, 'The Punisher', action, 'Netflix').
tvshow(2002, 'Jessica Jones', action, 'Netflix').
tvshow(2003, 'Gotham', action, 'Netflix').
tvshow(2004, 'The Last Kingdom', action, 'Netflix').
tvshow(2005, 'Vikings', action, 'Netflix').
tvshow(2006, 'Legion', action, 'FX').
tvshow(2007, 'Arrow', action, 'The CW').
tvshow(2008, 'The Flash', action, 'The CW').
tvshow(2009, 'Baywatch', action, 'NBC').

%Comedy
tvshow(2010, 'Fleabag', comedy, 'Amazon Prime Video').
tvshow(2011, 'Barry', comedy, 'HBO').
tvshow(2012, 'Better Things', comedy, 'FX').
tvshow(2013, 'Louie', comedy, 'FX').
tvshow(2014, 'Jane the Virgin', comedy, 'The CW').
tvshow(2015, 'Rick and Morty', comedy, 'Netflix').
tvshow(2016, 'Silicon Valley', comedy, 'HBO').
tvshow(2017, 'The Big Bang Theory', comedy, 'CBS').
tvshow(2018, 'Community', comedy, 'NBC').
tvshow(2019, 'Friends', comedy, 'NBC').

%Drama
tvshow(2020, 'Mrs.Wilson', drama, 'PBS').
tvshow(2021, 'All American', drama, 'The CW').
tvshow(2022, 'Killing Eve', drama, 'BBC America').
tvshow(2023, 'The Good Fight', drama, 'CBS').
tvshow(2024, 'When They See Us', drama, 'Netflix').
tvshow(2025, 'Pose', drama, 'FX').
tvshow(2026, 'Succession', drama, 'HBO').
tvshow(2027, 'This is Us', drama, 'NBC').
tvshow(2028, 'Chernobyl', drama, 'HBO').
tvshow(2029, 'Mindhunter', drama, 'Netflix').

%Fantasy
tvshow(2030, 'Game of Thrones', fantasy, 'HBO').
tvshow(2031, 'The Magicians', fantasy, 'Syfy').
tvshow(2032, 'Once Upon a Time', fantasy, 'ABC').
tvshow(2033, 'Outlander', fantasy, 'Starz').
tvshow(2034, 'The Shannara Chronicles', fantasy, 'MTV').
tvshow(2035, 'The Witcher', fantasy, 'Netflix').
tvshow(2036, 'American Gods', fantasy, 'Starz').
tvshow(2037, 'Shadowhunter', fantasy, 'Freeform').
tvshow(2038, 'Disincanto', fantasy, 'Netflix').
tvshow(2039, 'Charmed', fantasy, 'The CW').

%Horror
tvshow(2040, 'American Horror Story', horror, 'FX').
tvshow(2041, 'Hill House', horror, 'Netflix').
tvshow(2042, 'Stranger Things', horror, 'Netflix').
tvshow(2043, 'Penny Dreadful', horror, 'Netflix').
tvshow(2044, 'Ash vs Evil Dead', horror, 'Starz').
tvshow(2045, 'Supernatural', horror, 'The CW').
tvshow(2046, 'The Enfield Haunting', horror, 'Sky Living').
tvshow(2047, 'Dead Set', horror, 'Channel 4').
tvshow(2048, 'The Walking Dead', horror, 'AMC').
tvshow(2049, 'Hannibal', horror, 'NBC').

%Science
tvshow(2050, 'The Expanse', science, 'Syfy').
tvshow(2051, 'Killjoys', science, 'Syfy').
tvshow(2052, 'Dark Matter', science, 'Syfy').
tvshow(2053, 'Westworld', science, 'HBO').
tvshow(2054, 'The X-Files', science, 'Fox').
tvshow(2055, 'Doctor Who', science, 'BBC One').
tvshow(2056, 'Dark', science, 'Netflix').
tvshow(2057, 'The OA', science, 'Netflix').
tvshow(2058, 'Utopia', science, 'Channel 4').
tvshow(2059, 'Battlestar Galactica', science, 'Sci Fi Channel').

%Predicates to retrieve the vaues of tv shows
tvshow_title(ID, T) :- tvshow(ID, T, _, _).
tvshow_genre(ID, G) :- tvshow(ID, _, G, _).
tvshow_network(ID, N) :- tvshow(ID, _, _, N).
tvshow(T) :- tvshow(_, T, _, _).
tvshow_per_genre(T, G) :- tvshow(_, T, G, _).
tvshow_per_network(T, N) :- tvshow(_, T, _, N).

display_tvshow(ID) :-
    tvshow(ID, T, G, N),
    write([ID, T, G, N]),
    nl.