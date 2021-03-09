module NNat exposing (NNat, add1, add10, add100, add101, add102, add103, add104, add105, add106, add107, add108, add109, add11, add110, add111, add112, add113, add114, add115, add116, add117, add118, add119, add12, add120, add121, add122, add123, add124, add125, add126, add127, add128, add13, add14, add15, add16, add17, add18, add19, add2, add20, add21, add22, add23, add24, add25, add26, add27, add28, add29, add3, add30, add31, add32, add33, add34, add35, add36, add37, add38, add39, add4, add40, add41, add42, add43, add44, add45, add46, add47, add48, add49, add5, add50, add51, add52, add53, add54, add55, add56, add57, add58, add59, add6, add60, add61, add62, add63, add64, add65, add66, add67, add68, add69, add7, add70, add71, add72, add73, add74, add75, add76, add77, add78, add79, add8, add80, add81, add82, add83, add84, add85, add86, add87, add88, add89, add9, add90, add91, add92, add93, add94, add95, add96, add97, add98, add99, sub1, sub10, sub100, sub101, sub102, sub103, sub104, sub105, sub106, sub107, sub108, sub109, sub11, sub110, sub111, sub112, sub113, sub114, sub115, sub116, sub117, sub118, sub119, sub12, sub120, sub121, sub122, sub123, sub124, sub125, sub126, sub127, sub128, sub13, sub14, sub15, sub16, sub17, sub18, sub19, sub2, sub20, sub21, sub22, sub23, sub24, sub25, sub26, sub27, sub28, sub29, sub3, sub30, sub31, sub32, sub33, sub34, sub35, sub36, sub37, sub38, sub39, sub4, sub40, sub41, sub42, sub43, sub44, sub45, sub46, sub47, sub48, sub49, sub5, sub50, sub51, sub52, sub53, sub54, sub55, sub56, sub57, sub58, sub59, sub6, sub60, sub61, sub62, sub63, sub64, sub65, sub66, sub67, sub68, sub69, sub7, sub70, sub71, sub72, sub73, sub74, sub75, sub76, sub77, sub78, sub79, sub8, sub80, sub81, sub82, sub83, sub84, sub85, sub86, sub87, sub88, sub89, sub9, sub90, sub91, sub92, sub93, sub94, sub95, sub96, sub97, sub98, sub99, toInt)

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


@docs add1, add10, add100, add101, add102, add103, add104, add105, add106, add107, add108
@docs add109, add11, add110, add111, add112, add113, add114, add115, add116, add117
@docs add118, add119, add12, add120, add121, add122, add123, add124, add125, add126
@docs add127, add128, add13, add14, add15, add16, add17, add18, add19, add2, add20, add21
@docs add22, add23, add24, add25, add26, add27, add28, add29, add3, add30, add31, add32, add33
@docs add34, add35, add36, add37, add38, add39, add4, add40, add41, add42, add43, add44, add45
@docs add46, add47, add48, add49, add5, add50, add51, add52, add53, add54, add55, add56, add57
@docs add58, add59, add6, add60, add61, add62, add63, add64, add65, add66, add67, add68, add69
@docs add7, add70, add71, add72, add73, add74, add75, add76, add77, add78, add79, add8, add80
@docs add81, add82, add83, add84, add85, add86, add87, add88, add89, add9, add90, add91, add92
@docs add93, add94, add95, add96, add97, add98, add99
## at least


@docs sub1, sub10, sub100, sub101, sub102, sub103, sub104, sub105, sub106, sub107, sub108
@docs sub109, sub11, sub110, sub111, sub112, sub113, sub114, sub115, sub116, sub117
@docs sub118, sub119, sub12, sub120, sub121, sub122, sub123, sub124, sub125, sub126
@docs sub127, sub128, sub13, sub14, sub15, sub16, sub17, sub18, sub19, sub2, sub20, sub21
@docs sub22, sub23, sub24, sub25, sub26, sub27, sub28, sub29, sub3, sub30, sub31, sub32, sub33
@docs sub34, sub35, sub36, sub37, sub38, sub39, sub4, sub40, sub41, sub42, sub43, sub44, sub45
@docs sub46, sub47, sub48, sub49, sub5, sub50, sub51, sub52, sub53, sub54, sub55, sub56, sub57
@docs sub58, sub59, sub6, sub60, sub61, sub62, sub63, sub64, sub65, sub66, sub67, sub68, sub69
@docs sub7, sub70, sub71, sub72, sub73, sub74, sub75, sub76, sub77, sub78, sub79, sub8, sub80
@docs sub81, sub82, sub83, sub84, sub85, sub86, sub87, sub88, sub89, sub9, sub90, sub91, sub92
@docs sub93, sub94, sub95, sub96, sub97, sub98, sub99
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


-}
add1 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat1Plus n) Is (Difference a To (Nat1Plus nPlusA)))
add1 =
    Internal.add1


{-| The `NNat` plus 2.


-}
add2 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat2Plus n) Is (Difference a To (Nat2Plus nPlusA)))
add2 =
    add1 >> add1


{-| The `NNat` plus 3.


-}
add3 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat3Plus n) Is (Difference a To (Nat3Plus nPlusA)))
add3 =
    add2 >> add1


{-| The `NNat` plus 4.


-}
add4 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat4Plus n) Is (Difference a To (Nat4Plus nPlusA)))
add4 =
    add3 >> add1


{-| The `NNat` plus 5.


-}
add5 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat5Plus n) Is (Difference a To (Nat5Plus nPlusA)))
add5 =
    add4 >> add1


{-| The `NNat` plus 6.


-}
add6 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat6Plus n) Is (Difference a To (Nat6Plus nPlusA)))
add6 =
    add5 >> add1


{-| The `NNat` plus 7.


-}
add7 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat7Plus n) Is (Difference a To (Nat7Plus nPlusA)))
add7 =
    add6 >> add1


{-| The `NNat` plus 8.


-}
add8 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat8Plus n) Is (Difference a To (Nat8Plus nPlusA)))
add8 =
    add7 >> add1


{-| The `NNat` plus 9.


-}
add9 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat9Plus n) Is (Difference a To (Nat9Plus nPlusA)))
add9 =
    add8 >> add1


