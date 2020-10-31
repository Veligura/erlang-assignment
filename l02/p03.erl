-module(p03).

-export([element_at/2]).

element_at([N | _], 1) -> N;
element_at([_ | T], X) -> element_at(T, X - 1);
element_at([], _) -> undefined.
