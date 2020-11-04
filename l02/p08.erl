% P08 (**) Удалить последовательно следующие дубликаты:
% Пример:
% 1> p08:compress([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
% [a,b,c,a,d,e]

-module(p08).

-export([compress/1]).
-import(p05,[reverse/1]).


compress(L)-> reverse(tail_compress([], L)).

tail_compress([N|_] = Acc, [N | T]) -> tail_compress(Acc, T);
tail_compress(Acc, [N | T]) -> tail_compress([N | Acc], T);
tail_compress(Acc, []) -> Acc.

