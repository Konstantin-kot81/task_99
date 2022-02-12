%%%-------------------------------------------------------------------
%%% @author kot
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Feb 2022 17:19
%%%-------------------------------------------------------------------
-module(p11_encode_modified).
-author("kot").

%% API
-export([
         encode_modified/0,
         encode_modified/1
        ]).

%% [a, a, a, a, b, c, c, a, a, d, e, e, e, e] ->
%% [{4, a}, b, {2, c}, {2, a}, d, {4, e}]

encode_modified() ->
  encode_modified([a, a, a, a, b, c, c, a, a, d, e, e, e, e]).

encode_modified(List) ->
  p05_reverse:reverse(encode_modified(List, 1,[])).

encode_modified([H, H | Rest], Ct, Acc) ->
  encode_modified([H | Rest], Ct + 1, Acc);

encode_modified([H | Rest], Ct, Acc) ->
  encode_modified(Rest, 1, [{Ct, H} | Acc]);

encode_modified([], _Ct, Acc) ->
  encode_modified_helper(Acc, []).

encode_modified_helper([{1, H} | Rest], Acc) ->
  encode_modified_helper(Rest, [H | Acc]);

encode_modified_helper([H | Rest], Acc)->
  encode_modified_helper(Rest, [H | Acc]);

encode_modified_helper([], Acc) -> Acc.