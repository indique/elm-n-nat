module NNat exposing (NNat, add1, add10, add100, add101, add102, add103, add104, add105, add106, add107, add108, add109, add11, add110, add111, add112, add113, add114, add115, add116, add117, add118, add119, add12, add120, add121, add122, add123, add124, add125, add126, add127, add128, add13, add14, add15, add16, add17, add18, add19, add2, add20, add21, add22, add23, add24, add25, add26, add27, add28, add29, add3, add30, add31, add32, add33, add34, add35, add36, add37, add38, add39, add4, add40, add41, add42, add43, add44, add45, add46, add47, add48, add49, add5, add50, add51, add52, add53, add54, add55, add56, add57, add58, add59, add6, add60, add61, add62, add63, add64, add65, add66, add67, add68, add69, add7, add70, add71, add72, add73, add74, add75, add76, add77, add78, add79, add8, add80, add81, add82, add83, add84, add85, add86, add87, add88, add89, add9, add90, add91, add92, add93, add94, add95, add96, add97, add98, add99, n0, n1, n10, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n11, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n12, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n13, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n14, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n15, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n16, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n17, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n18, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n19, n190, n191, n192, n2, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n3, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n4, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n5, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n6, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n7, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n8, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n9, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, sub1, sub10, sub100, sub101, sub102, sub103, sub104, sub105, sub106, sub107, sub108, sub109, sub11, sub110, sub111, sub112, sub113, sub114, sub115, sub116, sub117, sub118, sub119, sub12, sub120, sub121, sub122, sub123, sub124, sub125, sub126, sub127, sub128, sub13, sub14, sub15, sub16, sub17, sub18, sub19, sub2, sub20, sub21, sub22, sub23, sub24, sub25, sub26, sub27, sub28, sub29, sub3, sub30, sub31, sub32, sub33, sub34, sub35, sub36, sub37, sub38, sub39, sub4, sub40, sub41, sub42, sub43, sub44, sub45, sub46, sub47, sub48, sub49, sub5, sub50, sub51, sub52, sub53, sub54, sub55, sub56, sub57, sub58, sub59, sub6, sub60, sub61, sub62, sub63, sub64, sub65, sub66, sub67, sub68, sub69, sub7, sub70, sub71, sub72, sub73, sub74, sub75, sub76, sub77, sub78, sub79, sub8, sub80, sub81, sub82, sub83, sub84, sub85, sub86, sub87, sub88, sub89, sub9, sub90, sub91, sub92, sub93, sub94, sub95, sub96, sub97, sub98, sub99, toInt)

