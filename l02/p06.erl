% P06 (*) Определить, является ли список палиндромом:
% Пример:
-module(p06).
-include_lib("stdlib/include/assert.hrl").
-export([is_palindrome/1]).



is_palindrome(L) ->
    ReversedList = p05:reverse(L),
    L =:= ReversedList.