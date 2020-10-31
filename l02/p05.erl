-module(p05).

-export([reverse/1]).

reverse(L) -> tail_reverse(L, []).

tail_reverse([H | T], Result) -> tail_reverse(T, [H | Result]);  
tail_reverse([], Result) -> Result.
