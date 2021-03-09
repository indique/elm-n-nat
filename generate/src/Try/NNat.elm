module Try.NNat exposing (NNat, add1, add2, n0, n1, sub1, sub2, toInt)

{-| Representing natural numbers (`>=0`).

This module lets you represent exact values in the `NNat` type.

This means, packages like [elm-n-array] can use a `NNat` to promise:

    fromRepeating : NNat n -> element -> NArray n element

→ repeating an element n times gives a Array with n elements!

The other use is to describe a difference between two values.

    interval :
        { first : NNat (N first Is (Difference range To last))
        , last : NNat (N last Is differenceLast)
        }
        -> Interval

→ because `range` is 0 or positive, `last` must also be at least as high as `first`.

See the readme for more information.

[elm-n-array]: https://package.elm-lang.org/packages/indique/elm-n-array/latest/

-}

import N.Nat.Type exposing (..)
import N.Type exposing (..)
import Try.Internal as Internal



-- type


{-| A natural number (`<= 0`), where you know the exact value.

`NNat.n3` is of type

    NNat (N N3 Is (Difference a To (N3Plus a)))

This means, its exact value can be described as

  - `N3`
  - the `Diffence` of some `a` to `a` plus 3.

-}
type alias NNat n =
    Internal.NNat n



-- ## transform


{-| Convert a `NNat` to an `Int`.

    NNat.n4 |> NNat.toInt
    --> 4

-}
toInt : NNat n -> Int
toInt =
    Internal.toInt


{-| The `NNat` plus 1.
-}
add1 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1Plus n) Is (Difference a To (N1Plus nPlusA)))
add1 =
    Internal.add1


add2 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N2Plus n) Is (Difference a To (N2Plus nPlusA)))
add2 =
    add1 >> add1


{-| The `NNat` minus 1.
-}
sub1 :
    NNat (N (N1Plus nMinus1) Is (Difference a To (N1Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub1 =
    Internal.sub1


sub2 :
    NNat (N (N2Plus nMinus1) Is (Difference a To (N2Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub2 =
    sub1 >> sub1


sub10 :
    NNat (N (N10Plus nMinus10) Is (Difference a To (N10Plus nPlusAMinus10)))
    -> NNat (N nMinus10 Is (Difference a To nPlusAMinus10))
sub10 =
    sub1 >> sub1 >> sub1 >> sub1 >> sub1 >> sub1 >> sub1 >> sub1 >> sub1 >> sub1



--


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