{-| Representing natural numbers (`>=0`).


This module lets you represent exact values in the `NNat` type.


This means, packages like [elm-n-array][elm-n-array] can use a `NNat` to promise:


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


@docs NNat
## transform


@docs toInt
## values


@docs n0, n1, n10, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n11, n110, n111, n112
@docs n113, n114, n115, n116, n117, n118, n119, n12, n120, n121, n122, n123, n124, n125, n126, n127
@docs n128, n129, n13, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n14, n140, n141
@docs n142, n143, n144, n145, n146, n147, n148, n149, n15, n150, n151, n152, n153, n154, n155, n156
@docs n157, n158, n159, n16, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n17, n170
@docs n171, n172, n173, n174, n175, n176, n177, n178, n179, n18, n180, n181, n182, n183, n184, n185
@docs n186, n187, n188, n189, n19, n190, n191, n192, n2, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29
@docs n3, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n4, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49
@docs n5, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n6, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69
@docs n7, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n8, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89
@docs n9, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99
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
[elm-n-array]: https://package.elm-lang.org/packages/indique/elm-n-array/latest/


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


{-| The `NNat` 0.


-}
n0 : NNat (N N0Nat Is (Difference a To a))
n0 =
    Internal.zero


{-| The `NNat` 1.


-}
n1 : NNat (N N1Nat Is (Difference a To (N1NatPlus a)))
n1 =
    n0 |> add1


{-| The `NNat` 2.


-}
n2 : NNat (N N2Nat Is (Difference a To (N2NatPlus a)))
n2 =
    n1 |> add1


{-| The `NNat` 3.


-}
n3 : NNat (N N3Nat Is (Difference a To (N3NatPlus a)))
n3 =
    n2 |> add1


{-| The `NNat` 4.


-}
n4 : NNat (N N4Nat Is (Difference a To (N4NatPlus a)))
n4 =
    n3 |> add1


{-| The `NNat` 5.


-}
n5 : NNat (N N5Nat Is (Difference a To (N5NatPlus a)))
n5 =
    n4 |> add1


{-| The `NNat` 6.


-}
n6 : NNat (N N6Nat Is (Difference a To (N6NatPlus a)))
n6 =
    n5 |> add1


{-| The `NNat` 7.


-}
n7 : NNat (N N7Nat Is (Difference a To (N7NatPlus a)))
n7 =
    n6 |> add1


{-| The `NNat` 8.


-}
n8 : NNat (N N8Nat Is (Difference a To (N8NatPlus a)))
n8 =
    n7 |> add1


{-| The `NNat` 9.


-}
n9 : NNat (N N9Nat Is (Difference a To (N9NatPlus a)))
n9 =
    n8 |> add1


{-| The `NNat` 10.


-}
n10 : NNat (N N10Nat Is (Difference a To (N10NatPlus a)))
n10 =
    n9 |> add1


{-| The `NNat` 11.


-}
n11 : NNat (N N11Nat Is (Difference a To (N11NatPlus a)))
n11 =
    n10 |> add1


{-| The `NNat` 12.


-}
n12 : NNat (N N12Nat Is (Difference a To (N12NatPlus a)))
n12 =
    n11 |> add1


{-| The `NNat` 13.


-}
n13 : NNat (N N13Nat Is (Difference a To (N13NatPlus a)))
n13 =
    n12 |> add1


{-| The `NNat` 14.


-}
n14 : NNat (N N14Nat Is (Difference a To (N14NatPlus a)))
n14 =
    n13 |> add1


{-| The `NNat` 15.


-}
n15 : NNat (N N15Nat Is (Difference a To (N15NatPlus a)))
n15 =
    n14 |> add1


{-| The `NNat` 16.


-}
n16 : NNat (N N16Nat Is (Difference a To (N16NatPlus a)))
n16 =
    n15 |> add1


{-| The `NNat` 17.


-}
n17 : NNat (N N17Nat Is (Difference a To (N17NatPlus a)))
n17 =
    n16 |> add1


{-| The `NNat` 18.


-}
n18 : NNat (N N18Nat Is (Difference a To (N18NatPlus a)))
n18 =
    n17 |> add1


{-| The `NNat` 19.


-}
n19 : NNat (N N19Nat Is (Difference a To (N19NatPlus a)))
n19 =
    n18 |> add1


{-| The `NNat` 20.


-}
n20 : NNat (N N20Nat Is (Difference a To (N20NatPlus a)))
n20 =
    n19 |> add1


{-| The `NNat` 21.


-}
n21 : NNat (N N21Nat Is (Difference a To (N21NatPlus a)))
n21 =
    n20 |> add1


{-| The `NNat` 22.


-}
n22 : NNat (N N22Nat Is (Difference a To (N22NatPlus a)))
n22 =
    n21 |> add1


{-| The `NNat` 23.


-}
n23 : NNat (N N23Nat Is (Difference a To (N23NatPlus a)))
n23 =
    n22 |> add1


{-| The `NNat` 24.


-}
n24 : NNat (N N24Nat Is (Difference a To (N24NatPlus a)))
n24 =
    n23 |> add1


{-| The `NNat` 25.


-}
n25 : NNat (N N25Nat Is (Difference a To (N25NatPlus a)))
n25 =
    n24 |> add1


{-| The `NNat` 26.


-}
n26 : NNat (N N26Nat Is (Difference a To (N26NatPlus a)))
n26 =
    n25 |> add1


{-| The `NNat` 27.


-}
n27 : NNat (N N27Nat Is (Difference a To (N27NatPlus a)))
n27 =
    n26 |> add1


{-| The `NNat` 28.


-}
n28 : NNat (N N28Nat Is (Difference a To (N28NatPlus a)))
n28 =
    n27 |> add1


{-| The `NNat` 29.


-}
n29 : NNat (N N29Nat Is (Difference a To (N29NatPlus a)))
n29 =
    n28 |> add1


{-| The `NNat` 30.


-}
n30 : NNat (N N30Nat Is (Difference a To (N30NatPlus a)))
n30 =
    n29 |> add1


{-| The `NNat` 31.


-}
n31 : NNat (N N31Nat Is (Difference a To (N31NatPlus a)))
n31 =
    n30 |> add1


{-| The `NNat` 32.


-}
n32 : NNat (N N32Nat Is (Difference a To (N32NatPlus a)))
n32 =
    n31 |> add1


{-| The `NNat` 33.


-}
n33 : NNat (N N33Nat Is (Difference a To (N33NatPlus a)))
n33 =
    n32 |> add1


{-| The `NNat` 34.


-}
n34 : NNat (N N34Nat Is (Difference a To (N34NatPlus a)))
n34 =
    n33 |> add1


{-| The `NNat` 35.


-}
n35 : NNat (N N35Nat Is (Difference a To (N35NatPlus a)))
n35 =
    n34 |> add1


{-| The `NNat` 36.


-}
n36 : NNat (N N36Nat Is (Difference a To (N36NatPlus a)))
n36 =
    n35 |> add1


{-| The `NNat` 37.


-}
n37 : NNat (N N37Nat Is (Difference a To (N37NatPlus a)))
n37 =
    n36 |> add1


{-| The `NNat` 38.


-}
n38 : NNat (N N38Nat Is (Difference a To (N38NatPlus a)))
n38 =
    n37 |> add1


{-| The `NNat` 39.


-}
n39 : NNat (N N39Nat Is (Difference a To (N39NatPlus a)))
n39 =
    n38 |> add1


{-| The `NNat` 40.


-}
n40 : NNat (N N40Nat Is (Difference a To (N40NatPlus a)))
n40 =
    n39 |> add1


{-| The `NNat` 41.


-}
n41 : NNat (N N41Nat Is (Difference a To (N41NatPlus a)))
n41 =
    n40 |> add1


{-| The `NNat` 42.


-}
n42 : NNat (N N42Nat Is (Difference a To (N42NatPlus a)))
n42 =
    n41 |> add1


{-| The `NNat` 43.


-}
n43 : NNat (N N43Nat Is (Difference a To (N43NatPlus a)))
n43 =
    n42 |> add1


{-| The `NNat` 44.


-}
n44 : NNat (N N44Nat Is (Difference a To (N44NatPlus a)))
n44 =
    n43 |> add1


{-| The `NNat` 45.


-}
n45 : NNat (N N45Nat Is (Difference a To (N45NatPlus a)))
n45 =
    n44 |> add1


{-| The `NNat` 46.


-}
n46 : NNat (N N46Nat Is (Difference a To (N46NatPlus a)))
n46 =
    n45 |> add1


{-| The `NNat` 47.


-}
n47 : NNat (N N47Nat Is (Difference a To (N47NatPlus a)))
n47 =
    n46 |> add1


{-| The `NNat` 48.


-}
n48 : NNat (N N48Nat Is (Difference a To (N48NatPlus a)))
n48 =
    n47 |> add1


{-| The `NNat` 49.


-}
n49 : NNat (N N49Nat Is (Difference a To (N49NatPlus a)))
n49 =
    n48 |> add1


{-| The `NNat` 50.


-}
n50 : NNat (N N50Nat Is (Difference a To (N50NatPlus a)))
n50 =
    n49 |> add1


{-| The `NNat` 51.


-}
n51 : NNat (N N51Nat Is (Difference a To (N51NatPlus a)))
n51 =
    n50 |> add1


{-| The `NNat` 52.


-}
n52 : NNat (N N52Nat Is (Difference a To (N52NatPlus a)))
n52 =
    n51 |> add1


{-| The `NNat` 53.


-}
n53 : NNat (N N53Nat Is (Difference a To (N53NatPlus a)))
n53 =
    n52 |> add1


{-| The `NNat` 54.


-}
n54 : NNat (N N54Nat Is (Difference a To (N54NatPlus a)))
n54 =
    n53 |> add1


{-| The `NNat` 55.


-}
n55 : NNat (N N55Nat Is (Difference a To (N55NatPlus a)))
n55 =
    n54 |> add1


{-| The `NNat` 56.


-}
n56 : NNat (N N56Nat Is (Difference a To (N56NatPlus a)))
n56 =
    n55 |> add1


{-| The `NNat` 57.


-}
n57 : NNat (N N57Nat Is (Difference a To (N57NatPlus a)))
n57 =
    n56 |> add1


{-| The `NNat` 58.


-}
n58 : NNat (N N58Nat Is (Difference a To (N58NatPlus a)))
n58 =
    n57 |> add1


{-| The `NNat` 59.


-}
n59 : NNat (N N59Nat Is (Difference a To (N59NatPlus a)))
n59 =
    n58 |> add1


{-| The `NNat` 60.


-}
n60 : NNat (N N60Nat Is (Difference a To (N60NatPlus a)))
n60 =
    n59 |> add1


{-| The `NNat` 61.


-}
n61 : NNat (N N61Nat Is (Difference a To (N61NatPlus a)))
n61 =
    n60 |> add1


{-| The `NNat` 62.


-}
n62 : NNat (N N62Nat Is (Difference a To (N62NatPlus a)))
n62 =
    n61 |> add1


{-| The `NNat` 63.


-}
n63 : NNat (N N63Nat Is (Difference a To (N63NatPlus a)))
n63 =
    n62 |> add1


{-| The `NNat` 64.


-}
n64 : NNat (N N64Nat Is (Difference a To (N64NatPlus a)))
n64 =
    n63 |> add1


{-| The `NNat` 65.


-}
n65 : NNat (N N65Nat Is (Difference a To (N65NatPlus a)))
n65 =
    n64 |> add1


{-| The `NNat` 66.


-}
n66 : NNat (N N66Nat Is (Difference a To (N66NatPlus a)))
n66 =
    n65 |> add1


{-| The `NNat` 67.


-}
n67 : NNat (N N67Nat Is (Difference a To (N67NatPlus a)))
n67 =
    n66 |> add1


{-| The `NNat` 68.


-}
n68 : NNat (N N68Nat Is (Difference a To (N68NatPlus a)))
n68 =
    n67 |> add1


{-| The `NNat` 69.


-}
n69 : NNat (N N69Nat Is (Difference a To (N69NatPlus a)))
n69 =
    n68 |> add1


{-| The `NNat` 70.


-}
n70 : NNat (N N70Nat Is (Difference a To (N70NatPlus a)))
n70 =
    n69 |> add1


{-| The `NNat` 71.


-}
n71 : NNat (N N71Nat Is (Difference a To (N71NatPlus a)))
n71 =
    n70 |> add1


{-| The `NNat` 72.


-}
n72 : NNat (N N72Nat Is (Difference a To (N72NatPlus a)))
n72 =
    n71 |> add1


{-| The `NNat` 73.


-}
n73 : NNat (N N73Nat Is (Difference a To (N73NatPlus a)))
n73 =
    n72 |> add1


{-| The `NNat` 74.


-}
n74 : NNat (N N74Nat Is (Difference a To (N74NatPlus a)))
n74 =
    n73 |> add1


{-| The `NNat` 75.


-}
n75 : NNat (N N75Nat Is (Difference a To (N75NatPlus a)))
n75 =
    n74 |> add1


{-| The `NNat` 76.


-}
n76 : NNat (N N76Nat Is (Difference a To (N76NatPlus a)))
n76 =
    n75 |> add1


{-| The `NNat` 77.


-}
n77 : NNat (N N77Nat Is (Difference a To (N77NatPlus a)))
n77 =
    n76 |> add1


{-| The `NNat` 78.


-}
n78 : NNat (N N78Nat Is (Difference a To (N78NatPlus a)))
n78 =
    n77 |> add1


{-| The `NNat` 79.


-}
n79 : NNat (N N79Nat Is (Difference a To (N79NatPlus a)))
n79 =
    n78 |> add1


{-| The `NNat` 80.


-}
n80 : NNat (N N80Nat Is (Difference a To (N80NatPlus a)))
n80 =
    n79 |> add1


{-| The `NNat` 81.


-}
n81 : NNat (N N81Nat Is (Difference a To (N81NatPlus a)))
n81 =
    n80 |> add1


{-| The `NNat` 82.


-}
n82 : NNat (N N82Nat Is (Difference a To (N82NatPlus a)))
n82 =
    n81 |> add1


{-| The `NNat` 83.


-}
n83 : NNat (N N83Nat Is (Difference a To (N83NatPlus a)))
n83 =
    n82 |> add1


{-| The `NNat` 84.


-}
n84 : NNat (N N84Nat Is (Difference a To (N84NatPlus a)))
n84 =
    n83 |> add1


{-| The `NNat` 85.


-}
n85 : NNat (N N85Nat Is (Difference a To (N85NatPlus a)))
n85 =
    n84 |> add1


{-| The `NNat` 86.


-}
n86 : NNat (N N86Nat Is (Difference a To (N86NatPlus a)))
n86 =
    n85 |> add1


{-| The `NNat` 87.


-}
n87 : NNat (N N87Nat Is (Difference a To (N87NatPlus a)))
n87 =
    n86 |> add1


{-| The `NNat` 88.


-}
n88 : NNat (N N88Nat Is (Difference a To (N88NatPlus a)))
n88 =
    n87 |> add1


{-| The `NNat` 89.


-}
n89 : NNat (N N89Nat Is (Difference a To (N89NatPlus a)))
n89 =
    n88 |> add1


{-| The `NNat` 90.


-}
n90 : NNat (N N90Nat Is (Difference a To (N90NatPlus a)))
n90 =
    n89 |> add1


{-| The `NNat` 91.


-}
n91 : NNat (N N91Nat Is (Difference a To (N91NatPlus a)))
n91 =
    n90 |> add1


{-| The `NNat` 92.


-}
n92 : NNat (N N92Nat Is (Difference a To (N92NatPlus a)))
n92 =
    n91 |> add1


{-| The `NNat` 93.


-}
n93 : NNat (N N93Nat Is (Difference a To (N93NatPlus a)))
n93 =
    n92 |> add1


{-| The `NNat` 94.


-}
n94 : NNat (N N94Nat Is (Difference a To (N94NatPlus a)))
n94 =
    n93 |> add1


{-| The `NNat` 95.


-}
n95 : NNat (N N95Nat Is (Difference a To (N95NatPlus a)))
n95 =
    n94 |> add1


{-| The `NNat` 96.


-}
n96 : NNat (N N96Nat Is (Difference a To (N96NatPlus a)))
n96 =
    n95 |> add1


{-| The `NNat` 97.


-}
n97 : NNat (N N97Nat Is (Difference a To (N97NatPlus a)))
n97 =
    n96 |> add1


{-| The `NNat` 98.


-}
n98 : NNat (N N98Nat Is (Difference a To (N98NatPlus a)))
n98 =
    n97 |> add1


{-| The `NNat` 99.


-}
n99 : NNat (N N99Nat Is (Difference a To (N99NatPlus a)))
n99 =
    n98 |> add1


{-| The `NNat` 100.


-}
n100 : NNat (N N100Nat Is (Difference a To (N100NatPlus a)))
n100 =
    n99 |> add1


{-| The `NNat` 101.


-}
n101 : NNat (N N101Nat Is (Difference a To (N101NatPlus a)))
n101 =
    n100 |> add1


{-| The `NNat` 102.


-}
n102 : NNat (N N102Nat Is (Difference a To (N102NatPlus a)))
n102 =
    n101 |> add1


{-| The `NNat` 103.


-}
n103 : NNat (N N103Nat Is (Difference a To (N103NatPlus a)))
n103 =
    n102 |> add1


{-| The `NNat` 104.


-}
n104 : NNat (N N104Nat Is (Difference a To (N104NatPlus a)))
n104 =
    n103 |> add1


{-| The `NNat` 105.


-}
n105 : NNat (N N105Nat Is (Difference a To (N105NatPlus a)))
n105 =
    n104 |> add1


{-| The `NNat` 106.


-}
n106 : NNat (N N106Nat Is (Difference a To (N106NatPlus a)))
n106 =
    n105 |> add1


{-| The `NNat` 107.


-}
n107 : NNat (N N107Nat Is (Difference a To (N107NatPlus a)))
n107 =
    n106 |> add1


{-| The `NNat` 108.


-}
n108 : NNat (N N108Nat Is (Difference a To (N108NatPlus a)))
n108 =
    n107 |> add1


{-| The `NNat` 109.


-}
n109 : NNat (N N109Nat Is (Difference a To (N109NatPlus a)))
n109 =
    n108 |> add1


{-| The `NNat` 110.


-}
n110 : NNat (N N110Nat Is (Difference a To (N110NatPlus a)))
n110 =
    n109 |> add1


{-| The `NNat` 111.


-}
n111 : NNat (N N111Nat Is (Difference a To (N111NatPlus a)))
n111 =
    n110 |> add1


{-| The `NNat` 112.


-}
n112 : NNat (N N112Nat Is (Difference a To (N112NatPlus a)))
n112 =
    n111 |> add1


{-| The `NNat` 113.


-}
n113 : NNat (N N113Nat Is (Difference a To (N113NatPlus a)))
n113 =
    n112 |> add1


{-| The `NNat` 114.


-}
n114 : NNat (N N114Nat Is (Difference a To (N114NatPlus a)))
n114 =
    n113 |> add1


{-| The `NNat` 115.


-}
n115 : NNat (N N115Nat Is (Difference a To (N115NatPlus a)))
n115 =
    n114 |> add1


{-| The `NNat` 116.


-}
n116 : NNat (N N116Nat Is (Difference a To (N116NatPlus a)))
n116 =
    n115 |> add1


{-| The `NNat` 117.


-}
n117 : NNat (N N117Nat Is (Difference a To (N117NatPlus a)))
n117 =
    n116 |> add1


{-| The `NNat` 118.


-}
n118 : NNat (N N118Nat Is (Difference a To (N118NatPlus a)))
n118 =
    n117 |> add1


{-| The `NNat` 119.


-}
n119 : NNat (N N119Nat Is (Difference a To (N119NatPlus a)))
n119 =
    n118 |> add1


{-| The `NNat` 120.


-}
n120 : NNat (N N120Nat Is (Difference a To (N120NatPlus a)))
n120 =
    n119 |> add1


{-| The `NNat` 121.


-}
n121 : NNat (N N121Nat Is (Difference a To (N121NatPlus a)))
n121 =
    n120 |> add1


{-| The `NNat` 122.


-}
n122 : NNat (N N122Nat Is (Difference a To (N122NatPlus a)))
n122 =
    n121 |> add1


{-| The `NNat` 123.


-}
n123 : NNat (N N123Nat Is (Difference a To (N123NatPlus a)))
n123 =
    n122 |> add1


{-| The `NNat` 124.


-}
n124 : NNat (N N124Nat Is (Difference a To (N124NatPlus a)))
n124 =
    n123 |> add1


{-| The `NNat` 125.


-}
n125 : NNat (N N125Nat Is (Difference a To (N125NatPlus a)))
n125 =
    n124 |> add1


{-| The `NNat` 126.


-}
n126 : NNat (N N126Nat Is (Difference a To (N126NatPlus a)))
n126 =
    n125 |> add1


{-| The `NNat` 127.


-}
n127 : NNat (N N127Nat Is (Difference a To (N127NatPlus a)))
n127 =
    n126 |> add1


{-| The `NNat` 128.


-}
n128 : NNat (N N128Nat Is (Difference a To (N128NatPlus a)))
n128 =
    n127 |> add1


{-| The `NNat` 129.


-}
n129 : NNat (N N129Nat Is (Difference a To (N129NatPlus a)))
n129 =
    n128 |> add1


{-| The `NNat` 130.


-}
n130 : NNat (N N130Nat Is (Difference a To (N130NatPlus a)))
n130 =
    n129 |> add1


{-| The `NNat` 131.


-}
n131 : NNat (N N131Nat Is (Difference a To (N131NatPlus a)))
n131 =
    n130 |> add1


{-| The `NNat` 132.


-}
n132 : NNat (N N132Nat Is (Difference a To (N132NatPlus a)))
n132 =
    n131 |> add1


{-| The `NNat` 133.


-}
n133 : NNat (N N133Nat Is (Difference a To (N133NatPlus a)))
n133 =
    n132 |> add1


{-| The `NNat` 134.


-}
n134 : NNat (N N134Nat Is (Difference a To (N134NatPlus a)))
n134 =
    n133 |> add1


{-| The `NNat` 135.


-}
n135 : NNat (N N135Nat Is (Difference a To (N135NatPlus a)))
n135 =
    n134 |> add1


{-| The `NNat` 136.


-}
n136 : NNat (N N136Nat Is (Difference a To (N136NatPlus a)))
n136 =
    n135 |> add1


{-| The `NNat` 137.


-}
n137 : NNat (N N137Nat Is (Difference a To (N137NatPlus a)))
n137 =
    n136 |> add1


{-| The `NNat` 138.


-}
n138 : NNat (N N138Nat Is (Difference a To (N138NatPlus a)))
n138 =
    n137 |> add1


{-| The `NNat` 139.


-}
n139 : NNat (N N139Nat Is (Difference a To (N139NatPlus a)))
n139 =
    n138 |> add1


{-| The `NNat` 140.


-}
n140 : NNat (N N140Nat Is (Difference a To (N140NatPlus a)))
n140 =
    n139 |> add1


{-| The `NNat` 141.


-}
n141 : NNat (N N141Nat Is (Difference a To (N141NatPlus a)))
n141 =
    n140 |> add1


{-| The `NNat` 142.


-}
n142 : NNat (N N142Nat Is (Difference a To (N142NatPlus a)))
n142 =
    n141 |> add1


{-| The `NNat` 143.


-}
n143 : NNat (N N143Nat Is (Difference a To (N143NatPlus a)))
n143 =
    n142 |> add1


{-| The `NNat` 144.


-}
n144 : NNat (N N144Nat Is (Difference a To (N144NatPlus a)))
n144 =
    n143 |> add1


{-| The `NNat` 145.


-}
n145 : NNat (N N145Nat Is (Difference a To (N145NatPlus a)))
n145 =
    n144 |> add1


{-| The `NNat` 146.


-}
n146 : NNat (N N146Nat Is (Difference a To (N146NatPlus a)))
n146 =
    n145 |> add1


{-| The `NNat` 147.


-}
n147 : NNat (N N147Nat Is (Difference a To (N147NatPlus a)))
n147 =
    n146 |> add1


{-| The `NNat` 148.


-}
n148 : NNat (N N148Nat Is (Difference a To (N148NatPlus a)))
n148 =
    n147 |> add1


{-| The `NNat` 149.


-}
n149 : NNat (N N149Nat Is (Difference a To (N149NatPlus a)))
n149 =
    n148 |> add1


{-| The `NNat` 150.


-}
n150 : NNat (N N150Nat Is (Difference a To (N150NatPlus a)))
n150 =
    n149 |> add1


{-| The `NNat` 151.


-}
n151 : NNat (N N151Nat Is (Difference a To (N151NatPlus a)))
n151 =
    n150 |> add1


{-| The `NNat` 152.


-}
n152 : NNat (N N152Nat Is (Difference a To (N152NatPlus a)))
n152 =
    n151 |> add1


{-| The `NNat` 153.


-}
n153 : NNat (N N153Nat Is (Difference a To (N153NatPlus a)))
n153 =
    n152 |> add1


{-| The `NNat` 154.


-}
n154 : NNat (N N154Nat Is (Difference a To (N154NatPlus a)))
n154 =
    n153 |> add1


{-| The `NNat` 155.


-}
n155 : NNat (N N155Nat Is (Difference a To (N155NatPlus a)))
n155 =
    n154 |> add1


{-| The `NNat` 156.


-}
n156 : NNat (N N156Nat Is (Difference a To (N156NatPlus a)))
n156 =
    n155 |> add1


{-| The `NNat` 157.


-}
n157 : NNat (N N157Nat Is (Difference a To (N157NatPlus a)))
n157 =
    n156 |> add1


{-| The `NNat` 158.


-}
n158 : NNat (N N158Nat Is (Difference a To (N158NatPlus a)))
n158 =
    n157 |> add1


{-| The `NNat` 159.


-}
n159 : NNat (N N159Nat Is (Difference a To (N159NatPlus a)))
n159 =
    n158 |> add1


{-| The `NNat` 160.


-}
n160 : NNat (N N160Nat Is (Difference a To (N160NatPlus a)))
n160 =
    n159 |> add1


{-| The `NNat` 161.


-}
n161 : NNat (N N161Nat Is (Difference a To (N161NatPlus a)))
n161 =
    n160 |> add1


{-| The `NNat` 162.


-}
n162 : NNat (N N162Nat Is (Difference a To (N162NatPlus a)))
n162 =
    n161 |> add1


{-| The `NNat` 163.


-}
n163 : NNat (N N163Nat Is (Difference a To (N163NatPlus a)))
n163 =
    n162 |> add1


{-| The `NNat` 164.


-}
n164 : NNat (N N164Nat Is (Difference a To (N164NatPlus a)))
n164 =
    n163 |> add1


{-| The `NNat` 165.


-}
n165 : NNat (N N165Nat Is (Difference a To (N165NatPlus a)))
n165 =
    n164 |> add1


{-| The `NNat` 166.


-}
n166 : NNat (N N166Nat Is (Difference a To (N166NatPlus a)))
n166 =
    n165 |> add1


{-| The `NNat` 167.


-}
n167 : NNat (N N167Nat Is (Difference a To (N167NatPlus a)))
n167 =
    n166 |> add1


{-| The `NNat` 168.


-}
n168 : NNat (N N168Nat Is (Difference a To (N168NatPlus a)))
n168 =
    n167 |> add1


{-| The `NNat` 169.


-}
n169 : NNat (N N169Nat Is (Difference a To (N169NatPlus a)))
n169 =
    n168 |> add1


{-| The `NNat` 170.


-}
n170 : NNat (N N170Nat Is (Difference a To (N170NatPlus a)))
n170 =
    n169 |> add1


{-| The `NNat` 171.


-}
n171 : NNat (N N171Nat Is (Difference a To (N171NatPlus a)))
n171 =
    n170 |> add1


{-| The `NNat` 172.


-}
n172 : NNat (N N172Nat Is (Difference a To (N172NatPlus a)))
n172 =
    n171 |> add1


{-| The `NNat` 173.


-}
n173 : NNat (N N173Nat Is (Difference a To (N173NatPlus a)))
n173 =
    n172 |> add1


{-| The `NNat` 174.


-}
n174 : NNat (N N174Nat Is (Difference a To (N174NatPlus a)))
n174 =
    n173 |> add1


{-| The `NNat` 175.


-}
n175 : NNat (N N175Nat Is (Difference a To (N175NatPlus a)))
n175 =
    n174 |> add1


{-| The `NNat` 176.


-}
n176 : NNat (N N176Nat Is (Difference a To (N176NatPlus a)))
n176 =
    n175 |> add1


{-| The `NNat` 177.


-}
n177 : NNat (N N177Nat Is (Difference a To (N177NatPlus a)))
n177 =
    n176 |> add1


{-| The `NNat` 178.


-}
n178 : NNat (N N178Nat Is (Difference a To (N178NatPlus a)))
n178 =
    n177 |> add1


{-| The `NNat` 179.


-}
n179 : NNat (N N179Nat Is (Difference a To (N179NatPlus a)))
n179 =
    n178 |> add1


{-| The `NNat` 180.


-}
n180 : NNat (N N180Nat Is (Difference a To (N180NatPlus a)))
n180 =
    n179 |> add1


{-| The `NNat` 181.


-}
n181 : NNat (N N181Nat Is (Difference a To (N181NatPlus a)))
n181 =
    n180 |> add1


{-| The `NNat` 182.


-}
n182 : NNat (N N182Nat Is (Difference a To (N182NatPlus a)))
n182 =
    n181 |> add1


{-| The `NNat` 183.


-}
n183 : NNat (N N183Nat Is (Difference a To (N183NatPlus a)))
n183 =
    n182 |> add1


{-| The `NNat` 184.


-}
n184 : NNat (N N184Nat Is (Difference a To (N184NatPlus a)))
n184 =
    n183 |> add1


{-| The `NNat` 185.


-}
n185 : NNat (N N185Nat Is (Difference a To (N185NatPlus a)))
n185 =
    n184 |> add1


{-| The `NNat` 186.


-}
n186 : NNat (N N186Nat Is (Difference a To (N186NatPlus a)))
n186 =
    n185 |> add1


{-| The `NNat` 187.


-}
n187 : NNat (N N187Nat Is (Difference a To (N187NatPlus a)))
n187 =
    n186 |> add1


{-| The `NNat` 188.


-}
n188 : NNat (N N188Nat Is (Difference a To (N188NatPlus a)))
n188 =
    n187 |> add1


{-| The `NNat` 189.


-}
n189 : NNat (N N189Nat Is (Difference a To (N189NatPlus a)))
n189 =
    n188 |> add1


{-| The `NNat` 190.


-}
n190 : NNat (N N190Nat Is (Difference a To (N190NatPlus a)))
n190 =
    n189 |> add1


{-| The `NNat` 191.


-}
n191 : NNat (N N191Nat Is (Difference a To (N191NatPlus a)))
n191 =
    n190 |> add1


{-| The `NNat` 192.


-}
n192 : NNat (N N192Nat Is (Difference a To (N192NatPlus a)))
n192 =
    n191 |> add1


{-| The `NNat` plus 1.


-}
add1 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1NatPlus n) Is (Difference a To (N1NatPlus nPlusA)))
add1 =
    Internal.add1


