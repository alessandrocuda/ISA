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
sr([help | X], [suggest | X]).
sr([can | X], X).
sr([to | X], X).
sr([a | X], X).
sr([choose | X], X).
sr(['i\'d'|X], X).
sr([do|X], X).
sr([i|X], X).
sr([see | X],  X).
sr([watch | X],  X).
sr([what | X], X).
sr([like | X], [suggest | X]).
sr([would | X], X).





sr([, | X], X).
sr([; | X], X).
sr([! | X], X).
sr([? | X], X).
sr(['.' | X], X).





% % rules order matters!
% phase 1
sr([ehi, ciao|X],[saluto|X]).
sr([ciao|X],[saluto|X]).
sr([ehi|X],[saluto|X]).
sr([ohi|X],[saluto|X]).
sr([salve|X],[saluto|X]).
sr([come, stai|X],[come_sto|X]).
sr([come, te, la, passi|X],[come_sto|X]).
sr([come, va|X],[come_sto|X]).
sr([io, sono, Y|X],[tu_sei, Y|X]):- name(Y).
sr([,|X],X).
sr([.|X],X).
sr([!|X],X).
sr([?|X],X).
% phase 2
sr([saluto, come_sto|X],[come_sto|X]).
sr([saluto, tu_sei|X],[tu_sei|X]).