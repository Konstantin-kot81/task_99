%%%-------------------------------------------------------------------
%%% @author kot
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Feb 2022 20:02
%%%-------------------------------------------------------------------
-module(p14_dupli).
-author("kot").

%% API
-export([
         dupli/0,
         dupli/1
        ]).

%% [a, b, c, c, d] -> [a, a, b, b, c, c, c, c, d, d]

dupli() ->
  dupli([a, b, c, c, d]).

dupli(List) ->
  dupli(List, []).

dupli([H | Rest], Acc) ->
  dupli(Rest, [H, H | Acc]);

dupli([], Acc) ->
  p05_reverse:reverse(Acc).