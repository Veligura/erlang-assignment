% P09 (**) Запаковать последовательно следующие дубликаты во вложеные списки:
% Пример:
% 1> p09:pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
% [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]

-module(p09).

-export([pack/1]).
-import(p05,[reverse/1]).



pack(L) -> reverse(tail_pack([], L)).

tail_pack([[H] = AccHead | Acc], [H| T ]) -> tail_pack([[H | AccHead] | Acc], T);
tail_pack([[H | _ ] = AccHead | Acc], [H| T ]) -> tail_pack([[H | AccHead] | Acc], T);
%% What is the solution with the unused variable "H" warning ?
tail_pack([[H | _ ]  | _] = Acc, [ D | T ]) -> tail_pack([[D] | Acc], T);
tail_pack([], [H| T ]) -> tail_pack([[H]], T);
tail_pack(Acc, [])-> Acc.
