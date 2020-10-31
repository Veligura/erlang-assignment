
-module(p07).
-import(io,[format/1]). 


-export([flatten/1]).
% -include_lib("eunit/include/eunit.hrl").


flatten(L)-> tail_flatten([], L).


tail_flatten(Result, [H| T]) -> tail_flatten([H|Result],T );
tail_flatten(Result, [[H] | T]) -> tail_flatten([H |Result], T). 





% test()-> {"test", [
%     {"flat list": ?_assertEqual([1, 3, 333], flatten(Test_List))}
%     ]}.

% test()


