%%%-------------------------------------------------------------------
%%% @author kot
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Feb 2022 20:34
%%%-------------------------------------------------------------------
-module(p17_split).
-author("kot").

%% API
-export([
         split/0,
         split/2
        ]).

%% ([a, b, c, d, e, f, g, h, i, k], 3) -> [{a, b, c}, d, e, f, g, h, i, k]

split() ->
  split([a, b, c, d, e, f, g, h, i, k], 3).

split(List, X) ->
  split(List, X, 1, []).

split([H | Rest], X, X, Acc) ->
  [p05_reverse:reverse([H | Acc]), Rest];

split([H | Rest], X, Ct, Acc) ->
  split(Rest, X, Ct + 1, [H | Acc]).