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