% P10 (**) Закодировать список с использованием алгоритма RLE:
% Пример:
% 1> p10:encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
% [{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]

-module(p10).

-export([encode/1]).
-import(p05,[reverse/1]).


encode(L) -> reverse(tail_encode([], L)).


tail_encode([{Count, H } | AccT ], [H | T])-> tail_encode([{Count+1, H} | AccT], T);
tail_encode(Acc, [H|T]) -> tail_encode([{1,H}| Acc], T);
tail_encode(Acc, [])-> Acc.