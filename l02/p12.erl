% P12 (**) Написать декодер для модифицированого алгоритма RLE:
% Пример:
% 1> p12:decode_modified([{4,a},b,{2,c},{2,a},d,{4,e}]).
% [a,a,a,a,b,c,c,a,a,d,e,e,e,e]

-module(p12).
-export([decode_modified/1, decode_tuple/1 ]).

decode_tuple(Tuple)-> decode_tuple([], Tuple).
decode_tuple(Acc, {1, Value})-> [Value | Acc];
decode_tuple(Acc, {Count, Value}) -> decode_tuple([Value | Acc], {Count-1, Value}).



decode_modified(L) -> tail_decode_modified([], L).

tail_decode_modified(Acc, [{_,_}= Tuple | T ]) -> tail_decode_modified(Acc++decode_tuple(Tuple), T);

tail_decode_modified(Acc, [H | T])-> tail_decode_modified(Acc++[H], T);

tail_decode_modified(Acc, [])-> Acc.
