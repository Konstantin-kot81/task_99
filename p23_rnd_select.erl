%%%-------------------------------------------------------------------
%%% @author kot
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 12. Feb 2022 12:35
%%%-------------------------------------------------------------------
-module(p23_rnd_select).
-author("kot").

%% API
-export([
         select/0,
         select/2,
         select2/0,
         select2/2
        ]).

%% ([a, b, c, d, e, f, g, h], 3) -> [e, d, a]

select() ->
  select([a, b, c, d, e, f, g, h], 3).

select(List, X) ->
  Range = lenght:length(List),
  Nth = [rand:uniform(Range) || _ <- p22_range:range(1, X)],
  [p03_find_element:find_element(List, N) || N <- Nth].

%% второй вариант решения

select2() ->
  select2([a, b, c, d, e, f, g, h], 3).

select2(List, X) ->
  Range = lenght:lenght(List),
  RandNums = generate_randoms(X, Range),
get_elements(List, RandNums).

generate_randoms(X, Range) ->
  generate_randoms(X, Range, []).

generate_randoms(0, _, Acc) -> Acc;

generate_randoms(X, Range,Acc) ->
  Random = rand:uniform(Range),
generate_randoms(X - 1, Range, [Random | Acc]).

get_elements(List, RandNums) ->
  get_elements(List, RandNums, []).

get_elements(List, [N | RandNum], Acc) ->
  Element = p03_find_element:find_element(List, N),
  get_elements(List, RandNum, [Element | Acc]);

get_elements(_, [], Acc) -> Acc.