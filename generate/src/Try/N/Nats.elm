module Try.N.Nats exposing (..)

{-| All `NNat`s to expose.
-}

import Try.Internal.N.Nat exposing (NNat, add1, zero)
import Try.N.Nat.Type exposing (..)


n0Nat : NNat Nat0 (Plus more Is more)
n0Nat =
    zero


n1Nat : NNat Nat1 (Plus more Is (Nat1Plus more))
n1Nat =
    zero |> add1


n2Nat : NNat Nat2 (Plus more Is (Nat2Plus more))
n2Nat =
    n1Nat |> add1


n3Nat : NNat Nat3 (Plus more Is (Nat3Plus more))
n3Nat =
    n2Nat |> add1


n4Nat : NNat Nat4 (Plus more Is (Nat4Plus more))
n4Nat =
    n3Nat |> add1


n10Nat : NNat Nat10 (Plus more Is (Nat10Plus more))
n10Nat =
    n4Nat |> add1 |> add1 |> add1 |> add1 |> add1 |> add1
