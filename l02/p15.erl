% P15 (**) Написать функцию-репликатор всех элементов входящего списка:
% Пример:
% 1> p15:replicate([a,b,c], 3).
% [a,a,a,b,b,b,c,c,c]


-module(p15).

-export([replicate/2]).

replayElelement(Element, Times) -> 
    replayElelement(Element, Times, []).

replayElelement(Element, 1, Acc) ->
     [Element| Acc];
replayElelement(Element, Times, Acc)-> 
    replayElelement(Element, Times-1, [Element |Acc]).


replicate(L, Times) -> replicate(L, Times, []).


replicate([H| T],Times,Acc )->
     replicate(T, Times, Acc++replayElelement(H, Times));
replicate([],_,Acc )-> 
    Acc.