{-| The `NNat` plus 2.


-}
add2 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N2NatPlus n) Is (Difference a To (N2NatPlus nPlusA)))
add2 =
    add1 >> add1


{-| The `NNat` plus 3.


-}
add3 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N3NatPlus n) Is (Difference a To (N3NatPlus nPlusA)))
add3 =
    add2 >> add1


{-| The `NNat` plus 4.


-}
add4 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N4NatPlus n) Is (Difference a To (N4NatPlus nPlusA)))
add4 =
    add3 >> add1


{-| The `NNat` plus 5.


-}
add5 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N5NatPlus n) Is (Difference a To (N5NatPlus nPlusA)))
add5 =
    add4 >> add1


{-| The `NNat` plus 6.


-}
add6 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N6NatPlus n) Is (Difference a To (N6NatPlus nPlusA)))
add6 =
    add5 >> add1


{-| The `NNat` plus 7.


-}
add7 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N7NatPlus n) Is (Difference a To (N7NatPlus nPlusA)))
add7 =
    add6 >> add1


{-| The `NNat` plus 8.


-}
add8 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N8NatPlus n) Is (Difference a To (N8NatPlus nPlusA)))
add8 =
    add7 >> add1


{-| The `NNat` plus 9.


-}
add9 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N9NatPlus n) Is (Difference a To (N9NatPlus nPlusA)))
add9 =
    add8 >> add1


