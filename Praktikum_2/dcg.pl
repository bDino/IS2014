:- load_files(['../Praktikum_1/beziehungen.pl']).

lex(woman, woman, n,   agr(sg,3)). lex(women, woman, n,   agr(pl,3)). lex(man,   man,   n,   agr(sg,3)). lex(men,   man,   n,   agr(pl,3)). lex(apple, apple, n,   agr(sg,3)). lex(apples,apple, n,   agr(pl,3)). lex(blues, blues, n,   agr(_,3)). lex(dog,   dog,   n,   agr(sg,3)). lex(dogs,  dog,   n,   agr(pl,3)). lex(the,   the,   det, agr(_,3)). lex(bites, bite,  v,   agr(sg,3)). lex(bite,  bite,  v,   agr(pl,_)). lex(eats,  eat,   v,   agr(sg,3)). lex(eat,   eat,   v,   agr(pl,_)). lex(loves, love,  v,   agr(sg,3)). lex(love,  love,  v,   agr(pl,_)). lex(sings, sing,  v,   agr(sg,3)). lex(sing,  sing,  v,   agr(pl,_)). lex(paul,  paul,  pn,  agr(sg,3)). lex(paula, paula, pn,  agr(sg,3)). lex(john,  john,  pn,  agr(sg,3)). 

s(SemS,s(NP,VP,PP))        --> np(SemNP,NP,AGR), 
							   vp(SemVP,VP,AGR),
							   pp(SemPP, PP, AGR), 
							   {
								SemVP = [_,SemNP|_],
								SemS =.. SemVP
							   }. 

s(SemS,s(NP,VP))        --> np(SemNP,NP,AGR), vp(SemVP,VP,AGR),  {SemVP = [_,SemNP|_], SemS =.. SemVP}. 

np(SemN,np(DET,N),AGR)  --> det(DET,AGR), n(SemN,N,AGR).
np(SemN,np(N),AGR)      --> pn(SemN,N,AGR).  
np(SemN,AGR)            --> det(AGR), n(SemN,AGR).
np(SemN,AGR) 		    --> pn(SemN,AGR).  

vp([SemV,_,SemNP],vp(V,NP),AGR) --> v(SemV,V,AGR), np(SemNP,NP,_).
vp([SemV,_],vp(V), AGR)         --> v(SemV,V,AGR). 
vp([SemV,_,SemNP],AGR) 			--> v(SemV,AGR), np(SemNP,_).
vp([SemV,_], AGR) 	   			--> v(SemV,AGR).  

pp(SemP, pp(PRAE, PN), AGR)	--> prae(PRAE, AGR), pn(SemP, PN, AGR).
 
n(SemN,n(SemN),AGR)     --> [X],{lex(X,SemN,n,AGR)}.  
n(SemN,AGR)             --> [X],{lex(X,SemN,n,AGR)}. 

pn(SemPN,pn(SemPN),AGR) --> [X],{lex(X,SemPN,pn,AGR)}.  
pn(SemPN,AGR)           --> [X],{lex(X,SemPN,pn,AGR)}.  

v(SemV,v(SemV),AGR)     --> [X],{lex(X,SemV,v,AGR)}.  
v(SemV,AGR)             --> [X],{lex(X,SemV,v,AGR)}.

det(det(Det),AGR)       --> [X],{lex(X,Det,det,AGR)}. 
det(AGR)                --> [X],{lex(X,_,det,AGR)}.

ip(ip(Ip), AGR)		--> [X], {lex(X,Ip, ip, AGR)}.
ip(AGR)				--> [X], {lex(X, _, ip, AGR)}.

prae(prae(Prae), AGR)   --> [X], {lex(X,Prae, prae, AGR)}.
prae(AGR)				--> [X], {lex(X, _, prae, AGR)}. 


 
  


  
  
 