{-| The `NNat` plus 10.


-}
add10 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat10Plus n) Is (Difference a To (Nat10Plus nPlusA)))
add10 =
    add9 >> add1


{-| The `NNat` plus 11.


-}
add11 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat11Plus n) Is (Difference a To (Nat11Plus nPlusA)))
add11 =
    add10 >> add1


{-| The `NNat` plus 12.


-}
add12 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat12Plus n) Is (Difference a To (Nat12Plus nPlusA)))
add12 =
    add11 >> add1


{-| The `NNat` plus 13.


-}
add13 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat13Plus n) Is (Difference a To (Nat13Plus nPlusA)))
add13 =
    add12 >> add1


{-| The `NNat` plus 14.


-}
add14 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat14Plus n) Is (Difference a To (Nat14Plus nPlusA)))
add14 =
    add13 >> add1


{-| The `NNat` plus 15.


-}
add15 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat15Plus n) Is (Difference a To (Nat15Plus nPlusA)))
add15 =
    add14 >> add1


{-| The `NNat` plus 16.


-}
add16 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat16Plus n) Is (Difference a To (Nat16Plus nPlusA)))
add16 =
    add15 >> add1


{-| The `NNat` plus 17.


-}
add17 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat17Plus n) Is (Difference a To (Nat17Plus nPlusA)))
add17 =
    add16 >> add1


{-| The `NNat` plus 18.


-}
add18 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat18Plus n) Is (Difference a To (Nat18Plus nPlusA)))
add18 =
    add17 >> add1


{-| The `NNat` plus 19.


-}
add19 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat19Plus n) Is (Difference a To (Nat19Plus nPlusA)))
add19 =
    add18 >> add1


{-| The `NNat` plus 20.


-}
add20 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat20Plus n) Is (Difference a To (Nat20Plus nPlusA)))
add20 =
    add19 >> add1


{-| The `NNat` plus 21.


-}
add21 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat21Plus n) Is (Difference a To (Nat21Plus nPlusA)))
add21 =
    add20 >> add1


{-| The `NNat` plus 22.


-}
add22 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat22Plus n) Is (Difference a To (Nat22Plus nPlusA)))
add22 =
    add21 >> add1


{-| The `NNat` plus 23.


-}
add23 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat23Plus n) Is (Difference a To (Nat23Plus nPlusA)))
add23 =
    add22 >> add1


{-| The `NNat` plus 24.


-}
add24 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat24Plus n) Is (Difference a To (Nat24Plus nPlusA)))
add24 =
    add23 >> add1


{-| The `NNat` plus 25.


-}
add25 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat25Plus n) Is (Difference a To (Nat25Plus nPlusA)))
add25 =
    add24 >> add1


{-| The `NNat` plus 26.


-}
add26 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat26Plus n) Is (Difference a To (Nat26Plus nPlusA)))
add26 =
    add25 >> add1


{-| The `NNat` plus 27.


-}
add27 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat27Plus n) Is (Difference a To (Nat27Plus nPlusA)))
add27 =
    add26 >> add1


{-| The `NNat` plus 28.


-}
add28 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat28Plus n) Is (Difference a To (Nat28Plus nPlusA)))
add28 =
    add27 >> add1


{-| The `NNat` plus 29.


-}
add29 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat29Plus n) Is (Difference a To (Nat29Plus nPlusA)))
add29 =
    add28 >> add1


{-| The `NNat` plus 30.


-}
add30 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat30Plus n) Is (Difference a To (Nat30Plus nPlusA)))
add30 =
    add29 >> add1


{-| The `NNat` plus 31.


-}
add31 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat31Plus n) Is (Difference a To (Nat31Plus nPlusA)))
add31 =
    add30 >> add1


{-| The `NNat` plus 32.


-}
add32 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat32Plus n) Is (Difference a To (Nat32Plus nPlusA)))
add32 =
    add31 >> add1


{-| The `NNat` plus 33.


-}
add33 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat33Plus n) Is (Difference a To (Nat33Plus nPlusA)))
add33 =
    add32 >> add1


{-| The `NNat` plus 34.


-}
add34 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat34Plus n) Is (Difference a To (Nat34Plus nPlusA)))
add34 =
    add33 >> add1


{-| The `NNat` plus 35.


-}
add35 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat35Plus n) Is (Difference a To (Nat35Plus nPlusA)))
add35 =
    add34 >> add1


{-| The `NNat` plus 36.


-}
add36 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat36Plus n) Is (Difference a To (Nat36Plus nPlusA)))
add36 =
    add35 >> add1


{-| The `NNat` plus 37.


-}
add37 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat37Plus n) Is (Difference a To (Nat37Plus nPlusA)))
add37 =
    add36 >> add1


{-| The `NNat` plus 38.


-}
add38 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat38Plus n) Is (Difference a To (Nat38Plus nPlusA)))
add38 =
    add37 >> add1


{-| The `NNat` plus 39.


-}
add39 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat39Plus n) Is (Difference a To (Nat39Plus nPlusA)))
add39 =
    add38 >> add1


{-| The `NNat` plus 40.


-}
add40 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat40Plus n) Is (Difference a To (Nat40Plus nPlusA)))
add40 =
    add39 >> add1


{-| The `NNat` plus 41.


-}
add41 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat41Plus n) Is (Difference a To (Nat41Plus nPlusA)))
add41 =
    add40 >> add1


{-| The `NNat` plus 42.


-}
add42 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat42Plus n) Is (Difference a To (Nat42Plus nPlusA)))
add42 =
    add41 >> add1


{-| The `NNat` plus 43.


-}
add43 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat43Plus n) Is (Difference a To (Nat43Plus nPlusA)))
add43 =
    add42 >> add1


{-| The `NNat` plus 44.


-}
add44 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat44Plus n) Is (Difference a To (Nat44Plus nPlusA)))
add44 =
    add43 >> add1


{-| The `NNat` plus 45.


-}
add45 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat45Plus n) Is (Difference a To (Nat45Plus nPlusA)))
add45 =
    add44 >> add1


{-| The `NNat` plus 46.


-}
add46 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat46Plus n) Is (Difference a To (Nat46Plus nPlusA)))
add46 =
    add45 >> add1


