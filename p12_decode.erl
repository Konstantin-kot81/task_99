%%%-------------------------------------------------------------------
%%% @author kot
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Feb 2022 17:46
%%%-------------------------------------------------------------------
-module(p12_decode).
-author("kot").

%% API
-export([
         decode/0,
         decode/1,
         decode2/0,
         decode2/1
        ]).

%% [{4, a}, b, {2, c}, {2, a}, d, {4, e}] ->
%% [a, a, a, a, b, c, c, a, a, d, e, e, e, e]

decode() ->
  decode([{4, a}, b, {2, c}, {2, a}, d, {4, e}]).

decode(List) ->
  decode(List, []).

decode([H | Rest], Acc) ->
  NewAcc = copy(H, Acc),
  decode(Rest, NewAcc);

decode([], Acc) ->
  p05_reverse:reverse(Acc).

copy({0, _}, Acc) -> Acc;

copy({X, H}, Acc) ->
  copy({X - 1}, [H | Acc]);

copy(H, Acc) ->
  [H | Acc].

%% второе решение

decode2() ->
  decode2([{4, a}, b, {2, c}, {2, a}, d, {4, e}]).

decode2(List) ->
  decode2(List, []).

decode2([{0, H} | Rest], Acc) ->
  decode2(Rest, [H | Acc]);

decode2([{Y, H} | Rest], Acc) ->
  decode2([{Y - 1, H} | Rest], [H | Acc]);

decode2([H | Rest], Acc) ->
  decode2(Rest, [H | Acc]);

decode2([], Acc) ->
  p05_reverse:reverse(Acc).