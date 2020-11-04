% P11 (**) Закодировать список с использованием модифицированого алгоритма RLE:
% Пример:
% 1> p11:encode_modified([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
% [{4,a},b,{2,c},{2,a},d,{4,e}]

-module(p11).
-export([encode_modified/1]).
-import(p05,[reverse/1]).


encode_modified(L)-> reverse(tail_encode_modified([], L)).


tail_encode_modified([H | AccT], [H | T]) -> 
        tail_encode_modified([{2, H} | AccT], T);

tail_encode_modified([{Count, H}| AccT], [H | T]) -> 
    tail_encode_modified([{Count+1, H}| AccT], T);

tail_encode_modified(Acc, [H| T])-> 
    tail_encode_modified([H | Acc], T);

tail_encode_modified(Acc, [])-> Acc.
