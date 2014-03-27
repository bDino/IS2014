% Implemtieren von Verwandschaftsbeziehungen
% Alle Teilnehmer: Erste Hierarchie

weiblich(susi).
weiblich(hannelore).
weiblich(siglinde).
maennlich(stefan).
maennlich(hans).
maennlich(olaf).

mutter(siglinde).
mutter(hannelore).
vater(olaf).
vater(hans).
opa(hans).

% Beziehungen

eltern(X,Y):- vater(Y);mutter(Y). 																				% Y ist Elternteil von X
opa(X,Y):- maennlich(Y),eltern(eltern(X,hannelore),Y);eltern(eltern(X,olaf),Y).									% Y ist Opa von X
geschwister(X,Y):- eltern(X,hannelore),eltern(X,olaf),eltern(Y,olaf),eltern(Y,hannelore).						% Y und X geschwister
halb_schwester(X,Y):- weiblich(Y),eltern(X,hannelore),eltern(Y,hannelore);eltern(X,olaf),eltern(Y,olaf).		% Y ist halbschwester von				
vollschwester(X,Y):- weiblich(Y),eltern(X,hannelore),eltern(Y,hannelore);eltern(X,olaf),eltern(Y,olaf).			% Y ist schwester von				
tante(X,Y):- weiblich(Y),geschwister(eltern(X,hannelore));(geschwister(eltern(X,hans))).						% Y ist Tante von X
onkel(X,Y):- maennlich(Y),geschwister(eltern(X,hannelore));(geschwister(eltern(X,hans))).						% Y ist Onkel von X