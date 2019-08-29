% File SR_RULES.PL
% MIT License
% Copyright (c) [2019] [Alessandro Cudazzo, Giulia Volpi]

% % rules order matters!
% phase 1
sr([what,can,you,do,for,me| X], [help| X]).
sr([what,do,you,do | X], [help| X]).
sr([what,can,i,see | X], [help_as_suggest| X]).
sr([what, can, i, watch | X], [help_as_suggest| X]).
sr([already, seen, it | X], [seen | X]).
sr([i, don, '\'', t, like, it | X], [dont_like | X]).
sr([i, don, '\'', t, love, it | X], [dont_like | X]).
sr([i, do, not, like, it | X], [dont_like | X]).
sr([i, do, not, love, it | X], [dont_like | X]).
sr([i, like, it | X], [i_like | X]).
sr([i, love, it | X], [i_like | X]).
sr([like, it | X], [i_like | X]).
sr([love, it | X], [i_like | X]).
sr([oh, cool | X], [i_like | X]).
sr([cool | X], [i_like | X]).
sr([oh, amazing | X], [i_like | X]).
sr([amazing | X], [i_like | X]).
sr([wow | X], [i_like | X]).

sr([saw | X], [seen|X]).
sr(['hello!'|X],[hello|X]).
sr(['hello,'|X],[hello|X]).
sr(['hello.'|X],[hello|X]).
sr([hi|X],[hello|X]).
sr(['hi!'|X],[hello|X]).
sr(['hi,'|X],[hello|X]).
sr(['hi.'|X],[hello|X]).
sr([cheers|X],[hello|X]).
sr(['cheers,'|X],[hello|X]).
sr(['cheers.'|X],[hello|X]).
sr(['cheers!'|X],[hello|X]).
sr([how, are, you|X],[how_bot|X]).
sr([how, have, you|X],[how_bot|X]).
sr([doing | X], X).
sr([been | X], X).
sr([how,'\'',s, everything| X ],[how_bot|X]).
sr([how, is, everything| X ],[how_bot|X]).
sr([how,'\'',s,it,going| X ],[how_bot|X]).
sr([how, is,it,going| X ],[how_bot|X]).
sr([how,are,things,going| X ],[how_bot|X]).
sr([what,are,you,up,to| X ],[how_bot|X]).
sr([whassup| X ],[how_bot|X]).
sr([what,'\'', s, up| X ],[how_bot|X]).
sr([what, is, up| X ],[how_bot|X]).
sr([what,'\'', s, new| X ],[how_bot|X]).
sr([what, is, new | X ],[how_bot|X]).
sr([what,'\'', s, new| X ],[how_bot|X]).
sr([what,'\'', s, going, on| X ],[how_bot|X]).
sr([what, is, going, on| X ],[how_bot|X]).
sr([who, are, you | X ],[who_bot|X]).
sr([who, is, there | X ],[who_bot|X]).
sr([who, '\'',s, there | X ],[who_bot|X]).
sr([who, am,i | X ],[who_you_are|X]).

sr([what, about | X], [suggest | X]).
sr([what, movie| X], [suggest, movie | X]).
sr([what, film| X], [suggest, movie | X]).
sr([what, movies| X], [suggest, movies | X]).
sr([what, films| X], [suggest, movies | X]).
sr([what, tv, show| X], [suggest, tv, show | X]).
sr([what, tv, shows| X], [suggest, tv, shows | X]).
sr([what, tv, serie| X], [suggest, tv, show | X]).
sr([what, television, serie| X], [suggest, tv, show | X]).
sr([what, tv, series| X], [suggest, tv, shows | X]).
sr([what, television, series| X], [suggest, tv, shows | X]).
sr([can, you | X], X).
sr([may, you| X], X).
sr([help, me | X], [help | X]).
sr([may, you, help, me | X], [help | X]).
sr([do, you | X], X).
sr([tv, serie | X],[tv, show | X]).
sr([television, serie | X],[tv, show | X]).
sr([television, show | X],[tv, show | X]).
sr([tv, series | X],[tv, shows | X]).
sr([television, series | X],[tv, shows | X]).
sr([television, shows | X],[tv, shows | X]).
sr([serie | X],[tv, show | X]).
sr([series | X],[tv, shows| X]).
sr([film | X],[movie | X]).
sr([films | X],[movies | X]).
sr([recommend | X], [suggest | X]).
sr([advice | X], [suggest | X]).
sr([tell | X], [suggest | X]).
sr([propose | X], [suggest | X]).
sr([about | X], [suggest | X]).
%sr([help | X], [suggest | X]).
sr([can | X], X).
sr([to | X], X).
sr([a | X], X).
sr([me | X], X).
sr([somethings | X], X).
sr([something | X], X).
sr([choose | X], X).
sr([some | X], X).
sr([i,'\'',d|X], X).
sr([do|X], X).
sr([i|X], X).
sr([see | X],  X).
sr([watch | X],  X).
sr([what | X], X).
sr([like | X], [suggest | X]).
sr([love | X], [suggest | X]).
sr([would | X], X).
sr([want | X], [suggest |X]).
sr([wanted | X], [suggest |X]).

sr([ok, thanks, you| X],[thank | X]).
sr([ok, thank, you| X],[thank | X]).
sr([ok, thanks| X],[thank | X]).
sr([ok, thank| X],[thank | X]).
sr([thanks| X],[thank | X]).
sr([another| X],[other | X]).

sr([, | X], X).
sr([; | X], X).
sr([! | X], X).
sr([? | X], X).
sr(['.' | X], X).