%%%-------------------------------------------------------------------
%%% @author kot
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 12. Feb 2022 12:16
%%%-------------------------------------------------------------------
-module(p21_insert).
-author("kot").

%% API
-export([
         alfa/0,
         alfa/3
        ]).

%% ('alfa', [a, b, c, d], 2) -> [a, 'alfa', b, c, d]

alfa() ->
  alfa('alfa', [a, b, c, d], 2).

alfa(Alfa, List, X) ->
  alfa(Alfa, List, X, []).

alfa(Alfa, List, 1, Acc) ->
  alfa(Alfa, List, 0, [Alfa | Acc]);

alfa(Alfa, [H | Rest], X, Acc) ->
  alfa(Alfa, Rest, X - 1, [H | Acc]);

alfa(_, [], _, Acc) ->
  p05_reverse:reverse(Acc).