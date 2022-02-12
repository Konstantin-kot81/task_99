%%%-------------------------------------------------------------------
%%% @author kot
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. Feb 2022 16:16
%%%-------------------------------------------------------------------
-module(p09_pack).
-author("kot").

%% API
-export([
         pack/0,
         pack/1
        ]).

%% [a, a, a, a, b, c, c, a, a, d, e, e, e, e] ->
%% [[a, a, a, a], [b], [c, c], [a, a], [d], [e, e, e, e]]

pack() ->
  pack([a, a, a, a, b, c, c, a, a, d, e, e, e, e]).

pack([]) -> [];

pack([H | Rest]) ->
  pack(Rest, [[H]]).

pack([H | Rest], [[H | _] = Pack | Acc]) ->
  pack(Rest, [[H | Pack] | Acc]);

pack([H | Rest], Acc) ->
  pack(Rest, [[H] | Acc]);

pack([], Acc) ->
  p05_reverse:reverse(Acc).