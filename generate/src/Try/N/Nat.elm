module Try.N.Nat exposing (NNat, add, add1, sub, sub1, toInt)

{-| Representing natural numbers (`>=0`).
This module lets you represent exact values in the type.

Modules like [Numeric-Nat](https://package.elm-lang.org/packages/obiloud/numeric-decimal/1.0.0/Numeric-Nat)
have way too lose promises to be useable.

This module certainly is useful in the context of `N.Array`s.

-}

import Try.Internal.N.Nat as Internal
import Try.N.Nat.Type exposing (..)



-- type


type alias NNat n addingAbility =
    Internal.NNat n addingAbility



-- ## transform


{-| Convert a `Nat` to an `Int`.

    Natat.n4 |> Natat.toInt
    --> 4

-}
toInt : NNat n addAbility -> Int
toInt =
    Internal.toInt


add :
    NNat nToAdd (Plus n Is sum)
    -> NNat n addingAbility
    -> NNat sum (CantAddTo sum)
add toAdd =
    Internal.add toAdd


sub :
    NNat nToSub (Plus n Is added)
    -> NNat n (Plus more Is nPlusMore)
    -> NNat difference (CantAddTo difference)
sub toSubtract =
    Internal.sub toSubtract


add1 :
    NNat n (Plus more Is nPlusMore)
    -> NNat (Nat1Plus n) (Plus more Is (Nat1Plus nPlusMore))
add1 =
    Internal.add1


sub1 :
    NNat (Nat1Plus nMinus1) (Plus more Is (Nat1Plus nPlusMoreMinus1))
    -> NNat nMinus1 (Plus more Is nPlusMoreMinus1)
sub1 =
    Internal.sub1



{- add100 : Nat n maximum -> Nat (Nat100Plus n) (Nat100Plus maximum)
   add100 =
       add10 >> add10 >> add10 >> add10 >> add10 >> add10 >> add10 >> add10 >> add10 >> add10


   addE3 : Nat n maximum -> Nat (E3Plus n) (E3Plus maximum)
   addE3 =
       add100 >> add100 >> add100 >> add100 >> add100 >> add100 >> add100 >> add100 >> add100 >> add100


   addE4 : Nat n maximum -> Nat (E4Plus n) (E4Plus maximum)
   addE4 =
       addE3 >> addE3 >> addE3 >> addE3 >> addE3 >> addE3 >> addE3 >> addE3 >> addE3 >> addE3
-}


sub10 :
    NNat (Nat10Plus nMinus10) (Plus more Is (Nat10Plus nPlusMoreMinus10))
    -> NNat nMinus10 (Plus more Is nPlusMoreMinus10)
sub10 =
    sub1 >> sub1 >> sub1 >> sub1 >> sub1 >> sub1 >> sub1 >> sub1 >> sub1 >> sub1
