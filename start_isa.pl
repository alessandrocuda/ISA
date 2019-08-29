% File START_ISA.PL
% MIT License
% Copyright (c) [2019] [Alessandro Cudazzo, Giulia Volpi]

% This library provides commonly accepted basic predicates for list manipulation in the Prolog community.
% Some additional list manipulations are built-in.
:- ensure_loaded(library(lists)).

:- reconsult('readatom.pl').
:- reconsult('db.pl').
:- reconsult('sr_rules.pl').
:- reconsult('tr_rules.pl').
:- reconsult('isa.pl').


:- isa.