{-| The `NNat` plus 10.


-}
add10 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N10NatPlus n) Is (Difference a To (N10NatPlus nPlusA)))
add10 =
    add9 >> add1


{-| The `NNat` plus 11.


-}
add11 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N11NatPlus n) Is (Difference a To (N11NatPlus nPlusA)))
add11 =
    add10 >> add1


{-| The `NNat` plus 12.


-}
add12 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N12NatPlus n) Is (Difference a To (N12NatPlus nPlusA)))
add12 =
    add11 >> add1


{-| The `NNat` plus 13.


-}
add13 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N13NatPlus n) Is (Difference a To (N13NatPlus nPlusA)))
add13 =
    add12 >> add1


{-| The `NNat` plus 14.


-}
add14 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N14NatPlus n) Is (Difference a To (N14NatPlus nPlusA)))
add14 =
    add13 >> add1


{-| The `NNat` plus 15.


-}
add15 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N15NatPlus n) Is (Difference a To (N15NatPlus nPlusA)))
add15 =
    add14 >> add1


{-| The `NNat` plus 16.


-}
add16 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N16NatPlus n) Is (Difference a To (N16NatPlus nPlusA)))
add16 =
    add15 >> add1


{-| The `NNat` plus 17.


-}
add17 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N17NatPlus n) Is (Difference a To (N17NatPlus nPlusA)))
add17 =
    add16 >> add1


{-| The `NNat` plus 18.


-}
add18 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N18NatPlus n) Is (Difference a To (N18NatPlus nPlusA)))
add18 =
    add17 >> add1


{-| The `NNat` plus 19.


-}
add19 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N19NatPlus n) Is (Difference a To (N19NatPlus nPlusA)))
add19 =
    add18 >> add1


{-| The `NNat` plus 20.


-}
add20 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N20NatPlus n) Is (Difference a To (N20NatPlus nPlusA)))
add20 =
    add19 >> add1


{-| The `NNat` plus 21.


-}
add21 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N21NatPlus n) Is (Difference a To (N21NatPlus nPlusA)))
add21 =
    add20 >> add1


{-| The `NNat` plus 22.


-}
add22 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N22NatPlus n) Is (Difference a To (N22NatPlus nPlusA)))
add22 =
    add21 >> add1


{-| The `NNat` plus 23.


-}
add23 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N23NatPlus n) Is (Difference a To (N23NatPlus nPlusA)))
add23 =
    add22 >> add1


{-| The `NNat` plus 24.


-}
add24 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N24NatPlus n) Is (Difference a To (N24NatPlus nPlusA)))
add24 =
    add23 >> add1


{-| The `NNat` plus 25.


-}
add25 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N25NatPlus n) Is (Difference a To (N25NatPlus nPlusA)))
add25 =
    add24 >> add1


{-| The `NNat` plus 26.


-}
add26 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N26NatPlus n) Is (Difference a To (N26NatPlus nPlusA)))
add26 =
    add25 >> add1


{-| The `NNat` plus 27.


-}
add27 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N27NatPlus n) Is (Difference a To (N27NatPlus nPlusA)))
add27 =
    add26 >> add1


{-| The `NNat` plus 28.


-}
add28 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N28NatPlus n) Is (Difference a To (N28NatPlus nPlusA)))
add28 =
    add27 >> add1


{-| The `NNat` plus 29.


-}
add29 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N29NatPlus n) Is (Difference a To (N29NatPlus nPlusA)))
add29 =
    add28 >> add1


{-| The `NNat` plus 30.


-}
add30 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N30NatPlus n) Is (Difference a To (N30NatPlus nPlusA)))
add30 =
    add29 >> add1


{-| The `NNat` plus 31.


-}
add31 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N31NatPlus n) Is (Difference a To (N31NatPlus nPlusA)))
add31 =
    add30 >> add1


