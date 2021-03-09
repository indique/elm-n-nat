module Nats exposing (n0, n1, n2, n3, n4, n10)

{-| `NNat Nat0` to `NNat Nat192`.
-}

import NNat exposing (NNat)
import N.Type exposing (..)
import N.Nat.Type exposing (..)

{-| The `NNat` 0.
-}
n0 : NNat (N N0Nat Is (Difference a To a))
n0 =
    Internal.zero


n1 : NNat (N N1 Is (Difference a To (N1Plus a)))
n1 =
    n0 |> add1


n2 : NNat (N N2 Is (Difference a To (N2Plus a)))
n2 =
    n1 |> add1


n3 : NNat (N N3 Is (Difference a To (N3Plus a)))
n3 =
    n2 |> add1


n4 : NNat (N N4 Is (Difference a To (N4Plus a)))
n4 =
    n3 |> add1


n10 : NNat (N N10 Is (Difference a To (N10Plus a)))
n10 =
    n4 |> add1 |> add1 |> add1 |> add1 |> add1 |> add1
