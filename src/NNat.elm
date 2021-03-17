module NNat exposing (NNat, add1, add10, add11, add12, add13, add14, add15, add16, add2, add3, add4, add5, add6, add7, add8, add9, sub1, sub10, sub11, sub12, sub13, sub14, sub15, sub16, sub2, sub3, sub4, sub5, sub6, sub7, sub8, sub9, toInt)

{-| Representing natural numbers (`>=0`).


This module lets you represent exact values in the `NNat` type.


This means, packages like [elm-n-array](https://package.elm-lang.org/packages/indique/elm-n-array/latest/) can use a `NNat` to promise:


    fromRepeating : NNat n -> element -> NArray n element
→ repeating an element n times gives a Array with n elements!


The other use is to describe a difference between two values.


    interval :
        { first : NNat (N first Is (Difference range To last))
        , last : NNat (N last Is lastDifference)
        }
    -> Interval
→ because `range` is 0 or positive, `last` must also be at least as high as `first`.


See the readme for more information.


@docs NNat
## transform


@docs toInt
## add


@docs add1, add10, add11, add12, add13, add14, add15, add16, add2, add3, add4, add5, add6, add7
@docs add8, add9
## at least


@docs sub1, sub10, sub11, sub12, sub13, sub14, sub15, sub16, sub2, sub3, sub4, sub5, sub6, sub7
@docs sub8, sub9
-}

import Internal
import N.Nat.Type exposing (..)
import N.Type exposing (..)


{-| A natural number (`<= 0`), where you know the exact value.


`NNat.n3` is of type


    NNat (N N3Nat Is (Difference a To (N3NatPlus a)))
This means, its exact value can be described as


  - `N3Nat`


  - the `Diffence` of some `a` to `a` plus 3.


-}
type alias NNat n =
    Internal.NNat n


{-| Convert a `NNat` to an `Int`.


    NNat.n4 |> NNat.toInt
    --> 4
-}
toInt : NNat n -> Int
toInt =
    Internal.toInt


{-| The `NNat` plus 1.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
add1 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat1Plus n) Is (Difference a To (Nat1Plus nPlusA)))
add1 =
    Internal.add1


{-| The `NNat` plus 2.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
add2 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat2Plus n) Is (Difference a To (Nat2Plus nPlusA)))
add2 =
    add1 >> add1


{-| The `NNat` plus 3.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
add3 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat3Plus n) Is (Difference a To (Nat3Plus nPlusA)))
add3 =
    add2 >> add1


{-| The `NNat` plus 4.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
add4 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat4Plus n) Is (Difference a To (Nat4Plus nPlusA)))
add4 =
    add3 >> add1


{-| The `NNat` plus 5.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
add5 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat5Plus n) Is (Difference a To (Nat5Plus nPlusA)))
add5 =
    add4 >> add1


{-| The `NNat` plus 6.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
add6 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat6Plus n) Is (Difference a To (Nat6Plus nPlusA)))
add6 =
    add5 >> add1


{-| The `NNat` plus 7.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
add7 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat7Plus n) Is (Difference a To (Nat7Plus nPlusA)))
add7 =
    add6 >> add1


{-| The `NNat` plus 8.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
add8 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat8Plus n) Is (Difference a To (Nat8Plus nPlusA)))
add8 =
    add7 >> add1


{-| The `NNat` plus 9.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
add9 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat9Plus n) Is (Difference a To (Nat9Plus nPlusA)))
add9 =
    add8 >> add1


{-| The `NNat` plus 10.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
add10 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat10Plus n) Is (Difference a To (Nat10Plus nPlusA)))
add10 =
    add9 >> add1


{-| The `NNat` plus 11.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
add11 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat11Plus n) Is (Difference a To (Nat11Plus nPlusA)))
add11 =
    add10 >> add1


{-| The `NNat` plus 12.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
add12 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat12Plus n) Is (Difference a To (Nat12Plus nPlusA)))
add12 =
    add11 >> add1


{-| The `NNat` plus 13.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
add13 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat13Plus n) Is (Difference a To (Nat13Plus nPlusA)))
add13 =
    add12 >> add1


{-| The `NNat` plus 14.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
add14 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat14Plus n) Is (Difference a To (Nat14Plus nPlusA)))
add14 =
    add13 >> add1


{-| The `NNat` plus 15.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
add15 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat15Plus n) Is (Difference a To (Nat15Plus nPlusA)))
add15 =
    add14 >> add1


{-| The `NNat` plus 16.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
add16 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat16Plus n) Is (Difference a To (Nat16Plus nPlusA)))
add16 =
    add15 >> add1


{-| The `NNat` minus 1.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
sub1 :
    NNat (N (Nat1Plus nMinus1) Is (Difference a To (Nat1Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub1 =
    Internal.sub1


{-| The `NNat` minus 2.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
sub2 :
    NNat (N (Nat2Plus nMinus1) Is (Difference a To (Nat2Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub2 =
    sub1 >> sub1


{-| The `NNat` minus 3.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
sub3 :
    NNat (N (Nat3Plus nMinus1) Is (Difference a To (Nat3Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub3 =
    sub2 >> sub1


{-| The `NNat` minus 4.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
sub4 :
    NNat (N (Nat4Plus nMinus1) Is (Difference a To (Nat4Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub4 =
    sub3 >> sub1


{-| The `NNat` minus 5.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
sub5 :
    NNat (N (Nat5Plus nMinus1) Is (Difference a To (Nat5Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub5 =
    sub4 >> sub1


{-| The `NNat` minus 6.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
sub6 :
    NNat (N (Nat6Plus nMinus1) Is (Difference a To (Nat6Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub6 =
    sub5 >> sub1


{-| The `NNat` minus 7.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
sub7 :
    NNat (N (Nat7Plus nMinus1) Is (Difference a To (Nat7Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub7 =
    sub6 >> sub1


{-| The `NNat` minus 8.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
sub8 :
    NNat (N (Nat8Plus nMinus1) Is (Difference a To (Nat8Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub8 =
    sub7 >> sub1


{-| The `NNat` minus 9.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
sub9 :
    NNat (N (Nat9Plus nMinus1) Is (Difference a To (Nat9Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub9 =
    sub8 >> sub1


{-| The `NNat` minus 10.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
sub10 :
    NNat (N (Nat10Plus nMinus1) Is (Difference a To (Nat10Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub10 =
    sub9 >> sub1


{-| The `NNat` minus 11.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
sub11 :
    NNat (N (Nat11Plus nMinus1) Is (Difference a To (Nat11Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub11 =
    sub10 >> sub1


{-| The `NNat` minus 12.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
sub12 :
    NNat (N (Nat12Plus nMinus1) Is (Difference a To (Nat12Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub12 =
    sub11 >> sub1


{-| The `NNat` minus 13.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
sub13 :
    NNat (N (Nat13Plus nMinus1) Is (Difference a To (Nat13Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub13 =
    sub12 >> sub1


{-| The `NNat` minus 14.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
sub14 :
    NNat (N (Nat14Plus nMinus1) Is (Difference a To (Nat14Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub14 =
    sub13 >> sub1


{-| The `NNat` minus 15.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
sub15 :
    NNat (N (Nat15Plus nMinus1) Is (Difference a To (Nat15Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub15 =
    sub14 >> sub1


{-| The `NNat` minus 16.


Keep in mind, that if you want do calculations, rather go for [`nat-in-range`](https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/).


-}
sub16 :
    NNat (N (Nat16Plus nMinus1) Is (Difference a To (Nat16Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub16 =
    sub15 >> sub1
