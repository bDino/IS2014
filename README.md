IS2014
======

HAW Hamburg - Intelligent Systems

Praktikum 1: Stammbaum

Beispiel Anfrage

onkel(thomas,jenzel).

Praktikum 2: DCG
—————————————————————————————
Beispiel Anfragen an das DCG System

satz(Semantik, Struktur, [wer, ist, die, tante, von, jenzel], []), Semantik, ans(Semantik, _, Antwort, []).
satz(Semantik, Struktur, [ist, thomas, der, onkel, von, jenzel], []), Semantik, ans(Semantik, _, Antwort, []).

Praktikum 3: Numb3ers
—————————————————————————————

Konzept:
Eine vorgegebene Zielzahl will durch das rauspicken von Zahlen aus einem gegebenem Zahlenpool erreicht werden. Der Spieler der näher an der Zielzahl ist, gewinnt. Gespielt wird rundenbasiert (Best of 3).

Praktium 4: Sudoku solver
—————————————————————————————

1. compile ‘sudoku_solver.pl’

2. Run solve([
	[6,_,_,7,_,_,5,_,_],
	[_,2,8,_,_,_,_,9,_],
	[_,_,_,6,4,_,3,_,_],
	[7,4,_,_,_,_,_,2,_],
	[_,_,1,_,_,_,1,_,_],
	[_,5,_,_,_,_,3,7,_],
	[_,_,3,_,7,6,_,_,_],
	[_,_,_,_,_,_,1,9,_],
	[_,_,4,_,_,5,_,_,8]])