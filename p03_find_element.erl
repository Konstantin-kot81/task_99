%%%-------------------------------------------------------------------
%%% @author kot
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Feb 2022 17:31
%%%-------------------------------------------------------------------
-module(p03_find_element).
-author("kot").

%% API
-export([
          find_element/0,
          find_element/2
        ]).

%% ([1, a, 2, b, 3, c, d, 4], 4) -> b

find_element() ->
  find_element([1, a, 2, b, 3, c, d, 4], 4).

find_element(List, X) ->
  find_element(List, X, 1).

find_element([Element | _Rest], X, X) ->
  Element;

find_element([_H | Rest], X, Acc) ->
  find_element(Rest, X, Acc + 1).