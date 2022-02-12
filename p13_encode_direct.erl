%%%-------------------------------------------------------------------
%%% @author kot
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Feb 2022 18:39
%%%-------------------------------------------------------------------
-module(p13_encode_direct).
-author("kot").

%% API
-export([
         encode_direct/0
        ]).

%% [{4, a}, b, {2, c}, {2, a}, d, {4, e}] ->
%% [a, a, a, a, b, c, c, a, a, d, e, e, e, e]

encode_direct() ->
  encode_direct([{4, a}, b, {2, c}, {2, a}, d, {4, e}]).

encode_direct([{0, _} | List]) ->
  encode_direct(List);

encode_direct([{X, E} | List]) ->
  [E | encode_direct([{X - 1, E} | List])];

encode_direct([E | List]) ->
  [E | encode_direct(List)];

encode_direct([]) -> [].