{-| The `NNat` plus 47.


-}
add47 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat47Plus n) Is (Difference a To (Nat47Plus nPlusA)))
add47 =
    add46 >> add1


{-| The `NNat` plus 48.


-}
add48 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat48Plus n) Is (Difference a To (Nat48Plus nPlusA)))
add48 =
    add47 >> add1


{-| The `NNat` plus 49.


-}
add49 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat49Plus n) Is (Difference a To (Nat49Plus nPlusA)))
add49 =
    add48 >> add1


{-| The `NNat` plus 50.


-}
add50 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat50Plus n) Is (Difference a To (Nat50Plus nPlusA)))
add50 =
    add49 >> add1


{-| The `NNat` plus 51.


-}
add51 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat51Plus n) Is (Difference a To (Nat51Plus nPlusA)))
add51 =
    add50 >> add1


{-| The `NNat` plus 52.


-}
add52 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat52Plus n) Is (Difference a To (Nat52Plus nPlusA)))
add52 =
    add51 >> add1


{-| The `NNat` plus 53.


-}
add53 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat53Plus n) Is (Difference a To (Nat53Plus nPlusA)))
add53 =
    add52 >> add1


{-| The `NNat` plus 54.


-}
add54 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat54Plus n) Is (Difference a To (Nat54Plus nPlusA)))
add54 =
    add53 >> add1


{-| The `NNat` plus 55.


-}
add55 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat55Plus n) Is (Difference a To (Nat55Plus nPlusA)))
add55 =
    add54 >> add1


{-| The `NNat` plus 56.


-}
add56 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat56Plus n) Is (Difference a To (Nat56Plus nPlusA)))
add56 =
    add55 >> add1


{-| The `NNat` plus 57.


-}
add57 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat57Plus n) Is (Difference a To (Nat57Plus nPlusA)))
add57 =
    add56 >> add1


{-| The `NNat` plus 58.


-}
add58 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat58Plus n) Is (Difference a To (Nat58Plus nPlusA)))
add58 =
    add57 >> add1


{-| The `NNat` plus 59.


-}
add59 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat59Plus n) Is (Difference a To (Nat59Plus nPlusA)))
add59 =
    add58 >> add1


{-| The `NNat` plus 60.


-}
add60 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat60Plus n) Is (Difference a To (Nat60Plus nPlusA)))
add60 =
    add59 >> add1


{-| The `NNat` plus 61.


-}
add61 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat61Plus n) Is (Difference a To (Nat61Plus nPlusA)))
add61 =
    add60 >> add1


{-| The `NNat` plus 62.


-}
add62 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat62Plus n) Is (Difference a To (Nat62Plus nPlusA)))
add62 =
    add61 >> add1


{-| The `NNat` plus 63.


-}
add63 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat63Plus n) Is (Difference a To (Nat63Plus nPlusA)))
add63 =
    add62 >> add1


{-| The `NNat` plus 64.


-}
add64 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat64Plus n) Is (Difference a To (Nat64Plus nPlusA)))
add64 =
    add63 >> add1


{-| The `NNat` plus 65.


-}
add65 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat65Plus n) Is (Difference a To (Nat65Plus nPlusA)))
add65 =
    add64 >> add1


{-| The `NNat` plus 66.


-}
add66 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat66Plus n) Is (Difference a To (Nat66Plus nPlusA)))
add66 =
    add65 >> add1


{-| The `NNat` plus 67.


-}
add67 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat67Plus n) Is (Difference a To (Nat67Plus nPlusA)))
add67 =
    add66 >> add1


{-| The `NNat` plus 68.


-}
add68 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat68Plus n) Is (Difference a To (Nat68Plus nPlusA)))
add68 =
    add67 >> add1


{-| The `NNat` plus 69.


-}
add69 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat69Plus n) Is (Difference a To (Nat69Plus nPlusA)))
add69 =
    add68 >> add1


{-| The `NNat` plus 70.


-}
add70 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat70Plus n) Is (Difference a To (Nat70Plus nPlusA)))
add70 =
    add69 >> add1


{-| The `NNat` plus 71.


-}
add71 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat71Plus n) Is (Difference a To (Nat71Plus nPlusA)))
add71 =
    add70 >> add1


{-| The `NNat` plus 72.


-}
add72 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat72Plus n) Is (Difference a To (Nat72Plus nPlusA)))
add72 =
    add71 >> add1


{-| The `NNat` plus 73.


-}
add73 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat73Plus n) Is (Difference a To (Nat73Plus nPlusA)))
add73 =
    add72 >> add1


{-| The `NNat` plus 74.


-}
add74 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat74Plus n) Is (Difference a To (Nat74Plus nPlusA)))
add74 =
    add73 >> add1


{-| The `NNat` plus 75.


-}
add75 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat75Plus n) Is (Difference a To (Nat75Plus nPlusA)))
add75 =
    add74 >> add1


{-| The `NNat` plus 76.


-}
add76 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat76Plus n) Is (Difference a To (Nat76Plus nPlusA)))
add76 =
    add75 >> add1


{-| The `NNat` plus 77.


-}
add77 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat77Plus n) Is (Difference a To (Nat77Plus nPlusA)))
add77 =
    add76 >> add1


{-| The `NNat` plus 78.


-}
add78 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat78Plus n) Is (Difference a To (Nat78Plus nPlusA)))
add78 =
    add77 >> add1


{-| The `NNat` plus 79.


-}
add79 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat79Plus n) Is (Difference a To (Nat79Plus nPlusA)))
add79 =
    add78 >> add1


{-| The `NNat` plus 80.


-}
add80 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat80Plus n) Is (Difference a To (Nat80Plus nPlusA)))
add80 =
    add79 >> add1


{-| The `NNat` plus 81.


-}
add81 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat81Plus n) Is (Difference a To (Nat81Plus nPlusA)))
add81 =
    add80 >> add1


{-| The `NNat` plus 82.


-}
add82 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat82Plus n) Is (Difference a To (Nat82Plus nPlusA)))
add82 =
    add81 >> add1


{-| The `NNat` plus 83.


-}
add83 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat83Plus n) Is (Difference a To (Nat83Plus nPlusA)))
add83 =
    add82 >> add1


