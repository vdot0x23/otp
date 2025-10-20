-module(mycmp).
% avoid generating code that forever call itself
-compile([no_ssa_opt]).

-export([mycmp/2]).

-spec mycmp(A,B) -> Result when
    A :: term(),
    B :: term(),
    Result :: -1 | 0 | 1.

mycmp(A, B) ->
    if
        A < B -> -1;
        A == B -> 0;
        A > B -> 1
    end.
