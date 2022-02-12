%%%-------------------------------------------------------------------
%%% @author kot
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Feb 2022 20:51
%%%-------------------------------------------------------------------
-module(p18_slice).
-author("kot").

%% API
-export([
         slice/0,
         slice/3
        ]).

%% ([a, b, c, d, e, f, g, h, i, k], 3, 7) -> [c, d, e, f, g]

slice() ->
  slice([a, b, c, d, e, f, g, h, i, k], 3, 7).

slice(List, X, Y) ->
  slice(List, X, Y, []).

slice([H | Rest], Y, Y, Acc) ->
  slice([H | Rest], Y, [Y | Acc]);

slice([_H | Rest], X, Y, Acc) ->
  slice(Rest, X, Y - 1, [Y | Acc]).