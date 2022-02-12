%%%-------------------------------------------------------------------
%%% @author kot
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. Feb 2022 16:39
%%%-------------------------------------------------------------------
-module(p10_encoding).
-author("kot").

%% API
-export([
         encoding/0,
         encoding/1
        ]).

%% [a, a, a, a, b, c, c, a, a, d, e, e, e, e] ->
%% [{4, a}, {1, b}, {2, c}, {2, a}, {1, d}, {4, e}]

encoding() ->
  encoding([a, a, a, a, b, c, c, a, a, d, e, e, e, e]).

encoding(List) ->
  encoding(List, 1, []).

encoding([H, H | Rest], Ct, Acc) ->
  encoding([H | Rest], Ct + 1, Acc);

encoding([H | Rest], Ct, Acc) ->
  encoding(Rest, 1, [{Ct, H} | Acc]);

encoding([], _Ct, Acc) ->
  p05_reverse:reverse(Acc).