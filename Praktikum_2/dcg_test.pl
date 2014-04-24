:-begin_tests(dcg).
:-consult(dcg).

% Ergänzungsfragen
test(egPhrase_ohne_art_tvj) :- satz(Sem,Strukt, [wer, ist, tante, von, jenzel], []), Sem.
test(egPhrase_ohne_art_ovj) :- satz(Sem,Strukt, [wer, ist, onkel, von, jenzel], []), Sem.
test(egPhrase_mit_art_tvj) :- satz(Sem,Strukt, [wer, ist, die, tante, von, jenzel], []), Sem.
test(egphrase_mit_art_ovj) :- satz(Sem,Strukt, [wer, ist, onkel, von, jenzel], []), Sem.

% Entscheidungsfragen
test(esPhrase_mit_art_tvj) :- satz(Sem,Strukt, [ist, thomas, der, onkel, von, jenzel], []), Sem.
test(esPhrase_mit_art_ovf) :- satz(Sem,Strukt, [ist, thomas, der, onkel, von, frauke], []), Sem.

% FAIL
test(esPhrase_ohne_art_tvjF, [fail]) :- satz(Sem,Strukt, [ist, thomas, der, onkel, von, elsbeth], []), Sem.
test(esPhrase_ohne_art_ovjF, [fail]) :- satz(Sem,Strukt, [ist, thomas, der, onkel, von, elfriede], []), Sem.
test(esPhrase_mit_art_tvjF, [fail]) :- satz(Sem,Strukt, [ist, thomas, der, onkel, von, thomas], []), Sem.
test(esphrase_mit_art_ovjF, [fail]) :- satz(Sem,Strukt, [ist, thomas, der, onkel, von, ronja], []), Sem.
