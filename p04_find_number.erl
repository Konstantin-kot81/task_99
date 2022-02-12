%%%-------------------------------------------------------------------
%%% @author kot
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Feb 2022 17:59
%%%-------------------------------------------------------------------
-module(p04_find_number).
-author("kot").

%% API
-export([
         find_number/0,
         find_number/1
        ]).

%% [1, a, 2, b, 3, c, d, 4] -> 8

find_number() ->
  find_number([1, a, 2, b, 3, c, d, 4]).

find_number(List) ->
  find_number(List, 0).

find_number([_H | Rest], Ct) ->
  find_number(Rest, Ct + 1);

find_number([], Ct) -> Ct.