{-| The `NNat` plus 84.


-}
add84 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat84Plus n) Is (Difference a To (Nat84Plus nPlusA)))
add84 =
    add83 >> add1


{-| The `NNat` plus 85.


-}
add85 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat85Plus n) Is (Difference a To (Nat85Plus nPlusA)))
add85 =
    add84 >> add1


{-| The `NNat` plus 86.


-}
add86 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat86Plus n) Is (Difference a To (Nat86Plus nPlusA)))
add86 =
    add85 >> add1


{-| The `NNat` plus 87.


-}
add87 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat87Plus n) Is (Difference a To (Nat87Plus nPlusA)))
add87 =
    add86 >> add1


{-| The `NNat` plus 88.


-}
add88 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat88Plus n) Is (Difference a To (Nat88Plus nPlusA)))
add88 =
    add87 >> add1


{-| The `NNat` plus 89.


-}
add89 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat89Plus n) Is (Difference a To (Nat89Plus nPlusA)))
add89 =
    add88 >> add1


{-| The `NNat` plus 90.


-}
add90 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat90Plus n) Is (Difference a To (Nat90Plus nPlusA)))
add90 =
    add89 >> add1


{-| The `NNat` plus 91.


-}
add91 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat91Plus n) Is (Difference a To (Nat91Plus nPlusA)))
add91 =
    add90 >> add1


{-| The `NNat` plus 92.


-}
add92 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat92Plus n) Is (Difference a To (Nat92Plus nPlusA)))
add92 =
    add91 >> add1


{-| The `NNat` plus 93.


-}
add93 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat93Plus n) Is (Difference a To (Nat93Plus nPlusA)))
add93 =
    add92 >> add1


{-| The `NNat` plus 94.


-}
add94 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat94Plus n) Is (Difference a To (Nat94Plus nPlusA)))
add94 =
    add93 >> add1


{-| The `NNat` plus 95.


-}
add95 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat95Plus n) Is (Difference a To (Nat95Plus nPlusA)))
add95 =
    add94 >> add1


{-| The `NNat` plus 96.


-}
add96 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat96Plus n) Is (Difference a To (Nat96Plus nPlusA)))
add96 =
    add95 >> add1


{-| The `NNat` plus 97.


-}
add97 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat97Plus n) Is (Difference a To (Nat97Plus nPlusA)))
add97 =
    add96 >> add1


{-| The `NNat` plus 98.


-}
add98 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat98Plus n) Is (Difference a To (Nat98Plus nPlusA)))
add98 =
    add97 >> add1


{-| The `NNat` plus 99.


-}
add99 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat99Plus n) Is (Difference a To (Nat99Plus nPlusA)))
add99 =
    add98 >> add1


{-| The `NNat` plus 100.


-}
add100 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat100Plus n) Is (Difference a To (Nat100Plus nPlusA)))
add100 =
    add99 >> add1


{-| The `NNat` plus 101.


-}
add101 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat101Plus n) Is (Difference a To (Nat101Plus nPlusA)))
add101 =
    add100 >> add1


{-| The `NNat` plus 102.


-}
add102 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat102Plus n) Is (Difference a To (Nat102Plus nPlusA)))
add102 =
    add101 >> add1


{-| The `NNat` plus 103.


-}
add103 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat103Plus n) Is (Difference a To (Nat103Plus nPlusA)))
add103 =
    add102 >> add1


{-| The `NNat` plus 104.


-}
add104 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat104Plus n) Is (Difference a To (Nat104Plus nPlusA)))
add104 =
    add103 >> add1


{-| The `NNat` plus 105.


-}
add105 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat105Plus n) Is (Difference a To (Nat105Plus nPlusA)))
add105 =
    add104 >> add1


{-| The `NNat` plus 106.


-}
add106 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat106Plus n) Is (Difference a To (Nat106Plus nPlusA)))
add106 =
    add105 >> add1


{-| The `NNat` plus 107.


-}
add107 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat107Plus n) Is (Difference a To (Nat107Plus nPlusA)))
add107 =
    add106 >> add1


{-| The `NNat` plus 108.


-}
add108 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat108Plus n) Is (Difference a To (Nat108Plus nPlusA)))
add108 =
    add107 >> add1


{-| The `NNat` plus 109.


-}
add109 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat109Plus n) Is (Difference a To (Nat109Plus nPlusA)))
add109 =
    add108 >> add1


{-| The `NNat` plus 110.


-}
add110 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat110Plus n) Is (Difference a To (Nat110Plus nPlusA)))
add110 =
    add109 >> add1


{-| The `NNat` plus 111.


-}
add111 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat111Plus n) Is (Difference a To (Nat111Plus nPlusA)))
add111 =
    add110 >> add1


{-| The `NNat` plus 112.


-}
add112 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat112Plus n) Is (Difference a To (Nat112Plus nPlusA)))
add112 =
    add111 >> add1


{-| The `NNat` plus 113.


-}
add113 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat113Plus n) Is (Difference a To (Nat113Plus nPlusA)))
add113 =
    add112 >> add1


{-| The `NNat` plus 114.


-}
add114 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat114Plus n) Is (Difference a To (Nat114Plus nPlusA)))
add114 =
    add113 >> add1


{-| The `NNat` plus 115.


-}
add115 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat115Plus n) Is (Difference a To (Nat115Plus nPlusA)))
add115 =
    add114 >> add1


{-| The `NNat` plus 116.


-}
add116 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat116Plus n) Is (Difference a To (Nat116Plus nPlusA)))
add116 =
    add115 >> add1


{-| The `NNat` plus 117.


-}
add117 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat117Plus n) Is (Difference a To (Nat117Plus nPlusA)))
add117 =
    add116 >> add1


{-| The `NNat` plus 118.


-}
add118 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat118Plus n) Is (Difference a To (Nat118Plus nPlusA)))
add118 =
    add117 >> add1


{-| The `NNat` plus 119.


-}
add119 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat119Plus n) Is (Difference a To (Nat119Plus nPlusA)))
add119 =
    add118 >> add1


{-| The `NNat` plus 120.


-}
add120 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat120Plus n) Is (Difference a To (Nat120Plus nPlusA)))
add120 =
    add119 >> add1


