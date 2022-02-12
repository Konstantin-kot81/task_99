%%%-------------------------------------------------------------------
%%% @author kot
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 12. Feb 2022 12:27
%%%-------------------------------------------------------------------
-module(p22_range).
-author("kot").

%% API
-export([
         range/0,
         range/2
        ]).

%% (4, 9) -> [4, 5, 6, 7, 8, 9]

range() ->
  range(4, 9).

range(X, Y) ->
  range(X, Y, []).

range(X, X, Acc) ->
  [X | Acc];

range(X, Y, Acc) ->
  range(X, Y - 1, [Y | Acc]).