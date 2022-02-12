%%%-------------------------------------------------------------------
%%% @author kot
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Feb 2022 16:23
%%%-------------------------------------------------------------------
-module(p02_last_more).
-author("kot").

%% API
-export([
         last_two/0,
         last_two/1
        ]).

%% [1, a, 2, b, 3, c, d, 4] -> [d, 4]

last_two() ->
  last_two([1, a, 2, b, 3, c, d, 4]).

last_two([X, Y]) -> [X, Y];

last_two([_Last | Rest]) ->
  last_two(Rest);

last_two([]) -> {error}.