{-| The `NNat` plus 32.


-}
add32 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N32NatPlus n) Is (Difference a To (N32NatPlus nPlusA)))
add32 =
    add31 >> add1


{-| The `NNat` plus 33.


-}
add33 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N33NatPlus n) Is (Difference a To (N33NatPlus nPlusA)))
add33 =
    add32 >> add1


{-| The `NNat` plus 34.


-}
add34 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N34NatPlus n) Is (Difference a To (N34NatPlus nPlusA)))
add34 =
    add33 >> add1


{-| The `NNat` plus 35.


-}
add35 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N35NatPlus n) Is (Difference a To (N35NatPlus nPlusA)))
add35 =
    add34 >> add1


{-| The `NNat` plus 36.


-}
add36 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N36NatPlus n) Is (Difference a To (N36NatPlus nPlusA)))
add36 =
    add35 >> add1


{-| The `NNat` plus 37.


-}
add37 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N37NatPlus n) Is (Difference a To (N37NatPlus nPlusA)))
add37 =
    add36 >> add1


{-| The `NNat` plus 38.


-}
add38 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N38NatPlus n) Is (Difference a To (N38NatPlus nPlusA)))
add38 =
    add37 >> add1


{-| The `NNat` plus 39.


-}
add39 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N39NatPlus n) Is (Difference a To (N39NatPlus nPlusA)))
add39 =
    add38 >> add1


{-| The `NNat` plus 40.


-}
add40 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N40NatPlus n) Is (Difference a To (N40NatPlus nPlusA)))
add40 =
    add39 >> add1


{-| The `NNat` plus 41.


-}
add41 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N41NatPlus n) Is (Difference a To (N41NatPlus nPlusA)))
add41 =
    add40 >> add1


{-| The `NNat` plus 42.


-}
add42 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N42NatPlus n) Is (Difference a To (N42NatPlus nPlusA)))
add42 =
    add41 >> add1


{-| The `NNat` plus 43.


-}
add43 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N43NatPlus n) Is (Difference a To (N43NatPlus nPlusA)))
add43 =
    add42 >> add1


{-| The `NNat` plus 44.


-}
add44 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N44NatPlus n) Is (Difference a To (N44NatPlus nPlusA)))
add44 =
    add43 >> add1


{-| The `NNat` plus 45.


-}
add45 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N45NatPlus n) Is (Difference a To (N45NatPlus nPlusA)))
add45 =
    add44 >> add1


{-| The `NNat` plus 46.


-}
add46 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N46NatPlus n) Is (Difference a To (N46NatPlus nPlusA)))
add46 =
    add45 >> add1


{-| The `NNat` plus 47.


-}
add47 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N47NatPlus n) Is (Difference a To (N47NatPlus nPlusA)))
add47 =
    add46 >> add1


{-| The `NNat` plus 48.


-}
add48 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N48NatPlus n) Is (Difference a To (N48NatPlus nPlusA)))
add48 =
    add47 >> add1


{-| The `NNat` plus 49.


-}
add49 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N49NatPlus n) Is (Difference a To (N49NatPlus nPlusA)))
add49 =
    add48 >> add1


{-| The `NNat` plus 50.


-}
add50 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N50NatPlus n) Is (Difference a To (N50NatPlus nPlusA)))
add50 =
    add49 >> add1


{-| The `NNat` plus 51.


-}
add51 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N51NatPlus n) Is (Difference a To (N51NatPlus nPlusA)))
add51 =
    add50 >> add1


{-| The `NNat` plus 52.


-}
add52 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N52NatPlus n) Is (Difference a To (N52NatPlus nPlusA)))
add52 =
    add51 >> add1


{-| The `NNat` plus 53.


-}
add53 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N53NatPlus n) Is (Difference a To (N53NatPlus nPlusA)))
add53 =
    add52 >> add1


{-| The `NNat` plus 54.


-}
add54 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N54NatPlus n) Is (Difference a To (N54NatPlus nPlusA)))
add54 =
    add53 >> add1


{-| The `NNat` plus 55.


-}
add55 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N55NatPlus n) Is (Difference a To (N55NatPlus nPlusA)))
add55 =
    add54 >> add1


{-| The `NNat` plus 56.


-}
add56 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N56NatPlus n) Is (Difference a To (N56NatPlus nPlusA)))
add56 =
    add55 >> add1


{-| The `NNat` plus 57.


-}
add57 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N57NatPlus n) Is (Difference a To (N57NatPlus nPlusA)))
add57 =
    add56 >> add1


{-| The `NNat` plus 58.


-}
add58 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N58NatPlus n) Is (Difference a To (N58NatPlus nPlusA)))
add58 =
    add57 >> add1


{-| The `NNat` plus 59.


-}
add59 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N59NatPlus n) Is (Difference a To (N59NatPlus nPlusA)))
add59 =
    add58 >> add1


{-| The `NNat` plus 60.


-}
add60 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N60NatPlus n) Is (Difference a To (N60NatPlus nPlusA)))
add60 =
    add59 >> add1


{-| The `NNat` plus 61.


-}
add61 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N61NatPlus n) Is (Difference a To (N61NatPlus nPlusA)))
add61 =
    add60 >> add1


{-| The `NNat` plus 62.


-}
add62 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N62NatPlus n) Is (Difference a To (N62NatPlus nPlusA)))
add62 =
    add61 >> add1


{-| The `NNat` plus 63.


-}
add63 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N63NatPlus n) Is (Difference a To (N63NatPlus nPlusA)))
add63 =
    add62 >> add1


{-| The `NNat` plus 64.


-}
add64 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N64NatPlus n) Is (Difference a To (N64NatPlus nPlusA)))
add64 =
    add63 >> add1


{-| The `NNat` plus 65.


-}
add65 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N65NatPlus n) Is (Difference a To (N65NatPlus nPlusA)))
add65 =
    add64 >> add1


{-| The `NNat` plus 66.


-}
add66 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N66NatPlus n) Is (Difference a To (N66NatPlus nPlusA)))
add66 =
    add65 >> add1


{-| The `NNat` plus 67.


-}
add67 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N67NatPlus n) Is (Difference a To (N67NatPlus nPlusA)))
add67 =
    add66 >> add1


{-| The `NNat` plus 68.


-}
add68 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N68NatPlus n) Is (Difference a To (N68NatPlus nPlusA)))
add68 =
    add67 >> add1


{-| The `NNat` plus 69.


-}
add69 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N69NatPlus n) Is (Difference a To (N69NatPlus nPlusA)))
add69 =
    add68 >> add1


{-| The `NNat` plus 70.


-}
add70 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N70NatPlus n) Is (Difference a To (N70NatPlus nPlusA)))
add70 =
    add69 >> add1


{-| The `NNat` plus 71.


-}
add71 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N71NatPlus n) Is (Difference a To (N71NatPlus nPlusA)))
add71 =
    add70 >> add1


{-| The `NNat` plus 72.


-}
add72 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N72NatPlus n) Is (Difference a To (N72NatPlus nPlusA)))
add72 =
    add71 >> add1


{-| The `NNat` plus 73.


-}
add73 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N73NatPlus n) Is (Difference a To (N73NatPlus nPlusA)))
add73 =
    add72 >> add1


{-| The `NNat` plus 74.


-}
add74 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N74NatPlus n) Is (Difference a To (N74NatPlus nPlusA)))
add74 =
    add73 >> add1


{-| The `NNat` plus 75.


-}
add75 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N75NatPlus n) Is (Difference a To (N75NatPlus nPlusA)))
add75 =
    add74 >> add1


{-| The `NNat` plus 76.


-}
add76 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N76NatPlus n) Is (Difference a To (N76NatPlus nPlusA)))
add76 =
    add75 >> add1


{-| The `NNat` plus 77.


-}
add77 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N77NatPlus n) Is (Difference a To (N77NatPlus nPlusA)))
add77 =
    add76 >> add1


{-| The `NNat` plus 78.


-}
add78 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N78NatPlus n) Is (Difference a To (N78NatPlus nPlusA)))
add78 =
    add77 >> add1


{-| The `NNat` plus 79.


-}
add79 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N79NatPlus n) Is (Difference a To (N79NatPlus nPlusA)))
add79 =
    add78 >> add1


{-| The `NNat` plus 80.


-}
add80 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N80NatPlus n) Is (Difference a To (N80NatPlus nPlusA)))
add80 =
    add79 >> add1


{-| The `NNat` plus 81.


-}
add81 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N81NatPlus n) Is (Difference a To (N81NatPlus nPlusA)))
add81 =
    add80 >> add1


{-| The `NNat` plus 82.


-}
add82 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N82NatPlus n) Is (Difference a To (N82NatPlus nPlusA)))
add82 =
    add81 >> add1


{-| The `NNat` plus 83.


-}
add83 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N83NatPlus n) Is (Difference a To (N83NatPlus nPlusA)))
add83 =
    add82 >> add1


{-| The `NNat` plus 84.


-}
add84 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N84NatPlus n) Is (Difference a To (N84NatPlus nPlusA)))
add84 =
    add83 >> add1


{-| The `NNat` plus 85.


-}
add85 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N85NatPlus n) Is (Difference a To (N85NatPlus nPlusA)))
add85 =
    add84 >> add1


{-| The `NNat` plus 86.


-}
add86 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N86NatPlus n) Is (Difference a To (N86NatPlus nPlusA)))
add86 =
    add85 >> add1


{-| The `NNat` plus 87.


-}
add87 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N87NatPlus n) Is (Difference a To (N87NatPlus nPlusA)))
add87 =
    add86 >> add1


{-| The `NNat` plus 88.


-}
add88 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N88NatPlus n) Is (Difference a To (N88NatPlus nPlusA)))
add88 =
    add87 >> add1


{-| The `NNat` plus 89.


-}
add89 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N89NatPlus n) Is (Difference a To (N89NatPlus nPlusA)))
add89 =
    add88 >> add1


