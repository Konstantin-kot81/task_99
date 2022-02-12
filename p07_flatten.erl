%%%-------------------------------------------------------------------
%%% @author kot
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 09. Feb 2022 18:28
%%%-------------------------------------------------------------------
-module(p07_flatten).
-author("kot").

%% API
-export([
         flatten/0,
         flatten/1
        ]).

%% [1, [a, [2, b], 3]] -> [1, a, 2, b, 3]

flatten() ->
  flatten([1, [a, [2, b], 3]]).

flatten(List) ->
  p05_reverse:reverse(flatten(List, [])).

flatten([[_ | _] = H | Rest], Acc) ->
  NewAcc = flatten(H, Acc),
  flatten(Rest, NewAcc);

flatten([[] | Rest], Acc) ->
  flatten(Rest, Acc);

flatten([H | Rest], Acc) ->
  flatten(Rest, [H | Acc]);

flatten([], Acc) -> Acc.