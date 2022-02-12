%%%-------------------------------------------------------------------
%%% @author kot
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Feb 2022 20:26
%%%-------------------------------------------------------------------
-module(p16_drop).
-author("kot").

%% API
-export([
         drop/0,
         drop/2
        ]).

%% ([a, b, c, d, e, f, g, h, i, k], 3) -> [a, b, d, e, g, h, k]

drop() ->
  drop([a, b, c, d, e, f, g, h, i, k], 3).

drop(List, X) ->
  drop(List, X, X, []).

drop([_H | Rest], X, 1, Acc) ->
  drop(Rest, X, X, Acc);

drop([H | Rest], X, Y, Acc) ->
  drop(Rest, X, Y - 1, [H | Acc]);

drop([], _, _, Acc) ->
  p05_reverse:reverse(Acc).