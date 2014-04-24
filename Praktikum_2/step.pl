:- consult('praktikum1.pl').


% Ergänzungsfrage: Wer ist die Tante von Susanne?
%  -> tante_von(Susanne, X)
% Entscheidungsfrage: Ist Paul der Onkel von Horst?


satz(SemS, struktur(IP, VP, PPP)) -->
        ip(IP, AGR), vp(SemVp, VP, AGR), ppp(SemPPP, PPP, AGR), {SemS=..[SemVp,SemPPP,_]}.

ip(ip(IP), AGR) --> [X], {lex(X, IP, ip, AGR)}.

vp(SemVp, vp(V, NP), AGR) -->
        v(V, AGR), np(SemVp, NP, AGR).

v(v(V), AGR) --> [X], {lex(X,V,v,AGR)}.

np(SemNp, np(Art, N), AGR) -->
        art(Art, AGR), n(SemNp, N, AGR).
np(SemNp, np(N), AGR) -->
        n(SemNp, N, AGR).

art(art(Art), AGR) -->
        [X], {lex(X,Art,art_def, AGR)}.
art(art(Art), AGR) -->
        [X], {lex(X,Art,art_indef, AGR)}.

n(SemNp, n(SemNp), AGR) --> [X], {lex(X, SemNp, n, AGR)}.

%Präpositionalphrase
ppp(SemPPP, ppp(PP, NP), AGR) --> pp(PP, AGR), np(SemPPP,NP, AGR).
pp(pp(PP), AGR) --> [X], {lex(X, PP, pp, AGR)}.




%%%% LEXICON

% ip: Interrogativpronomen
lex(wer, wer, ip, agr(_, _)).
% v: Verb
lex(ist, sein, v, agr(sg, 3)).
% art_def: bestimmter Artikel
% art_indef: unbestimmter Artikel
lex(die, die, art_def, agr(sg, _)).
lex(die, die, art_def, agr(pl, _)).
lex(ein, ein, art_indef, agr(sg, _)).
% n: Nomen
lex(tante, tante, n, agr(sg, 3)).
lex(susanne, susanne, n, agr(sg, 3)).
% pp: Präposition
lex(von, von, pp, agr(_, _)).
