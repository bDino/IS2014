s(SemS)                	--> np(SemNP,AGR), vp(SemVP,AGR), {SemVP = [_,SemNP|_], SemS =.. SemVP}.
s(SemS,s(NP,VP))        --> np(SemNP,NP,AGR), vp(SemVP,VP,AGR), {SemVP = [_,SemNP|_], SemS =.. SemVP}.  

np(SemN,AGR)           	--> det(AGR), n(SemN,AGR). 
np(SemN,AGR)           	--> pn(SemN,AGR).  
np(SemN,np(DET,N),AGR)  --> det(DET,AGR), n(SemN,N,AGR). 
np(SemN,np(N),AGR)      --> pn(SemN,N,AGR).  

vp([SemV,_,SemNP],AGR) 			--> v(SemV,AGR), np(SemNP,_).
vp([SemV,_], AGR)      			--> v(SemV,AGR).
vp([SemV,_,SemNP],vp(V,NP),AGR) --> v(SemV,V,AGR), np(SemNP,NP,_).
vp([SemV,_],vp(V), AGR)         --> v(SemV,V,AGR).  

%pp(

n(SemN,AGR)            --> [X],{lex(X,SemN,n,AGR)}.  
n(SemN,n(SemN),AGR)    --> [X],{lex(X,SemN,n,AGR)}.  

pn(SemPN,AGR)          --> [X],{maennlich(X);weiblich(X)}.

v(SemV,AGR)            --> [X],{lex(X,SemV,v,AGR)}.  
v(SemV,v(SemV),AGR)    --> [X],{lex(X,SemV,v,AGR)}.

det(AGR)               --> [X],{lex(X,_,det,AGR)}. 
det(det(Det),AGR)      --> [X],{lex(X,Det,det,AGR)}.

ip(AGR)				   --> [X], {lex(X,_, ip, AGR)}.
ip(ip(Ip), AGR)		   --> [X], {lex(X,Ip, ip, AGR)}.

prae(AGR) 			   --> [X], {lex(X,_, prae, AGR)}.
prae(prae(Prae), AGR)  --> [X], {lex(X,Prae, prae, AGR)}.



  
  
 