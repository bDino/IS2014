/* Fragestellungen
Wer ist die Tante von X?
Wer ist Tante von X?

Entscheidungsfragen:
Ist Rolf der Onkel von Emma?
*/

lex(tante, tante, n, agr(sg,3)).
lex(onkel, onkel, n, agr(sg,3)).
lex(ist, ist, det, agr(sg,_)).
lex(der, der, det, agr(sg,_)).
lex(von, von, prae, agr(sg,_)).
lex(wer, wer, ip, agr(sg,_)).
