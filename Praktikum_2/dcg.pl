:- load_files(['../Praktikum_1/beziehungen.pl', './lex.pl']).
satz(SemS, struktur(IP, VP, PP)) -->  ip(IP, AGR),
                                      vp(SemVp, VP, AGR),
                                      pp(SemPP, PP, AGR),
                                      {
                                          SemS=..[SemVp,SemPP,_]
                                      }.
                                      
satz(SemS, struktur(VP, PP)) -->      vp(SemVp, VP, AGR),
                                      pp(SemPP, PP, AGR),
                                      {
                                          SemS=..[SemVp,SemPP,_]
                                      }.

vp(SemVp, vp(V, NP), AGR)   --> v(V, AGR), np(SemVp, NP, AGR).
vp(SemVp, vp(V, PN), AGR)   --> v(V, AGR), pn(PN, AGR), np(SemVp, NP, AGR).
np(SemNp, np(Art, N), AGR)  --> det(Art, AGR), n(SemNp, N, AGR).



pp(_, pp(PN, PP), AGR) --> prae(PN, AGR), pn(PP, AGR).

det(det(Art), AGR)      --> [X], {lex(X, Art, det, AGR)}.
n(SemNp, n(SemNp), AGR) --> [X], {lex(X, SemNp, n, AGR)}.
v(v(V), AGR)            --> [X], {lex(X, V, v, AGR)}.
ip(ip(IP), AGR)         --> [X], {lex(X, IP, ip, AGR)}.
pn(pn(PN), AGR)         --> [X], {lex(X, PN, pn, AGR)}.
prae(prae(Prae), AGR)   --> [X], {lex(X, Prae, prae, AGR)}.