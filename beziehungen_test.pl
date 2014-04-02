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
:-end_tests(beziehungen).