{-| The `NNat` plus 121.


-}
add121 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat121Plus n) Is (Difference a To (Nat121Plus nPlusA)))
add121 =
    add120 >> add1


{-| The `NNat` plus 122.


-}
add122 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat122Plus n) Is (Difference a To (Nat122Plus nPlusA)))
add122 =
    add121 >> add1


{-| The `NNat` plus 123.


-}
add123 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat123Plus n) Is (Difference a To (Nat123Plus nPlusA)))
add123 =
    add122 >> add1


{-| The `NNat` plus 124.


-}
add124 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat124Plus n) Is (Difference a To (Nat124Plus nPlusA)))
add124 =
    add123 >> add1


{-| The `NNat` plus 125.


-}
add125 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat125Plus n) Is (Difference a To (Nat125Plus nPlusA)))
add125 =
    add124 >> add1


{-| The `NNat` plus 126.


-}
add126 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat126Plus n) Is (Difference a To (Nat126Plus nPlusA)))
add126 =
    add125 >> add1


{-| The `NNat` plus 127.


-}
add127 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat127Plus n) Is (Difference a To (Nat127Plus nPlusA)))
add127 =
    add126 >> add1


{-| The `NNat` plus 128.


-}
add128 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (Nat128Plus n) Is (Difference a To (Nat128Plus nPlusA)))
add128 =
    add127 >> add1


