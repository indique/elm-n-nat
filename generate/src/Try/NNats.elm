module NNats exposing (nat0, nat1, nat2, nat3, nat4, nat10)

{-| `NNat Nat0` to `NNat Nat192`.
-}

import NNat exposing (NNat)
import N.Type exposing (..)
import N.Nat.Type exposing (..)

{-| The `NNat` 0.
-}
nat0 : NNat (N Nat0Nat Is (Difference a To a))
nat0 =
    Internal.zero


nat1 : NNat (N Nat1 Is (Difference a To (Nat1Plus a)))
nat1 =
    nat0 |> add1


nat2 : NNat (N Nat2 Is (Difference a To (Nat2Plus a)))
nat2 =
    nat1 |> add1


nat3 : NNat (N Nat3 Is (Difference a To (Nat3Plus a)))
nat3 =
    nat2 |> add1


nat4 : NNat (N Nat4 Is (Difference a To (Nat4Plus a)))
nat4 =
    nat3 |> add1


nat10 : NNat (N Nat10 Is (Difference a To (Nat10Plus a)))
nat10 =
    nat4 |> add1 |> add1 |> add1 |> add1 |> add1 |> add1
