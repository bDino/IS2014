:-begin_tests(beziehungen).
:-consult(beziehungen).

% Eltern test
test(eltern_ej) :- eltern(elsbeth, jenzel), eltern(elsbeth, katrin), eltern(elsbeth, ulf), eltern(elsbeth, frauke).
test(eltern_wj) :- eltern(wolfgang, jenzel), eltern(wolfgang, katrin), eltern(wolfgang, ulf), eltern(wolfgang, frauke).
test(eltern_eth) :- eltern(eva, klaas), eltern(eva, ronja), eltern(thomas, ronja), eltern(thomas, klaas).
test(eltern_mr) :- eltern(mia, elsbeth), eltern(mia, eva), eltern(rolf, eva), eltern(rolf, elsbeth).

test(eltern_f_er, [fail]) :- eltern(elsbeth, ronja) ; eltern(elsbeth, klaas).
test(eltern_f_wr, [fail]) :- eltern(wolfgang, ronja) ; eltern(wolfgang, klaas).
test(eltern_f_eva, [fail]) :- eltern(eva, jenzel) ; eltern(eva, katrin) ; eltern(eva, ulf) ; eltern(eva, frauke).
test(eltern_f_th, [fail]) :- eltern(thomas, jenzel) ; eltern(thomas, katrin) ; eltern(thomas, ulf) ; eltern(thomas, frauke).
test(eltern_f_mr, [fail]) :- eltern(rolf, wolfgang) ; eltern(rolf, thomas) ; eltern(mia, wolfgang) ; eltern(mia, thomas) ; eltern(mia, jenzel) ; eltern(rolf, klaas).
test(eltern_f_reverse, [fail]) :- eltern(katrin, elsbeth) ; eltern(frauke, mia) ; eltern(ulf, wolfgang) ; eltern(jenzel, eva).
test(eltern_f_other, [fail]) :- eltern(katrin, jenzel) ; eltern(katrin, klaas) ; eltern(jenzel, ronja) ; eltern(frauke, ulf).


% Geschwister test

test(geschwister_m) :- geschwister(jenzel, katrin), geschwister(jenzel, frauke), geschwister(jenzel, ulf),
                                           geschwister(katrin, jenzel), geschwister(katrin, frauke), geschwister(katrin, ulf),
                                           geschwister(frauke, jenzel), geschwister(frauke, katrin), geschwister(frauke, ulf),
                                           geschwister(ulf, jenzel), geschwister(ulf, frauke), geschwister(ulf, katrin).

test(geschwister_l) :- geschwister(ronja, klaas), geschwister(klaas, ronja).

test(geschwister_f, [fail]) :- geschwister(jenzel, klaas) ; geschwister(ronja, katrin) ; geschwister(jenzel, elsebeth) ; geschwister(thomas, rolf) ; 
                                           geschwister(wolfgang, klaas) ; geschwister(mia, eva) ; geschwister(rolf, mia) ; geschwister(elsbeth, wolfgang) ; 
                                           geschwister(wolfgang, thomas).


% Ehe test
test(verheiratet) :- verheiratet(mia, rolf), verheiratet(rolf, mia), verheiratet(elsbeth, wolfgang), verheiratet(wolfgang, elsbeth), verheiratet(thomas, eva), verheiratet(eva, thomas).

test(verheiratet_f, [fail]) :- verheiratet(mia, wolfgang) ; verheiratet(elsbeth, thomas) ; verheiratet(eva, rolf) ; verheiratet(katrin, jenzel) ; verheiratet(ulf, ronja) ; verheiratet(frauke, rolf).


% Onkel test
test(onkel_th) :- onkel(thomas, jenzel), onkel(thomas, katrin), onkel(thomas, frauke), onkel(thomas, ulf).
test(onkel_w) :- onkel(wolfgang, klaas), onkel(wolfgang, ronja).

test(onkel_f_th, [fail]) :- onkel(thomas, eva) ; onkel(thomas, mia) ; onkel(thomas, klaas).
test(onkel_f_wg, [fail]) :- onkel(wolfgang, elsbeth) ; onkel(wolfgang, rolf) ; onkel(wolfgang, thomas) ; onkel(wolfgang, jenzel).
test(onkel_f_oth, [fail]) :- onkel(jenzel, wolfgang) ; onkel(katrin, klaas) ; onkel(klaas, ronja) ; onkel(ulf, rolf).

% Tante test
test(tante_ev) :- tante(eva, jenzel), tante(eva, ulf), tante(eva, katrin), tante(eva, frauke).
test(tante_els) :- tante(elsbeth, klaas), tante(elsbeth, ronja).

test(tante_f, [fail]) :- tante(jenzel, katrin) ; tante(eva, klaas) ; tante(mia, elsbeth) ; tante(ronja, klaas) ; tante(ronja, jenzel) ; tante(wolfgang, elbeth).

% Cousin / Cousine test

test(cousin_menzel) :- cousin(jenzel, klaas), cousin(jenzel, ronja), cousin(ulf, klaas), cousin(ulf, ronja).
test(cousin_laender) :- cousin(klaas, katrin), cousin(klaas, frauke), cousin(klaas, jenzel), cousin(klaas, ulf).


test(cousin_f, [fail]) :- cousin(wolfgang, jenzel) ; cousin(jenzel, katrin) ; cousin(rolf, klaas) ; cousin(klaus, elsbeth) ; cousin(ulf, eva).


% Halb geschwister

test(halb_menzel) :- hgeschwister(jenzel, hansi), hgeschwister(ulf, hansi), hgeschwister(hansi, katrin), hgeschwister(hansi, frauke).
test(halb_menzel_f, [fail]) :- hgeschwister(jenzel, jenzel) ; hgeschwister(jenzel, ulf) ; hgeschwister(jenzel, katrin) ; hgeschwister(hansi, elsbeth) ; hgeschwister(hansi, mia).
