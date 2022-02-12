%%%-------------------------------------------------------------------
%%% @author kot
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Feb 2022 22:14
%%%-------------------------------------------------------------------
-module(p20_remove).
-author("kot").

%% API
-export([
         remove/0,
         remove/2,
         remove2/0,
         remove2/2
        ]).

%% ([a, b, c, d], 2) -> [a, c, d]

remove() ->
  remove([a, b, c, d], 2).

remove(List, X) ->
  remove(List, X, []).

remove([_H | Rest], 1, Acc) ->
  remove(Rest, 0, Acc);

remove([H | Rest], X, Acc) ->
  remove(Rest, X - 1, [H | Acc]);

remove([], _, Acc) ->
  p05_reverse:reverse(Acc).

%% второй вариант решения

remove2() ->
  remove2([a, b, c, d], 2).

remove2([_ | Rest], 1) ->
  Rest;

remove2([H | Rest], X) ->
  [H, remove2(Rest, X - 1)];

remove2([], _) -> [].