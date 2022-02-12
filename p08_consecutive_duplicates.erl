%%%-------------------------------------------------------------------
%%% @author kot
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. Feb 2022 16:02
%%%-------------------------------------------------------------------
-module(p08_consecutive_duplicates).
-author("kot").

%% API
-export([
         consecutive_duplicates/0,
         consecutive_duplicates/1
        ]).

%% [a, a, a, a, b, c, c, a, a, d, e, e, e, e] -> [a, b, c, a, d, e]

consecutive_duplicates() ->
  consecutive_duplicates([a, a, a, a, b, c, c, a, a, d, e, e, e, e]).

consecutive_duplicates(List) ->
  p05_reverse:reverse(consecutive_duplicates(List, [])).

consecutive_duplicates([[H, H | Rest]], Acc) ->
  consecutive_duplicates(Rest, [H | Acc]);

consecutive_duplicates([H | Rest], Acc) ->
  consecutive_duplicates(Rest, [H | Acc]);

consecutive_duplicates([], Acc) -> Acc.