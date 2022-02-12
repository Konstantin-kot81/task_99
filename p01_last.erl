%%%-------------------------------------------------------------------
%%% @author kot
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Feb 2022 16:11
%%%-------------------------------------------------------------------
-module(p01_last).
-author("kot").

%% API
-export([
          last/0,
          last/1
        ]).

%% [1, a, 2, b, 3, c, d, 4] -> 4

last() ->
  last([1, a, 2, b, 3, c, d, 4]).

last([X]) -> X;

last([_Lsat | Rest]) ->
  last(Rest);

last([]) -> {error}.


