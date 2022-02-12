%%%-------------------------------------------------------------------
%%% @author kot
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Feb 2022 19:17
%%%-------------------------------------------------------------------
-module(p05_reverse).
-author("kot").

%% API
-export([
         reverse/0,
         reverse/1
        ]).

%% [1, a, 2, b, 3, c, d, 4] -> [4, d, c, 3, b, 2, a, 1]

reverse() ->
  reverse([1, a, 2, b, 3, c, d, 4]).

reverse(List) ->
  reverse(List, []).

reverse([H | Rest], Acc) ->
  reverse(Rest, [H | Acc]);

reverse([], Acc) -> Acc.