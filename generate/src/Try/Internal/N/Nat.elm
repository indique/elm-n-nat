module Try.Internal.N.Nat exposing (NNat, add, add1, forgetAddingAbility, sub, sub1, toInt, zero)

import Try.N.Nat.Type exposing (..)


type NNat n addingAbility
    = NNat Int


toInt : NNat n addingAbility -> Int
toInt =
    \(NNat int) -> int


zero : NNat Nat0 (Plus more Is more)
zero =
    NNat 0


add1 :
    NNat n (Plus more Is nPlusMore)
    -> NNat (Nat1Plus n) (Plus more Is (Nat1Plus nPlusMore))
add1 =
    \nat -> NNat (toInt nat + 1)


sub1 :
    NNat (Nat1Plus nMinus1) (Plus more Is (Nat1Plus nPlusMoreMinus1))
    -> NNat nMinus1 (Plus more Is nPlusMoreMinus1)
sub1 =
    \nat -> NNat (toInt nat - 1)


add :
    NNat nToAdd (Plus n Is sum)
    -> NNat n addingAbility
    -> NNat sum (CantAddTo sum)
add n =
    \nat -> NNat (toInt nat + toInt n)


sub :
    NNat nToSub (Plus n Is added)
    -> NNat n (Plus more Is nPlusMore)
    -> NNat difference (CantAddTo difference)
sub n =
    \nat -> NNat (toInt nat - toInt n)


forgetAddingAbility :
    NNat n (Plus more Is nPlusMore)
    -> NNat n (CantAddTo n)
forgetAddingAbility =
    toInt >> NNat
