% P07 (**) Выровнять структуру с вложеными списками:
% Пример:
% 1> p07:flatten([a,[],[b,[c,d],e]]).
% [a,b,c,d,e]

-module(p07).
-export([flatten/1]).


flatten(X)               -> tail_flatten(X,[]).

tail_flatten([],Acc)          -> Acc;
tail_flatten([[]|T],Acc)      -> tail_flatten(T, Acc);
tail_flatten([[_|_]=H|T],Acc) -> tail_flatten(T, tail_flatten(H,Acc));
tail_flatten([H|T],Acc)       -> tail_flatten(T,Acc++[H]) .