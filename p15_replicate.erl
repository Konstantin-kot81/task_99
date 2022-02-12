%%%-------------------------------------------------------------------
%%% @author kot
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Feb 2022 20:15
%%%-------------------------------------------------------------------
-module(p15_replicate).
-author("kot").

%% API
-export([
         replicate/0,
         replicate/2
        ]).

%% ([a, b, c], 3) -> [a, a, a, b, b, b, c, c, c]

replicate() ->
  replicate([a, b, c], 3).

replicate(List, Repeat) ->
  replicate(List, Repeat, 0, []).

replicate([_H | Rest], Repeat, Repeat, Acc) ->
  replicate(Rest, Repeat, 0, Acc);

replicate([H | _Rest] = List, Repeat, RepeatStay, Acc) ->
  replicate(List, Repeat, RepeatStay + 1, [H | Acc]);

replicate([], _, _, Acc) ->
  p05_reverse:reverse(Acc).
