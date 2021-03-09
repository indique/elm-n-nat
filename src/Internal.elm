module Internal exposing (NNat, add1, sub1, toInt, zero)

import N.Nat.Type exposing (Nat0, Nat1Plus)
import N.Type exposing (..)


type NNat n
    = NNat Int


toInt : NNat n -> Int
toInt (NNat int) =
    int


zero : NNat (N Nat0 Is (Difference a To a))
zero =
    NNat 0


add1 : NNat (N n Is (Difference a To nPlusA)) -> NNat (N (Nat1Plus n) Is (Difference a To (Nat1Plus nPlusA)))
add1 nat =
    NNat (toInt nat + 1)


sub1 : NNat (N (Nat1Plus nMinus1) Is (Difference a To (Nat1Plus nPlusAMinus1))) -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub1 nat =
    NNat (toInt nat - 1)
