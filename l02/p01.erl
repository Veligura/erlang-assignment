-module(p01).

-export([last/1]).

last([N]) -> N;
last([_ | T ]) -> last(T).
