:- load_files(['../Praktikum_1/beziehungen.pl', './lex.pl']).
%satz(SemS, struktur(IP, VP, PP)) -->  ip(IP, AGR),
%                                      vp(SemVp, VP, AGR),
%                                      pp(SemPP, PP, AGR),
%                                      {
%                                          SemS=..[SemVp,SemPP,_]
%                                      }.
%                                      
%satz(SemS, struktur(VP, PP)) -->      vp(SemVp, VP, AGR),
%                                      pp(SemPP, PP, AGR),
%                                      {
%                                          SemS=..[SemVp,SemPP,_]
%                                      }.

% Wer ist die Tante von Emma?
satz(SemS, struktur(IP, VP, PP)) --> ip(IP, AGR), 
									 vp(SemVP, VP, AGR),
									 pp(SemPP,PP, AGR),
									 {
									 	SemVP = [_,_,SemPP], 
									 	SemS =.. SemVP
									 }.	
% Ist Rolf der Onkel von Emma?							
satz(SemS, struktur(V, PN, NP, PP)) --> v(V, AGR), 
										pn(SemPN, PN, AGR), 
										np(SemNP, NP, AGR), 
										pp(SemPP, PP, AGR),
										{
											SemS =.. [SemNP, SemPN, SemPP]
										}.

ans(Sem, ans(PN,V,NP,PP)) 		 --> pn(SemPN, PN, AGR), 
									 v(V, AGR),
									 np(SemNP, NP, AGR), 
									 pp(SemPP,PP, AGR), 
									 { 
									 	Sem =.. [SemNP,SemPN, SemPP] 
									 }.

vp([SemNP, _, _], vp(V,NP), AGR) --> v(V, AGR), np(SemNP, NP, _).			% Verbalphrase
np(SemN, np(DET, N), AGR) 		 --> det(DET, AGR), n(SemN, N, AGR).		% Nominalphrase
np(SemN, np(N), AGR) 			 --> n(SemN, N, AGR).
pp(SemPN, pp(PRAE, PN), AGR) 	 --> prae(PRAE, AGR), pn(SemPN, PN, AGR).	% Präpositionalphrase

% --- Terminale ---
n(SemN, n(SemN), AGR) 			 --> [X], {lex(X, SemN, n, AGR)}.		% Nomen
v(v(V), AGR) 					 --> [X], {lex(X, V, v, AGR)}.			% Verben
det(det(DET), AGR) 				 --> [X], {lex(X, DET, det, AGR)}.		% Artikel
ip(ip(IP), AGR) 				 --> [X], {lex(X, IP, ip, AGR)}.		% Interrogativpronomen
prae(prae(PRAE), AGR) 			 --> [X], {lex(X, PRAE, prae, AGR)}.	% Präposition
pn(SemPN, pn(SemPN), AGR) 		 --> [X], {lex(X, SemPN, pn, AGR)}.		% Eigenname