{-| The `NNat` plus 90.


-}
add90 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N90NatPlus n) Is (Difference a To (N90NatPlus nPlusA)))
add90 =
    add89 >> add1


{-| The `NNat` plus 91.


-}
add91 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N91NatPlus n) Is (Difference a To (N91NatPlus nPlusA)))
add91 =
    add90 >> add1


{-| The `NNat` plus 92.


-}
add92 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N92NatPlus n) Is (Difference a To (N92NatPlus nPlusA)))
add92 =
    add91 >> add1


{-| The `NNat` plus 93.


-}
add93 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N93NatPlus n) Is (Difference a To (N93NatPlus nPlusA)))
add93 =
    add92 >> add1


{-| The `NNat` plus 94.


-}
add94 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N94NatPlus n) Is (Difference a To (N94NatPlus nPlusA)))
add94 =
    add93 >> add1


{-| The `NNat` plus 95.


-}
add95 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N95NatPlus n) Is (Difference a To (N95NatPlus nPlusA)))
add95 =
    add94 >> add1


{-| The `NNat` plus 96.


-}
add96 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N96NatPlus n) Is (Difference a To (N96NatPlus nPlusA)))
add96 =
    add95 >> add1


{-| The `NNat` plus 97.


-}
add97 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N97NatPlus n) Is (Difference a To (N97NatPlus nPlusA)))
add97 =
    add96 >> add1


{-| The `NNat` plus 98.


-}
add98 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N98NatPlus n) Is (Difference a To (N98NatPlus nPlusA)))
add98 =
    add97 >> add1


{-| The `NNat` plus 99.


-}
add99 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N99NatPlus n) Is (Difference a To (N99NatPlus nPlusA)))
add99 =
    add98 >> add1


{-| The `NNat` plus 100.


-}
add100 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N100NatPlus n) Is (Difference a To (N100NatPlus nPlusA)))
add100 =
    add99 >> add1


{-| The `NNat` plus 101.


-}
add101 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N101NatPlus n) Is (Difference a To (N101NatPlus nPlusA)))
add101 =
    add100 >> add1


{-| The `NNat` plus 102.


-}
add102 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N102NatPlus n) Is (Difference a To (N102NatPlus nPlusA)))
add102 =
    add101 >> add1


{-| The `NNat` plus 103.


-}
add103 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N103NatPlus n) Is (Difference a To (N103NatPlus nPlusA)))
add103 =
    add102 >> add1


{-| The `NNat` plus 104.


-}
add104 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N104NatPlus n) Is (Difference a To (N104NatPlus nPlusA)))
add104 =
    add103 >> add1


{-| The `NNat` plus 105.


-}
add105 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N105NatPlus n) Is (Difference a To (N105NatPlus nPlusA)))
add105 =
    add104 >> add1


{-| The `NNat` plus 106.


-}
add106 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N106NatPlus n) Is (Difference a To (N106NatPlus nPlusA)))
add106 =
    add105 >> add1


{-| The `NNat` plus 107.


-}
add107 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N107NatPlus n) Is (Difference a To (N107NatPlus nPlusA)))
add107 =
    add106 >> add1


{-| The `NNat` plus 108.


-}
add108 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N108NatPlus n) Is (Difference a To (N108NatPlus nPlusA)))
add108 =
    add107 >> add1


{-| The `NNat` plus 109.


-}
add109 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N109NatPlus n) Is (Difference a To (N109NatPlus nPlusA)))
add109 =
    add108 >> add1


{-| The `NNat` plus 110.


-}
add110 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N110NatPlus n) Is (Difference a To (N110NatPlus nPlusA)))
add110 =
    add109 >> add1


{-| The `NNat` plus 111.


-}
add111 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N111NatPlus n) Is (Difference a To (N111NatPlus nPlusA)))
add111 =
    add110 >> add1


{-| The `NNat` plus 112.


-}
add112 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N112NatPlus n) Is (Difference a To (N112NatPlus nPlusA)))
add112 =
    add111 >> add1


{-| The `NNat` plus 113.


-}
add113 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N113NatPlus n) Is (Difference a To (N113NatPlus nPlusA)))
add113 =
    add112 >> add1


{-| The `NNat` plus 114.


-}
add114 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N114NatPlus n) Is (Difference a To (N114NatPlus nPlusA)))
add114 =
    add113 >> add1


{-| The `NNat` plus 115.


-}
add115 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N115NatPlus n) Is (Difference a To (N115NatPlus nPlusA)))
add115 =
    add114 >> add1


{-| The `NNat` plus 116.


-}
add116 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N116NatPlus n) Is (Difference a To (N116NatPlus nPlusA)))
add116 =
    add115 >> add1


{-| The `NNat` plus 117.


-}
add117 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N117NatPlus n) Is (Difference a To (N117NatPlus nPlusA)))
add117 =
    add116 >> add1


{-| The `NNat` plus 118.


-}
add118 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N118NatPlus n) Is (Difference a To (N118NatPlus nPlusA)))
add118 =
    add117 >> add1


{-| The `NNat` plus 119.


-}
add119 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N119NatPlus n) Is (Difference a To (N119NatPlus nPlusA)))
add119 =
    add118 >> add1


{-| The `NNat` plus 120.


-}
add120 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N120NatPlus n) Is (Difference a To (N120NatPlus nPlusA)))
add120 =
    add119 >> add1


{-| The `NNat` plus 121.


-}
add121 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N121NatPlus n) Is (Difference a To (N121NatPlus nPlusA)))
add121 =
    add120 >> add1


{-| The `NNat` plus 122.


-}
add122 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N122NatPlus n) Is (Difference a To (N122NatPlus nPlusA)))
add122 =
    add121 >> add1


{-| The `NNat` plus 123.


-}
add123 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N123NatPlus n) Is (Difference a To (N123NatPlus nPlusA)))
add123 =
    add122 >> add1


{-| The `NNat` plus 124.


-}
add124 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N124NatPlus n) Is (Difference a To (N124NatPlus nPlusA)))
add124 =
    add123 >> add1


{-| The `NNat` plus 125.


-}
add125 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N125NatPlus n) Is (Difference a To (N125NatPlus nPlusA)))
add125 =
    add124 >> add1


{-| The `NNat` plus 126.


-}
add126 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N126NatPlus n) Is (Difference a To (N126NatPlus nPlusA)))
add126 =
    add125 >> add1


{-| The `NNat` plus 127.


-}
add127 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N127NatPlus n) Is (Difference a To (N127NatPlus nPlusA)))
add127 =
    add126 >> add1


{-| The `NNat` plus 128.


-}
add128 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N128NatPlus n) Is (Difference a To (N128NatPlus nPlusA)))
add128 =
    add127 >> add1