{-| The NNat minus 1.


-}
sub1 :
    NNat (N (Nat1Plus nMinus1) Is (Difference a To (Nat1Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub1 =
    Internal.sub1


{-| The NNat minus 2.


-}
sub2 :
    NNat (N (Nat2Plus nMinus1) Is (Difference a To (Nat2Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub2 =
    sub1 >> sub1


{-| The NNat minus 3.


-}
sub3 :
    NNat (N (Nat3Plus nMinus1) Is (Difference a To (Nat3Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub3 =
    sub2 >> sub1


{-| The NNat minus 4.


-}
sub4 :
    NNat (N (Nat4Plus nMinus1) Is (Difference a To (Nat4Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub4 =
    sub3 >> sub1


{-| The NNat minus 5.


-}
sub5 :
    NNat (N (Nat5Plus nMinus1) Is (Difference a To (Nat5Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub5 =
    sub4 >> sub1


{-| The NNat minus 6.


-}
sub6 :
    NNat (N (Nat6Plus nMinus1) Is (Difference a To (Nat6Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub6 =
    sub5 >> sub1


{-| The NNat minus 7.


-}
sub7 :
    NNat (N (Nat7Plus nMinus1) Is (Difference a To (Nat7Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub7 =
    sub6 >> sub1


{-| The NNat minus 8.


-}
sub8 :
    NNat (N (Nat8Plus nMinus1) Is (Difference a To (Nat8Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub8 =
    sub7 >> sub1


{-| The NNat minus 9.


-}
sub9 :
    NNat (N (Nat9Plus nMinus1) Is (Difference a To (Nat9Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub9 =
    sub8 >> sub1


{-| The NNat minus 10.


-}
sub10 :
    NNat (N (Nat10Plus nMinus1) Is (Difference a To (Nat10Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub10 =
    sub9 >> sub1


{-| The NNat minus 11.


-}
sub11 :
    NNat (N (Nat11Plus nMinus1) Is (Difference a To (Nat11Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub11 =
    sub10 >> sub1


{-| The NNat minus 12.


-}
sub12 :
    NNat (N (Nat12Plus nMinus1) Is (Difference a To (Nat12Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub12 =
    sub11 >> sub1


{-| The NNat minus 13.


-}
sub13 :
    NNat (N (Nat13Plus nMinus1) Is (Difference a To (Nat13Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub13 =
    sub12 >> sub1


{-| The NNat minus 14.


-}
sub14 :
    NNat (N (Nat14Plus nMinus1) Is (Difference a To (Nat14Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub14 =
    sub13 >> sub1


{-| The NNat minus 15.


-}
sub15 :
    NNat (N (Nat15Plus nMinus1) Is (Difference a To (Nat15Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub15 =
    sub14 >> sub1


{-| The NNat minus 16.


-}
sub16 :
    NNat (N (Nat16Plus nMinus1) Is (Difference a To (Nat16Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub16 =
    sub15 >> sub1


{-| The NNat minus 17.


-}
sub17 :
    NNat (N (Nat17Plus nMinus1) Is (Difference a To (Nat17Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub17 =
    sub16 >> sub1


{-| The NNat minus 18.


-}
sub18 :
    NNat (N (Nat18Plus nMinus1) Is (Difference a To (Nat18Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub18 =
    sub17 >> sub1


{-| The NNat minus 19.


-}
sub19 :
    NNat (N (Nat19Plus nMinus1) Is (Difference a To (Nat19Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub19 =
    sub18 >> sub1


{-| The NNat minus 20.


-}
sub20 :
    NNat (N (Nat20Plus nMinus1) Is (Difference a To (Nat20Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub20 =
    sub19 >> sub1


{-| The NNat minus 21.


-}
sub21 :
    NNat (N (Nat21Plus nMinus1) Is (Difference a To (Nat21Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub21 =
    sub20 >> sub1


{-| The NNat minus 22.


-}
sub22 :
    NNat (N (Nat22Plus nMinus1) Is (Difference a To (Nat22Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub22 =
    sub21 >> sub1


{-| The NNat minus 23.


-}
sub23 :
    NNat (N (Nat23Plus nMinus1) Is (Difference a To (Nat23Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub23 =
    sub22 >> sub1


{-| The NNat minus 24.


-}
sub24 :
    NNat (N (Nat24Plus nMinus1) Is (Difference a To (Nat24Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub24 =
    sub23 >> sub1


{-| The NNat minus 25.


-}
sub25 :
    NNat (N (Nat25Plus nMinus1) Is (Difference a To (Nat25Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub25 =
    sub24 >> sub1


{-| The NNat minus 26.


-}
sub26 :
    NNat (N (Nat26Plus nMinus1) Is (Difference a To (Nat26Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub26 =
    sub25 >> sub1


{-| The NNat minus 27.


-}
sub27 :
    NNat (N (Nat27Plus nMinus1) Is (Difference a To (Nat27Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub27 =
    sub26 >> sub1


{-| The NNat minus 28.


-}
sub28 :
    NNat (N (Nat28Plus nMinus1) Is (Difference a To (Nat28Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub28 =
    sub27 >> sub1


{-| The NNat minus 29.


-}
sub29 :
    NNat (N (Nat29Plus nMinus1) Is (Difference a To (Nat29Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub29 =
    sub28 >> sub1


{-| The NNat minus 30.


-}
sub30 :
    NNat (N (Nat30Plus nMinus1) Is (Difference a To (Nat30Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub30 =
    sub29 >> sub1


{-| The NNat minus 31.


-}
sub31 :
    NNat (N (Nat31Plus nMinus1) Is (Difference a To (Nat31Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub31 =
    sub30 >> sub1


{-| The NNat minus 32.


-}
sub32 :
    NNat (N (Nat32Plus nMinus1) Is (Difference a To (Nat32Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub32 =
    sub31 >> sub1


{-| The NNat minus 33.


-}
sub33 :
    NNat (N (Nat33Plus nMinus1) Is (Difference a To (Nat33Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub33 =
    sub32 >> sub1


{-| The NNat minus 34.


-}
sub34 :
    NNat (N (Nat34Plus nMinus1) Is (Difference a To (Nat34Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub34 =
    sub33 >> sub1


{-| The NNat minus 35.


-}
sub35 :
    NNat (N (Nat35Plus nMinus1) Is (Difference a To (Nat35Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub35 =
    sub34 >> sub1


{-| The NNat minus 36.


-}
sub36 :
    NNat (N (Nat36Plus nMinus1) Is (Difference a To (Nat36Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub36 =
    sub35 >> sub1


{-| The NNat minus 37.


-}
sub37 :
    NNat (N (Nat37Plus nMinus1) Is (Difference a To (Nat37Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub37 =
    sub36 >> sub1


{-| The NNat minus 38.


-}
sub38 :
    NNat (N (Nat38Plus nMinus1) Is (Difference a To (Nat38Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub38 =
    sub37 >> sub1


{-| The NNat minus 39.


-}
sub39 :
    NNat (N (Nat39Plus nMinus1) Is (Difference a To (Nat39Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub39 =
    sub38 >> sub1


{-| The NNat minus 40.


-}
sub40 :
    NNat (N (Nat40Plus nMinus1) Is (Difference a To (Nat40Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub40 =
    sub39 >> sub1


{-| The NNat minus 41.


-}
sub41 :
    NNat (N (Nat41Plus nMinus1) Is (Difference a To (Nat41Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub41 =
    sub40 >> sub1


{-| The NNat minus 42.


-}
sub42 :
    NNat (N (Nat42Plus nMinus1) Is (Difference a To (Nat42Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub42 =
    sub41 >> sub1


{-| The NNat minus 43.


-}
sub43 :
    NNat (N (Nat43Plus nMinus1) Is (Difference a To (Nat43Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub43 =
    sub42 >> sub1


{-| The NNat minus 44.


-}
sub44 :
    NNat (N (Nat44Plus nMinus1) Is (Difference a To (Nat44Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub44 =
    sub43 >> sub1


{-| The NNat minus 45.


-}
sub45 :
    NNat (N (Nat45Plus nMinus1) Is (Difference a To (Nat45Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub45 =
    sub44 >> sub1


{-| The NNat minus 46.


-}
sub46 :
    NNat (N (Nat46Plus nMinus1) Is (Difference a To (Nat46Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub46 =
    sub45 >> sub1


{-| The NNat minus 47.


-}
sub47 :
    NNat (N (Nat47Plus nMinus1) Is (Difference a To (Nat47Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub47 =
    sub46 >> sub1


{-| The NNat minus 48.


-}
sub48 :
    NNat (N (Nat48Plus nMinus1) Is (Difference a To (Nat48Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub48 =
    sub47 >> sub1


{-| The NNat minus 49.


-}
sub49 :
    NNat (N (Nat49Plus nMinus1) Is (Difference a To (Nat49Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub49 =
    sub48 >> sub1


{-| The NNat minus 50.


-}
sub50 :
    NNat (N (Nat50Plus nMinus1) Is (Difference a To (Nat50Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub50 =
    sub49 >> sub1


{-| The NNat minus 51.


-}
sub51 :
    NNat (N (Nat51Plus nMinus1) Is (Difference a To (Nat51Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub51 =
    sub50 >> sub1


{-| The NNat minus 52.


-}
sub52 :
    NNat (N (Nat52Plus nMinus1) Is (Difference a To (Nat52Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub52 =
    sub51 >> sub1


{-| The NNat minus 53.


-}
sub53 :
    NNat (N (Nat53Plus nMinus1) Is (Difference a To (Nat53Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub53 =
    sub52 >> sub1


{-| The NNat minus 54.


-}
sub54 :
    NNat (N (Nat54Plus nMinus1) Is (Difference a To (Nat54Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub54 =
    sub53 >> sub1


{-| The NNat minus 55.


-}
sub55 :
    NNat (N (Nat55Plus nMinus1) Is (Difference a To (Nat55Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub55 =
    sub54 >> sub1


{-| The NNat minus 56.


-}
sub56 :
    NNat (N (Nat56Plus nMinus1) Is (Difference a To (Nat56Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub56 =
    sub55 >> sub1


{-| The NNat minus 57.


-}
sub57 :
    NNat (N (Nat57Plus nMinus1) Is (Difference a To (Nat57Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub57 =
    sub56 >> sub1


{-| The NNat minus 58.


-}
sub58 :
    NNat (N (Nat58Plus nMinus1) Is (Difference a To (Nat58Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub58 =
    sub57 >> sub1


{-| The NNat minus 59.


-}
sub59 :
    NNat (N (Nat59Plus nMinus1) Is (Difference a To (Nat59Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub59 =
    sub58 >> sub1


{-| The NNat minus 60.


-}
sub60 :
    NNat (N (Nat60Plus nMinus1) Is (Difference a To (Nat60Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub60 =
    sub59 >> sub1


{-| The NNat minus 61.


-}
sub61 :
    NNat (N (Nat61Plus nMinus1) Is (Difference a To (Nat61Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub61 =
    sub60 >> sub1


{-| The NNat minus 62.


-}
sub62 :
    NNat (N (Nat62Plus nMinus1) Is (Difference a To (Nat62Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub62 =
    sub61 >> sub1


{-| The NNat minus 63.


-}
sub63 :
    NNat (N (Nat63Plus nMinus1) Is (Difference a To (Nat63Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub63 =
    sub62 >> sub1


{-| The NNat minus 64.


-}
sub64 :
    NNat (N (Nat64Plus nMinus1) Is (Difference a To (Nat64Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub64 =
    sub63 >> sub1


{-| The NNat minus 65.


-}
sub65 :
    NNat (N (Nat65Plus nMinus1) Is (Difference a To (Nat65Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub65 =
    sub64 >> sub1


{-| The NNat minus 66.


-}
sub66 :
    NNat (N (Nat66Plus nMinus1) Is (Difference a To (Nat66Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub66 =
    sub65 >> sub1


{-| The NNat minus 67.


-}
sub67 :
    NNat (N (Nat67Plus nMinus1) Is (Difference a To (Nat67Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub67 =
    sub66 >> sub1


{-| The NNat minus 68.


-}
sub68 :
    NNat (N (Nat68Plus nMinus1) Is (Difference a To (Nat68Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub68 =
    sub67 >> sub1


{-| The NNat minus 69.


-}
sub69 :
    NNat (N (Nat69Plus nMinus1) Is (Difference a To (Nat69Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub69 =
    sub68 >> sub1


{-| The NNat minus 70.


-}
sub70 :
    NNat (N (Nat70Plus nMinus1) Is (Difference a To (Nat70Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub70 =
    sub69 >> sub1


{-| The NNat minus 71.


-}
sub71 :
    NNat (N (Nat71Plus nMinus1) Is (Difference a To (Nat71Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub71 =
    sub70 >> sub1


{-| The NNat minus 72.


-}
sub72 :
    NNat (N (Nat72Plus nMinus1) Is (Difference a To (Nat72Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub72 =
    sub71 >> sub1


{-| The NNat minus 73.


-}
sub73 :
    NNat (N (Nat73Plus nMinus1) Is (Difference a To (Nat73Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub73 =
    sub72 >> sub1


{-| The NNat minus 74.


-}
sub74 :
    NNat (N (Nat74Plus nMinus1) Is (Difference a To (Nat74Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub74 =
    sub73 >> sub1


{-| The NNat minus 75.


-}
sub75 :
    NNat (N (Nat75Plus nMinus1) Is (Difference a To (Nat75Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub75 =
    sub74 >> sub1


{-| The NNat minus 76.


-}
sub76 :
    NNat (N (Nat76Plus nMinus1) Is (Difference a To (Nat76Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub76 =
    sub75 >> sub1


{-| The NNat minus 77.


-}
sub77 :
    NNat (N (Nat77Plus nMinus1) Is (Difference a To (Nat77Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub77 =
    sub76 >> sub1


{-| The NNat minus 78.


-}
sub78 :
    NNat (N (Nat78Plus nMinus1) Is (Difference a To (Nat78Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub78 =
    sub77 >> sub1


{-| The NNat minus 79.


-}
sub79 :
    NNat (N (Nat79Plus nMinus1) Is (Difference a To (Nat79Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub79 =
    sub78 >> sub1


{-| The NNat minus 80.


-}
sub80 :
    NNat (N (Nat80Plus nMinus1) Is (Difference a To (Nat80Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub80 =
    sub79 >> sub1


{-| The NNat minus 81.


-}
sub81 :
    NNat (N (Nat81Plus nMinus1) Is (Difference a To (Nat81Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub81 =
    sub80 >> sub1


{-| The NNat minus 82.


-}
sub82 :
    NNat (N (Nat82Plus nMinus1) Is (Difference a To (Nat82Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub82 =
    sub81 >> sub1


{-| The NNat minus 83.


-}
sub83 :
    NNat (N (Nat83Plus nMinus1) Is (Difference a To (Nat83Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub83 =
    sub82 >> sub1


{-| The NNat minus 84.


-}
sub84 :
    NNat (N (Nat84Plus nMinus1) Is (Difference a To (Nat84Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub84 =
    sub83 >> sub1


{-| The NNat minus 85.


-}
sub85 :
    NNat (N (Nat85Plus nMinus1) Is (Difference a To (Nat85Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub85 =
    sub84 >> sub1


{-| The NNat minus 86.


-}
sub86 :
    NNat (N (Nat86Plus nMinus1) Is (Difference a To (Nat86Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub86 =
    sub85 >> sub1


{-| The NNat minus 87.


-}
sub87 :
    NNat (N (Nat87Plus nMinus1) Is (Difference a To (Nat87Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub87 =
    sub86 >> sub1


{-| The NNat minus 88.


-}
sub88 :
    NNat (N (Nat88Plus nMinus1) Is (Difference a To (Nat88Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub88 =
    sub87 >> sub1


{-| The NNat minus 89.


-}
sub89 :
    NNat (N (Nat89Plus nMinus1) Is (Difference a To (Nat89Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub89 =
    sub88 >> sub1


{-| The NNat minus 90.


-}
sub90 :
    NNat (N (Nat90Plus nMinus1) Is (Difference a To (Nat90Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub90 =
    sub89 >> sub1


{-| The NNat minus 91.


-}
sub91 :
    NNat (N (Nat91Plus nMinus1) Is (Difference a To (Nat91Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub91 =
    sub90 >> sub1


{-| The NNat minus 92.


-}
sub92 :
    NNat (N (Nat92Plus nMinus1) Is (Difference a To (Nat92Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub92 =
    sub91 >> sub1


{-| The NNat minus 93.


-}
sub93 :
    NNat (N (Nat93Plus nMinus1) Is (Difference a To (Nat93Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub93 =
    sub92 >> sub1


{-| The NNat minus 94.


-}
sub94 :
    NNat (N (Nat94Plus nMinus1) Is (Difference a To (Nat94Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub94 =
    sub93 >> sub1


{-| The NNat minus 95.


-}
sub95 :
    NNat (N (Nat95Plus nMinus1) Is (Difference a To (Nat95Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub95 =
    sub94 >> sub1


{-| The NNat minus 96.


-}
sub96 :
    NNat (N (Nat96Plus nMinus1) Is (Difference a To (Nat96Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub96 =
    sub95 >> sub1


{-| The NNat minus 97.


-}
sub97 :
    NNat (N (Nat97Plus nMinus1) Is (Difference a To (Nat97Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub97 =
    sub96 >> sub1


{-| The NNat minus 98.


-}
sub98 :
    NNat (N (Nat98Plus nMinus1) Is (Difference a To (Nat98Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub98 =
    sub97 >> sub1


{-| The NNat minus 99.


-}
sub99 :
    NNat (N (Nat99Plus nMinus1) Is (Difference a To (Nat99Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub99 =
    sub98 >> sub1


{-| The NNat minus 100.


-}
sub100 :
    NNat (N (Nat100Plus nMinus1) Is (Difference a To (Nat100Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub100 =
    sub99 >> sub1


{-| The NNat minus 101.


-}
sub101 :
    NNat (N (Nat101Plus nMinus1) Is (Difference a To (Nat101Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub101 =
    sub100 >> sub1


{-| The NNat minus 102.


-}
sub102 :
    NNat (N (Nat102Plus nMinus1) Is (Difference a To (Nat102Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub102 =
    sub101 >> sub1


{-| The NNat minus 103.


-}
sub103 :
    NNat (N (Nat103Plus nMinus1) Is (Difference a To (Nat103Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub103 =
    sub102 >> sub1


{-| The NNat minus 104.


-}
sub104 :
    NNat (N (Nat104Plus nMinus1) Is (Difference a To (Nat104Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub104 =
    sub103 >> sub1


{-| The NNat minus 105.


-}
sub105 :
    NNat (N (Nat105Plus nMinus1) Is (Difference a To (Nat105Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub105 =
    sub104 >> sub1


{-| The NNat minus 106.


-}
sub106 :
    NNat (N (Nat106Plus nMinus1) Is (Difference a To (Nat106Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub106 =
    sub105 >> sub1


{-| The NNat minus 107.


-}
sub107 :
    NNat (N (Nat107Plus nMinus1) Is (Difference a To (Nat107Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub107 =
    sub106 >> sub1


{-| The NNat minus 108.


-}
sub108 :
    NNat (N (Nat108Plus nMinus1) Is (Difference a To (Nat108Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub108 =
    sub107 >> sub1


{-| The NNat minus 109.


-}
sub109 :
    NNat (N (Nat109Plus nMinus1) Is (Difference a To (Nat109Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub109 =
    sub108 >> sub1


{-| The NNat minus 110.


-}
sub110 :
    NNat (N (Nat110Plus nMinus1) Is (Difference a To (Nat110Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub110 =
    sub109 >> sub1


{-| The NNat minus 111.


-}
sub111 :
    NNat (N (Nat111Plus nMinus1) Is (Difference a To (Nat111Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub111 =
    sub110 >> sub1


{-| The NNat minus 112.


-}
sub112 :
    NNat (N (Nat112Plus nMinus1) Is (Difference a To (Nat112Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub112 =
    sub111 >> sub1


{-| The NNat minus 113.


-}
sub113 :
    NNat (N (Nat113Plus nMinus1) Is (Difference a To (Nat113Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub113 =
    sub112 >> sub1


{-| The NNat minus 114.


-}
sub114 :
    NNat (N (Nat114Plus nMinus1) Is (Difference a To (Nat114Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub114 =
    sub113 >> sub1


{-| The NNat minus 115.


-}
sub115 :
    NNat (N (Nat115Plus nMinus1) Is (Difference a To (Nat115Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub115 =
    sub114 >> sub1


{-| The NNat minus 116.


-}
sub116 :
    NNat (N (Nat116Plus nMinus1) Is (Difference a To (Nat116Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub116 =
    sub115 >> sub1


{-| The NNat minus 117.


-}
sub117 :
    NNat (N (Nat117Plus nMinus1) Is (Difference a To (Nat117Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub117 =
    sub116 >> sub1


{-| The NNat minus 118.


-}
sub118 :
    NNat (N (Nat118Plus nMinus1) Is (Difference a To (Nat118Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub118 =
    sub117 >> sub1


{-| The NNat minus 119.


-}
sub119 :
    NNat (N (Nat119Plus nMinus1) Is (Difference a To (Nat119Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub119 =
    sub118 >> sub1


{-| The NNat minus 120.


-}
sub120 :
    NNat (N (Nat120Plus nMinus1) Is (Difference a To (Nat120Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub120 =
    sub119 >> sub1


{-| The NNat minus 121.


-}
sub121 :
    NNat (N (Nat121Plus nMinus1) Is (Difference a To (Nat121Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub121 =
    sub120 >> sub1


{-| The NNat minus 122.


-}
sub122 :
    NNat (N (Nat122Plus nMinus1) Is (Difference a To (Nat122Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub122 =
    sub121 >> sub1


{-| The NNat minus 123.


-}
sub123 :
    NNat (N (Nat123Plus nMinus1) Is (Difference a To (Nat123Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub123 =
    sub122 >> sub1


{-| The NNat minus 124.


-}
sub124 :
    NNat (N (Nat124Plus nMinus1) Is (Difference a To (Nat124Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub124 =
    sub123 >> sub1


{-| The NNat minus 125.


-}
sub125 :
    NNat (N (Nat125Plus nMinus1) Is (Difference a To (Nat125Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub125 =
    sub124 >> sub1


{-| The NNat minus 126.


-}
sub126 :
    NNat (N (Nat126Plus nMinus1) Is (Difference a To (Nat126Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub126 =
    sub125 >> sub1


{-| The NNat minus 127.


-}
sub127 :
    NNat (N (Nat127Plus nMinus1) Is (Difference a To (Nat127Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub127 =
    sub126 >> sub1


{-| The NNat minus 128.


-}
sub128 :
    NNat (N (Nat128Plus nMinus1) Is (Difference a To (Nat128Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub128 =
    sub127 >> sub1
