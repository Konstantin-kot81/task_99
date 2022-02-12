%%%-------------------------------------------------------------------
%%% @author kot
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 09. Feb 2022 17:05
%%%-------------------------------------------------------------------
-module(p06_palindrome).
-author("kot").

%% API
-export([
         palindrome/0,
         palindrome/1
        ]).

%% [m, a, d, a, m] -> [m, a, d, a, m]

palindrome() ->
  palindrome([m, a, d, a, m]).

%% первый вариант решения

%%palindrome(List) ->
%%  palindrome(List, []).
%%
%%palindrome([H | Rest], Acc) ->
%%  palindrome(Rest, [H | Acc]);
%%
%%palindrome([], Acc) -> Acc.

%% второй вариант решения

palindrome(List) ->
  p05_reverse:reverse(List).