:-begin_tests(beziehungen).
:-consult(beziehungen).

% Eltern test
test(eltern_ej) :- eltern(elsbeth, jenzel), eltern(elsbeth, katrin), eltern(elsbeth, ulf), eltern(elsbeth, frauke).
test(eltern_wj) :- eltern(wolfgang, jenzel), eltern(wolfgang, katrin), eltern(wolfgang, ulf), eltern(wolfgang, frauke).
test(eltern_eth) :- eltern(eva, klaas), eltern(eva, ronja), eltern(thomas, ronja), eltern(thomas, klaas).


test(eltern_f_er, [fail]) :- eltern(elsbeth, ronja) ; eltern(elsbeth, klaas).
test(eltern_f_wr, [fail]) :- eltern(wolfgang, ronja) ; eltern(wolfgang, klaas).
test(eltern_f_eva, [fail]) :- eltern(eva, jenzel) ; eltern(eva, katrin) ; eltern(eva, ulf) ; eltern(eva, frauke).
test(eltern_f_th, [fail]) :- eltern(thomas, jenzel) ; eltern(thomas, katrin) ; eltern(thomas, ulf) ; eltern(thomas, frauke).


:-end_tests(beziehungen).
