:-begin_tests(dcg).
:-consult(dcg).

% Ergänzungsfragen
test(egPhrase_ohne_art_tvj) :- satz(Sem,Strukt, [wer, ist, tante, von, jenzel], []).
test(egPhrase_ohne_art_ovj) :- satz(Sem,Strukt, [wer, ist, onkel, von, jenzel], []).
test(egPhrase_mit_art_tvj) :- satz(Sem,Strukt, [wer, ist, die, tante, von, jenzel], []).
test(egphrase_mit_art_ovj) :- satz(Sem,Strukt, [wer, ist, onkel, von, jenzel], []).

% Entscheidungsfragen
test(esPhrase_mit_art_tvj) :- satz(Sem,Strukt, [ist, thomas, der, onkel, von, jenzel], []).
test(esPhrase_mit_art_ovf) :- satz(Sem,Strukt, [ist, thomas, der, onkel, von, frauke], []).

% FAIL
test(esPhrase_ohne_art_tvjF, [fail]) :- satz(Sem,Strukt, [ist, thomas, der, onkel, von, elsbeth], []).
test(esPhrase_ohne_art_ovjF, [fail]) :- satz(Sem,Strukt, [ist, thomas, der, onkel, von, elfriede], []).
test(esPhrase_mit_art_tvjF, [fail]) :- satz(Sem,Strukt, [ist, thomas, der, onkel, von, thomas], []).
test(esphrase_mit_art_ovjF, [fail]) :- satz(Sem,Strukt, [ist, thomas, der, onkel, von, ronja], []).