{-| The NNat minus 1.


-}
sub1 :
    NNat (N (N1NatPlus nMinus1) Is (Difference a To (N1NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub1 =
    Internal.sub1


{-| The NNat minus 2.


-}
sub2 :
    NNat (N (N2NatPlus nMinus1) Is (Difference a To (N2NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub2 =
    sub1 >> sub1


{-| The NNat minus 3.


-}
sub3 :
    NNat (N (N3NatPlus nMinus1) Is (Difference a To (N3NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub3 =
    sub2 >> sub1


{-| The NNat minus 4.


-}
sub4 :
    NNat (N (N4NatPlus nMinus1) Is (Difference a To (N4NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub4 =
    sub3 >> sub1


{-| The NNat minus 5.


-}
sub5 :
    NNat (N (N5NatPlus nMinus1) Is (Difference a To (N5NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub5 =
    sub4 >> sub1


{-| The NNat minus 6.


-}
sub6 :
    NNat (N (N6NatPlus nMinus1) Is (Difference a To (N6NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub6 =
    sub5 >> sub1


{-| The NNat minus 7.


-}
sub7 :
    NNat (N (N7NatPlus nMinus1) Is (Difference a To (N7NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub7 =
    sub6 >> sub1


{-| The NNat minus 8.


-}
sub8 :
    NNat (N (N8NatPlus nMinus1) Is (Difference a To (N8NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub8 =
    sub7 >> sub1


{-| The NNat minus 9.


-}
sub9 :
    NNat (N (N9NatPlus nMinus1) Is (Difference a To (N9NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub9 =
    sub8 >> sub1


{-| The NNat minus 10.


-}
sub10 :
    NNat (N (N10NatPlus nMinus1) Is (Difference a To (N10NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub10 =
    sub9 >> sub1


{-| The NNat minus 11.


-}
sub11 :
    NNat (N (N11NatPlus nMinus1) Is (Difference a To (N11NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub11 =
    sub10 >> sub1


{-| The NNat minus 12.


-}
sub12 :
    NNat (N (N12NatPlus nMinus1) Is (Difference a To (N12NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub12 =
    sub11 >> sub1


{-| The NNat minus 13.


-}
sub13 :
    NNat (N (N13NatPlus nMinus1) Is (Difference a To (N13NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub13 =
    sub12 >> sub1


{-| The NNat minus 14.


-}
sub14 :
    NNat (N (N14NatPlus nMinus1) Is (Difference a To (N14NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub14 =
    sub13 >> sub1


{-| The NNat minus 15.


-}
sub15 :
    NNat (N (N15NatPlus nMinus1) Is (Difference a To (N15NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub15 =
    sub14 >> sub1


{-| The NNat minus 16.


-}
sub16 :
    NNat (N (N16NatPlus nMinus1) Is (Difference a To (N16NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub16 =
    sub15 >> sub1


{-| The NNat minus 17.


-}
sub17 :
    NNat (N (N17NatPlus nMinus1) Is (Difference a To (N17NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub17 =
    sub16 >> sub1


{-| The NNat minus 18.


-}
sub18 :
    NNat (N (N18NatPlus nMinus1) Is (Difference a To (N18NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub18 =
    sub17 >> sub1


{-| The NNat minus 19.


-}
sub19 :
    NNat (N (N19NatPlus nMinus1) Is (Difference a To (N19NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub19 =
    sub18 >> sub1


{-| The NNat minus 20.


-}
sub20 :
    NNat (N (N20NatPlus nMinus1) Is (Difference a To (N20NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub20 =
    sub19 >> sub1


{-| The NNat minus 21.


-}
sub21 :
    NNat (N (N21NatPlus nMinus1) Is (Difference a To (N21NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub21 =
    sub20 >> sub1


{-| The NNat minus 22.


-}
sub22 :
    NNat (N (N22NatPlus nMinus1) Is (Difference a To (N22NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub22 =
    sub21 >> sub1


{-| The NNat minus 23.


-}
sub23 :
    NNat (N (N23NatPlus nMinus1) Is (Difference a To (N23NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub23 =
    sub22 >> sub1


{-| The NNat minus 24.


-}
sub24 :
    NNat (N (N24NatPlus nMinus1) Is (Difference a To (N24NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub24 =
    sub23 >> sub1


{-| The NNat minus 25.


-}
sub25 :
    NNat (N (N25NatPlus nMinus1) Is (Difference a To (N25NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub25 =
    sub24 >> sub1


{-| The NNat minus 26.


-}
sub26 :
    NNat (N (N26NatPlus nMinus1) Is (Difference a To (N26NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub26 =
    sub25 >> sub1


{-| The NNat minus 27.


-}
sub27 :
    NNat (N (N27NatPlus nMinus1) Is (Difference a To (N27NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub27 =
    sub26 >> sub1


{-| The NNat minus 28.


-}
sub28 :
    NNat (N (N28NatPlus nMinus1) Is (Difference a To (N28NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub28 =
    sub27 >> sub1


{-| The NNat minus 29.


-}
sub29 :
    NNat (N (N29NatPlus nMinus1) Is (Difference a To (N29NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub29 =
    sub28 >> sub1


{-| The NNat minus 30.


-}
sub30 :
    NNat (N (N30NatPlus nMinus1) Is (Difference a To (N30NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub30 =
    sub29 >> sub1


{-| The NNat minus 31.


-}
sub31 :
    NNat (N (N31NatPlus nMinus1) Is (Difference a To (N31NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub31 =
    sub30 >> sub1


{-| The NNat minus 32.


-}
sub32 :
    NNat (N (N32NatPlus nMinus1) Is (Difference a To (N32NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub32 =
    sub31 >> sub1


{-| The NNat minus 33.


-}
sub33 :
    NNat (N (N33NatPlus nMinus1) Is (Difference a To (N33NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub33 =
    sub32 >> sub1


{-| The NNat minus 34.


-}
sub34 :
    NNat (N (N34NatPlus nMinus1) Is (Difference a To (N34NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub34 =
    sub33 >> sub1


{-| The NNat minus 35.


-}
sub35 :
    NNat (N (N35NatPlus nMinus1) Is (Difference a To (N35NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub35 =
    sub34 >> sub1


{-| The NNat minus 36.


-}
sub36 :
    NNat (N (N36NatPlus nMinus1) Is (Difference a To (N36NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub36 =
    sub35 >> sub1


{-| The NNat minus 37.


-}
sub37 :
    NNat (N (N37NatPlus nMinus1) Is (Difference a To (N37NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub37 =
    sub36 >> sub1


{-| The NNat minus 38.


-}
sub38 :
    NNat (N (N38NatPlus nMinus1) Is (Difference a To (N38NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub38 =
    sub37 >> sub1


{-| The NNat minus 39.


-}
sub39 :
    NNat (N (N39NatPlus nMinus1) Is (Difference a To (N39NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub39 =
    sub38 >> sub1


{-| The NNat minus 40.


-}
sub40 :
    NNat (N (N40NatPlus nMinus1) Is (Difference a To (N40NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub40 =
    sub39 >> sub1


{-| The NNat minus 41.


-}
sub41 :
    NNat (N (N41NatPlus nMinus1) Is (Difference a To (N41NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub41 =
    sub40 >> sub1


{-| The NNat minus 42.


-}
sub42 :
    NNat (N (N42NatPlus nMinus1) Is (Difference a To (N42NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub42 =
    sub41 >> sub1


{-| The NNat minus 43.


-}
sub43 :
    NNat (N (N43NatPlus nMinus1) Is (Difference a To (N43NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub43 =
    sub42 >> sub1


{-| The NNat minus 44.


-}
sub44 :
    NNat (N (N44NatPlus nMinus1) Is (Difference a To (N44NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub44 =
    sub43 >> sub1


{-| The NNat minus 45.


-}
sub45 :
    NNat (N (N45NatPlus nMinus1) Is (Difference a To (N45NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub45 =
    sub44 >> sub1


{-| The NNat minus 46.


-}
sub46 :
    NNat (N (N46NatPlus nMinus1) Is (Difference a To (N46NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub46 =
    sub45 >> sub1


{-| The NNat minus 47.


-}
sub47 :
    NNat (N (N47NatPlus nMinus1) Is (Difference a To (N47NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub47 =
    sub46 >> sub1


{-| The NNat minus 48.


-}
sub48 :
    NNat (N (N48NatPlus nMinus1) Is (Difference a To (N48NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub48 =
    sub47 >> sub1


{-| The NNat minus 49.


-}
sub49 :
    NNat (N (N49NatPlus nMinus1) Is (Difference a To (N49NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub49 =
    sub48 >> sub1


{-| The NNat minus 50.


-}
sub50 :
    NNat (N (N50NatPlus nMinus1) Is (Difference a To (N50NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub50 =
    sub49 >> sub1


{-| The NNat minus 51.


-}
sub51 :
    NNat (N (N51NatPlus nMinus1) Is (Difference a To (N51NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub51 =
    sub50 >> sub1


{-| The NNat minus 52.


-}
sub52 :
    NNat (N (N52NatPlus nMinus1) Is (Difference a To (N52NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub52 =
    sub51 >> sub1


{-| The NNat minus 53.


-}
sub53 :
    NNat (N (N53NatPlus nMinus1) Is (Difference a To (N53NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub53 =
    sub52 >> sub1


{-| The NNat minus 54.


-}
sub54 :
    NNat (N (N54NatPlus nMinus1) Is (Difference a To (N54NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub54 =
    sub53 >> sub1


{-| The NNat minus 55.


-}
sub55 :
    NNat (N (N55NatPlus nMinus1) Is (Difference a To (N55NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub55 =
    sub54 >> sub1


{-| The NNat minus 56.


-}
sub56 :
    NNat (N (N56NatPlus nMinus1) Is (Difference a To (N56NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub56 =
    sub55 >> sub1


{-| The NNat minus 57.


-}
sub57 :
    NNat (N (N57NatPlus nMinus1) Is (Difference a To (N57NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub57 =
    sub56 >> sub1


{-| The NNat minus 58.


-}
sub58 :
    NNat (N (N58NatPlus nMinus1) Is (Difference a To (N58NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub58 =
    sub57 >> sub1


{-| The NNat minus 59.


-}
sub59 :
    NNat (N (N59NatPlus nMinus1) Is (Difference a To (N59NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub59 =
    sub58 >> sub1


{-| The NNat minus 60.


-}
sub60 :
    NNat (N (N60NatPlus nMinus1) Is (Difference a To (N60NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub60 =
    sub59 >> sub1


{-| The NNat minus 61.


-}
sub61 :
    NNat (N (N61NatPlus nMinus1) Is (Difference a To (N61NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub61 =
    sub60 >> sub1


{-| The NNat minus 62.


-}
sub62 :
    NNat (N (N62NatPlus nMinus1) Is (Difference a To (N62NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub62 =
    sub61 >> sub1


{-| The NNat minus 63.


-}
sub63 :
    NNat (N (N63NatPlus nMinus1) Is (Difference a To (N63NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub63 =
    sub62 >> sub1


{-| The NNat minus 64.


-}
sub64 :
    NNat (N (N64NatPlus nMinus1) Is (Difference a To (N64NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub64 =
    sub63 >> sub1


{-| The NNat minus 65.


-}
sub65 :
    NNat (N (N65NatPlus nMinus1) Is (Difference a To (N65NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub65 =
    sub64 >> sub1


{-| The NNat minus 66.


-}
sub66 :
    NNat (N (N66NatPlus nMinus1) Is (Difference a To (N66NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub66 =
    sub65 >> sub1


{-| The NNat minus 67.


-}
sub67 :
    NNat (N (N67NatPlus nMinus1) Is (Difference a To (N67NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub67 =
    sub66 >> sub1


{-| The NNat minus 68.


-}
sub68 :
    NNat (N (N68NatPlus nMinus1) Is (Difference a To (N68NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub68 =
    sub67 >> sub1


{-| The NNat minus 69.


-}
sub69 :
    NNat (N (N69NatPlus nMinus1) Is (Difference a To (N69NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub69 =
    sub68 >> sub1


{-| The NNat minus 70.


-}
sub70 :
    NNat (N (N70NatPlus nMinus1) Is (Difference a To (N70NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub70 =
    sub69 >> sub1


{-| The NNat minus 71.


-}
sub71 :
    NNat (N (N71NatPlus nMinus1) Is (Difference a To (N71NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub71 =
    sub70 >> sub1


{-| The NNat minus 72.


-}
sub72 :
    NNat (N (N72NatPlus nMinus1) Is (Difference a To (N72NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub72 =
    sub71 >> sub1


{-| The NNat minus 73.


-}
sub73 :
    NNat (N (N73NatPlus nMinus1) Is (Difference a To (N73NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub73 =
    sub72 >> sub1


{-| The NNat minus 74.


-}
sub74 :
    NNat (N (N74NatPlus nMinus1) Is (Difference a To (N74NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub74 =
    sub73 >> sub1


{-| The NNat minus 75.


-}
sub75 :
    NNat (N (N75NatPlus nMinus1) Is (Difference a To (N75NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub75 =
    sub74 >> sub1


{-| The NNat minus 76.


-}
sub76 :
    NNat (N (N76NatPlus nMinus1) Is (Difference a To (N76NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub76 =
    sub75 >> sub1


{-| The NNat minus 77.


-}
sub77 :
    NNat (N (N77NatPlus nMinus1) Is (Difference a To (N77NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub77 =
    sub76 >> sub1


{-| The NNat minus 78.


-}
sub78 :
    NNat (N (N78NatPlus nMinus1) Is (Difference a To (N78NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub78 =
    sub77 >> sub1


{-| The NNat minus 79.


-}
sub79 :
    NNat (N (N79NatPlus nMinus1) Is (Difference a To (N79NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub79 =
    sub78 >> sub1


{-| The NNat minus 80.


-}
sub80 :
    NNat (N (N80NatPlus nMinus1) Is (Difference a To (N80NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub80 =
    sub79 >> sub1


{-| The NNat minus 81.


-}
sub81 :
    NNat (N (N81NatPlus nMinus1) Is (Difference a To (N81NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub81 =
    sub80 >> sub1


{-| The NNat minus 82.


-}
sub82 :
    NNat (N (N82NatPlus nMinus1) Is (Difference a To (N82NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub82 =
    sub81 >> sub1


{-| The NNat minus 83.


-}
sub83 :
    NNat (N (N83NatPlus nMinus1) Is (Difference a To (N83NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub83 =
    sub82 >> sub1


{-| The NNat minus 84.


-}
sub84 :
    NNat (N (N84NatPlus nMinus1) Is (Difference a To (N84NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub84 =
    sub83 >> sub1


{-| The NNat minus 85.


-}
sub85 :
    NNat (N (N85NatPlus nMinus1) Is (Difference a To (N85NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub85 =
    sub84 >> sub1


{-| The NNat minus 86.


-}
sub86 :
    NNat (N (N86NatPlus nMinus1) Is (Difference a To (N86NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub86 =
    sub85 >> sub1


{-| The NNat minus 87.


-}
sub87 :
    NNat (N (N87NatPlus nMinus1) Is (Difference a To (N87NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub87 =
    sub86 >> sub1


{-| The NNat minus 88.


-}
sub88 :
    NNat (N (N88NatPlus nMinus1) Is (Difference a To (N88NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub88 =
    sub87 >> sub1


{-| The NNat minus 89.


-}
sub89 :
    NNat (N (N89NatPlus nMinus1) Is (Difference a To (N89NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub89 =
    sub88 >> sub1


{-| The NNat minus 90.


-}
sub90 :
    NNat (N (N90NatPlus nMinus1) Is (Difference a To (N90NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub90 =
    sub89 >> sub1


{-| The NNat minus 91.


-}
sub91 :
    NNat (N (N91NatPlus nMinus1) Is (Difference a To (N91NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub91 =
    sub90 >> sub1


{-| The NNat minus 92.


-}
sub92 :
    NNat (N (N92NatPlus nMinus1) Is (Difference a To (N92NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub92 =
    sub91 >> sub1


{-| The NNat minus 93.


-}
sub93 :
    NNat (N (N93NatPlus nMinus1) Is (Difference a To (N93NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub93 =
    sub92 >> sub1


{-| The NNat minus 94.


-}
sub94 :
    NNat (N (N94NatPlus nMinus1) Is (Difference a To (N94NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub94 =
    sub93 >> sub1


{-| The NNat minus 95.


-}
sub95 :
    NNat (N (N95NatPlus nMinus1) Is (Difference a To (N95NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub95 =
    sub94 >> sub1


{-| The NNat minus 96.


-}
sub96 :
    NNat (N (N96NatPlus nMinus1) Is (Difference a To (N96NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub96 =
    sub95 >> sub1


{-| The NNat minus 97.


-}
sub97 :
    NNat (N (N97NatPlus nMinus1) Is (Difference a To (N97NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub97 =
    sub96 >> sub1


{-| The NNat minus 98.


-}
sub98 :
    NNat (N (N98NatPlus nMinus1) Is (Difference a To (N98NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub98 =
    sub97 >> sub1


{-| The NNat minus 99.


-}
sub99 :
    NNat (N (N99NatPlus nMinus1) Is (Difference a To (N99NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub99 =
    sub98 >> sub1


{-| The NNat minus 100.


-}
sub100 :
    NNat (N (N100NatPlus nMinus1) Is (Difference a To (N100NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub100 =
    sub99 >> sub1


{-| The NNat minus 101.


-}
sub101 :
    NNat (N (N101NatPlus nMinus1) Is (Difference a To (N101NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub101 =
    sub100 >> sub1


{-| The NNat minus 102.


-}
sub102 :
    NNat (N (N102NatPlus nMinus1) Is (Difference a To (N102NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub102 =
    sub101 >> sub1


{-| The NNat minus 103.


-}
sub103 :
    NNat (N (N103NatPlus nMinus1) Is (Difference a To (N103NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub103 =
    sub102 >> sub1


{-| The NNat minus 104.


-}
sub104 :
    NNat (N (N104NatPlus nMinus1) Is (Difference a To (N104NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub104 =
    sub103 >> sub1


{-| The NNat minus 105.


-}
sub105 :
    NNat (N (N105NatPlus nMinus1) Is (Difference a To (N105NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub105 =
    sub104 >> sub1


{-| The NNat minus 106.


-}
sub106 :
    NNat (N (N106NatPlus nMinus1) Is (Difference a To (N106NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub106 =
    sub105 >> sub1


{-| The NNat minus 107.


-}
sub107 :
    NNat (N (N107NatPlus nMinus1) Is (Difference a To (N107NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub107 =
    sub106 >> sub1


{-| The NNat minus 108.


-}
sub108 :
    NNat (N (N108NatPlus nMinus1) Is (Difference a To (N108NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub108 =
    sub107 >> sub1


{-| The NNat minus 109.


-}
sub109 :
    NNat (N (N109NatPlus nMinus1) Is (Difference a To (N109NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub109 =
    sub108 >> sub1


{-| The NNat minus 110.


-}
sub110 :
    NNat (N (N110NatPlus nMinus1) Is (Difference a To (N110NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub110 =
    sub109 >> sub1


{-| The NNat minus 111.


-}
sub111 :
    NNat (N (N111NatPlus nMinus1) Is (Difference a To (N111NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub111 =
    sub110 >> sub1


{-| The NNat minus 112.


-}
sub112 :
    NNat (N (N112NatPlus nMinus1) Is (Difference a To (N112NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub112 =
    sub111 >> sub1


{-| The NNat minus 113.


-}
sub113 :
    NNat (N (N113NatPlus nMinus1) Is (Difference a To (N113NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub113 =
    sub112 >> sub1


{-| The NNat minus 114.


-}
sub114 :
    NNat (N (N114NatPlus nMinus1) Is (Difference a To (N114NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub114 =
    sub113 >> sub1


{-| The NNat minus 115.


-}
sub115 :
    NNat (N (N115NatPlus nMinus1) Is (Difference a To (N115NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub115 =
    sub114 >> sub1


{-| The NNat minus 116.


-}
sub116 :
    NNat (N (N116NatPlus nMinus1) Is (Difference a To (N116NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub116 =
    sub115 >> sub1


{-| The NNat minus 117.


-}
sub117 :
    NNat (N (N117NatPlus nMinus1) Is (Difference a To (N117NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub117 =
    sub116 >> sub1


{-| The NNat minus 118.


-}
sub118 :
    NNat (N (N118NatPlus nMinus1) Is (Difference a To (N118NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub118 =
    sub117 >> sub1


{-| The NNat minus 119.


-}
sub119 :
    NNat (N (N119NatPlus nMinus1) Is (Difference a To (N119NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub119 =
    sub118 >> sub1


{-| The NNat minus 120.


-}
sub120 :
    NNat (N (N120NatPlus nMinus1) Is (Difference a To (N120NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub120 =
    sub119 >> sub1


{-| The NNat minus 121.


-}
sub121 :
    NNat (N (N121NatPlus nMinus1) Is (Difference a To (N121NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub121 =
    sub120 >> sub1


{-| The NNat minus 122.


-}
sub122 :
    NNat (N (N122NatPlus nMinus1) Is (Difference a To (N122NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub122 =
    sub121 >> sub1


{-| The NNat minus 123.


-}
sub123 :
    NNat (N (N123NatPlus nMinus1) Is (Difference a To (N123NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub123 =
    sub122 >> sub1


{-| The NNat minus 124.


-}
sub124 :
    NNat (N (N124NatPlus nMinus1) Is (Difference a To (N124NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub124 =
    sub123 >> sub1


{-| The NNat minus 125.


-}
sub125 :
    NNat (N (N125NatPlus nMinus1) Is (Difference a To (N125NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub125 =
    sub124 >> sub1


{-| The NNat minus 126.


-}
sub126 :
    NNat (N (N126NatPlus nMinus1) Is (Difference a To (N126NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub126 =
    sub125 >> sub1


{-| The NNat minus 127.


-}
sub127 :
    NNat (N (N127NatPlus nMinus1) Is (Difference a To (N127NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub127 =
    sub126 >> sub1


{-| The NNat minus 128.


-}
sub128 :
    NNat (N (N128NatPlus nMinus1) Is (Difference a To (N128NatPlus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub128 =
    sub127 >> sub1
