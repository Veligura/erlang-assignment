-module(p04).

-export([len/1]).

% len([]) ->
%      0;
% len ( [_|T]) ->
%     1 + len(T).


len(L)-> 
    len(L, 0).

len([_ | T], Acc) ->
     len(T, Acc+1);
len([], Acc)->
     Acc.
