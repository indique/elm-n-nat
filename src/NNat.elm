module NNat exposing (NNat, add1, add10, add100, add101, add102, add103, add104, add105, add106, add107, add108, add109, add11, add110, add111, add112, add113, add114, add115, add116, add117, add118, add119, add12, add120, add121, add122, add123, add124, add125, add126, add127, add128, add129, add13, add130, add131, add132, add133, add134, add135, add136, add137, add138, add139, add14, add140, add141, add142, add143, add144, add145, add146, add147, add148, add149, add15, add150, add151, add152, add153, add154, add155, add156, add157, add158, add159, add16, add160, add161, add162, add163, add164, add165, add166, add167, add168, add169, add17, add170, add171, add172, add173, add174, add175, add176, add177, add178, add179, add18, add180, add181, add182, add183, add184, add185, add186, add187, add188, add189, add19, add190, add191, add192, add2, add20, add21, add22, add23, add24, add25, add26, add27, add28, add29, add3, add30, add31, add32, add33, add34, add35, add36, add37, add38, add39, add4, add40, add41, add42, add43, add44, add45, add46, add47, add48, add49, add5, add50, add51, add52, add53, add54, add55, add56, add57, add58, add59, add6, add60, add61, add62, add63, add64, add65, add66, add67, add68, add69, add7, add70, add71, add72, add73, add74, add75, add76, add77, add78, add79, add8, add80, add81, add82, add83, add84, add85, add86, add87, add88, add89, add9, add90, add91, add92, add93, add94, add95, add96, add97, add98, add99, n0, n1, n10, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n11, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n12, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n13, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n14, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n15, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n16, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n17, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n18, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n19, n190, n191, n192, n2, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n3, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n4, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n5, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n6, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n7, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n8, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n9, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, sub1, sub10, sub100, sub101, sub102, sub103, sub104, sub105, sub106, sub107, sub108, sub109, sub11, sub110, sub111, sub112, sub113, sub114, sub115, sub116, sub117, sub118, sub119, sub12, sub120, sub121, sub122, sub123, sub124, sub125, sub126, sub127, sub128, sub129, sub13, sub130, sub131, sub132, sub133, sub134, sub135, sub136, sub137, sub138, sub139, sub14, sub140, sub141, sub142, sub143, sub144, sub145, sub146, sub147, sub148, sub149, sub15, sub150, sub151, sub152, sub153, sub154, sub155, sub156, sub157, sub158, sub159, sub16, sub160, sub161, sub162, sub163, sub164, sub165, sub166, sub167, sub168, sub169, sub17, sub170, sub171, sub172, sub173, sub174, sub175, sub176, sub177, sub178, sub179, sub18, sub180, sub181, sub182, sub183, sub184, sub185, sub186, sub187, sub188, sub189, sub19, sub190, sub191, sub192, sub2, sub20, sub21, sub22, sub23, sub24, sub25, sub26, sub27, sub28, sub29, sub3, sub30, sub31, sub32, sub33, sub34, sub35, sub36, sub37, sub38, sub39, sub4, sub40, sub41, sub42, sub43, sub44, sub45, sub46, sub47, sub48, sub49, sub5, sub50, sub51, sub52, sub53, sub54, sub55, sub56, sub57, sub58, sub59, sub6, sub60, sub61, sub62, sub63, sub64, sub65, sub66, sub67, sub68, sub69, sub7, sub70, sub71, sub72, sub73, sub74, sub75, sub76, sub77, sub78, sub79, sub8, sub80, sub81, sub82, sub83, sub84, sub85, sub86, sub87, sub88, sub89, sub9, sub90, sub91, sub92, sub93, sub94, sub95, sub96, sub97, sub98, sub99, toInt)

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
@docs add127, add128, add129, add13, add130, add131, add132, add133, add134, add135
@docs add136, add137, add138, add139, add14, add140, add141, add142, add143, add144
@docs add145, add146, add147, add148, add149, add15, add150, add151, add152, add153
@docs add154, add155, add156, add157, add158, add159, add16, add160, add161, add162
@docs add163, add164, add165, add166, add167, add168, add169, add17, add170, add171
@docs add172, add173, add174, add175, add176, add177, add178, add179, add18, add180
@docs add181, add182, add183, add184, add185, add186, add187, add188, add189, add19
@docs add190, add191, add192, add2, add20, add21, add22, add23, add24, add25, add26, add27
@docs add28, add29, add3, add30, add31, add32, add33, add34, add35, add36, add37, add38, add39
@docs add4, add40, add41, add42, add43, add44, add45, add46, add47, add48, add49, add5, add50
@docs add51, add52, add53, add54, add55, add56, add57, add58, add59, add6, add60, add61, add62
@docs add63, add64, add65, add66, add67, add68, add69, add7, add70, add71, add72, add73, add74
@docs add75, add76, add77, add78, add79, add8, add80, add81, add82, add83, add84, add85, add86
@docs add87, add88, add89, add9, add90, add91, add92, add93, add94, add95, add96, add97, add98
@docs add99
## at least


@docs sub1, sub10, sub100, sub101, sub102, sub103, sub104, sub105, sub106, sub107, sub108
@docs sub109, sub11, sub110, sub111, sub112, sub113, sub114, sub115, sub116, sub117
@docs sub118, sub119, sub12, sub120, sub121, sub122, sub123, sub124, sub125, sub126
@docs sub127, sub128, sub129, sub13, sub130, sub131, sub132, sub133, sub134, sub135
@docs sub136, sub137, sub138, sub139, sub14, sub140, sub141, sub142, sub143, sub144
@docs sub145, sub146, sub147, sub148, sub149, sub15, sub150, sub151, sub152, sub153
@docs sub154, sub155, sub156, sub157, sub158, sub159, sub16, sub160, sub161, sub162
@docs sub163, sub164, sub165, sub166, sub167, sub168, sub169, sub17, sub170, sub171
@docs sub172, sub173, sub174, sub175, sub176, sub177, sub178, sub179, sub18, sub180
@docs sub181, sub182, sub183, sub184, sub185, sub186, sub187, sub188, sub189, sub19
@docs sub190, sub191, sub192, sub2, sub20, sub21, sub22, sub23, sub24, sub25, sub26, sub27
@docs sub28, sub29, sub3, sub30, sub31, sub32, sub33, sub34, sub35, sub36, sub37, sub38, sub39
@docs sub4, sub40, sub41, sub42, sub43, sub44, sub45, sub46, sub47, sub48, sub49, sub5, sub50
@docs sub51, sub52, sub53, sub54, sub55, sub56, sub57, sub58, sub59, sub6, sub60, sub61, sub62
@docs sub63, sub64, sub65, sub66, sub67, sub68, sub69, sub7, sub70, sub71, sub72, sub73, sub74
@docs sub75, sub76, sub77, sub78, sub79, sub8, sub80, sub81, sub82, sub83, sub84, sub85, sub86
@docs sub87, sub88, sub89, sub9, sub90, sub91, sub92, sub93, sub94, sub95, sub96, sub97, sub98
@docs sub99
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


{-| The `NNat` plus 129.


-}
add129 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N129NatPlus n) Is (Difference a To (N129NatPlus nPlusA)))
add129 =
    add128 >> add1


{-| The `NNat` plus 130.


-}
add130 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N130NatPlus n) Is (Difference a To (N130NatPlus nPlusA)))
add130 =
    add129 >> add1


{-| The `NNat` plus 131.


-}
add131 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N131NatPlus n) Is (Difference a To (N131NatPlus nPlusA)))
add131 =
    add130 >> add1


{-| The `NNat` plus 132.


-}
add132 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N132NatPlus n) Is (Difference a To (N132NatPlus nPlusA)))
add132 =
    add131 >> add1


{-| The `NNat` plus 133.


-}
add133 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N133NatPlus n) Is (Difference a To (N133NatPlus nPlusA)))
add133 =
    add132 >> add1


{-| The `NNat` plus 134.


-}
add134 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N134NatPlus n) Is (Difference a To (N134NatPlus nPlusA)))
add134 =
    add133 >> add1


{-| The `NNat` plus 135.


-}
add135 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N135NatPlus n) Is (Difference a To (N135NatPlus nPlusA)))
add135 =
    add134 >> add1


{-| The `NNat` plus 136.


-}
add136 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N136NatPlus n) Is (Difference a To (N136NatPlus nPlusA)))
add136 =
    add135 >> add1


{-| The `NNat` plus 137.


-}
add137 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N137NatPlus n) Is (Difference a To (N137NatPlus nPlusA)))
add137 =
    add136 >> add1


{-| The `NNat` plus 138.


-}
add138 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N138NatPlus n) Is (Difference a To (N138NatPlus nPlusA)))
add138 =
    add137 >> add1


{-| The `NNat` plus 139.


-}
add139 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N139NatPlus n) Is (Difference a To (N139NatPlus nPlusA)))
add139 =
    add138 >> add1


{-| The `NNat` plus 140.


-}
add140 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N140NatPlus n) Is (Difference a To (N140NatPlus nPlusA)))
add140 =
    add139 >> add1


{-| The `NNat` plus 141.


-}
add141 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N141NatPlus n) Is (Difference a To (N141NatPlus nPlusA)))
add141 =
    add140 >> add1


{-| The `NNat` plus 142.


-}
add142 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N142NatPlus n) Is (Difference a To (N142NatPlus nPlusA)))
add142 =
    add141 >> add1


{-| The `NNat` plus 143.


-}
add143 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N143NatPlus n) Is (Difference a To (N143NatPlus nPlusA)))
add143 =
    add142 >> add1


{-| The `NNat` plus 144.


-}
add144 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N144NatPlus n) Is (Difference a To (N144NatPlus nPlusA)))
add144 =
    add143 >> add1


{-| The `NNat` plus 145.


-}
add145 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N145NatPlus n) Is (Difference a To (N145NatPlus nPlusA)))
add145 =
    add144 >> add1


{-| The `NNat` plus 146.


-}
add146 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N146NatPlus n) Is (Difference a To (N146NatPlus nPlusA)))
add146 =
    add145 >> add1


{-| The `NNat` plus 147.


-}
add147 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N147NatPlus n) Is (Difference a To (N147NatPlus nPlusA)))
add147 =
    add146 >> add1


{-| The `NNat` plus 148.


-}
add148 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N148NatPlus n) Is (Difference a To (N148NatPlus nPlusA)))
add148 =
    add147 >> add1


{-| The `NNat` plus 149.


-}
add149 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N149NatPlus n) Is (Difference a To (N149NatPlus nPlusA)))
add149 =
    add148 >> add1


{-| The `NNat` plus 150.


-}
add150 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N150NatPlus n) Is (Difference a To (N150NatPlus nPlusA)))
add150 =
    add149 >> add1


{-| The `NNat` plus 151.


-}
add151 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N151NatPlus n) Is (Difference a To (N151NatPlus nPlusA)))
add151 =
    add150 >> add1


{-| The `NNat` plus 152.


-}
add152 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N152NatPlus n) Is (Difference a To (N152NatPlus nPlusA)))
add152 =
    add151 >> add1


{-| The `NNat` plus 153.


-}
add153 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N153NatPlus n) Is (Difference a To (N153NatPlus nPlusA)))
add153 =
    add152 >> add1


{-| The `NNat` plus 154.


-}
add154 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N154NatPlus n) Is (Difference a To (N154NatPlus nPlusA)))
add154 =
    add153 >> add1


{-| The `NNat` plus 155.


-}
add155 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N155NatPlus n) Is (Difference a To (N155NatPlus nPlusA)))
add155 =
    add154 >> add1


{-| The `NNat` plus 156.


-}
add156 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N156NatPlus n) Is (Difference a To (N156NatPlus nPlusA)))
add156 =
    add155 >> add1


{-| The `NNat` plus 157.


-}
add157 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N157NatPlus n) Is (Difference a To (N157NatPlus nPlusA)))
add157 =
    add156 >> add1


{-| The `NNat` plus 158.


-}
add158 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N158NatPlus n) Is (Difference a To (N158NatPlus nPlusA)))
add158 =
    add157 >> add1


{-| The `NNat` plus 159.


-}
add159 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N159NatPlus n) Is (Difference a To (N159NatPlus nPlusA)))
add159 =
    add158 >> add1


{-| The `NNat` plus 160.


-}
add160 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N160NatPlus n) Is (Difference a To (N160NatPlus nPlusA)))
add160 =
    add159 >> add1


{-| The `NNat` plus 161.


-}
add161 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N161NatPlus n) Is (Difference a To (N161NatPlus nPlusA)))
add161 =
    add160 >> add1


{-| The `NNat` plus 162.


-}
add162 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N162NatPlus n) Is (Difference a To (N162NatPlus nPlusA)))
add162 =
    add161 >> add1


{-| The `NNat` plus 163.


-}
add163 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N163NatPlus n) Is (Difference a To (N163NatPlus nPlusA)))
add163 =
    add162 >> add1


{-| The `NNat` plus 164.


-}
add164 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N164NatPlus n) Is (Difference a To (N164NatPlus nPlusA)))
add164 =
    add163 >> add1


{-| The `NNat` plus 165.


-}
add165 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N165NatPlus n) Is (Difference a To (N165NatPlus nPlusA)))
add165 =
    add164 >> add1


{-| The `NNat` plus 166.


-}
add166 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N166NatPlus n) Is (Difference a To (N166NatPlus nPlusA)))
add166 =
    add165 >> add1


{-| The `NNat` plus 167.


-}
add167 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N167NatPlus n) Is (Difference a To (N167NatPlus nPlusA)))
add167 =
    add166 >> add1


{-| The `NNat` plus 168.


-}
add168 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N168NatPlus n) Is (Difference a To (N168NatPlus nPlusA)))
add168 =
    add167 >> add1


{-| The `NNat` plus 169.


-}
add169 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N169NatPlus n) Is (Difference a To (N169NatPlus nPlusA)))
add169 =
    add168 >> add1


{-| The `NNat` plus 170.


-}
add170 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N170NatPlus n) Is (Difference a To (N170NatPlus nPlusA)))
add170 =
    add169 >> add1


{-| The `NNat` plus 171.


-}
add171 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N171NatPlus n) Is (Difference a To (N171NatPlus nPlusA)))
add171 =
    add170 >> add1


{-| The `NNat` plus 172.


-}
add172 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N172NatPlus n) Is (Difference a To (N172NatPlus nPlusA)))
add172 =
    add171 >> add1


{-| The `NNat` plus 173.


-}
add173 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N173NatPlus n) Is (Difference a To (N173NatPlus nPlusA)))
add173 =
    add172 >> add1


{-| The `NNat` plus 174.


-}
add174 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N174NatPlus n) Is (Difference a To (N174NatPlus nPlusA)))
add174 =
    add173 >> add1


{-| The `NNat` plus 175.


-}
add175 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N175NatPlus n) Is (Difference a To (N175NatPlus nPlusA)))
add175 =
    add174 >> add1


{-| The `NNat` plus 176.


-}
add176 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N176NatPlus n) Is (Difference a To (N176NatPlus nPlusA)))
add176 =
    add175 >> add1


{-| The `NNat` plus 177.


-}
add177 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N177NatPlus n) Is (Difference a To (N177NatPlus nPlusA)))
add177 =
    add176 >> add1


{-| The `NNat` plus 178.


-}
add178 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N178NatPlus n) Is (Difference a To (N178NatPlus nPlusA)))
add178 =
    add177 >> add1


{-| The `NNat` plus 179.


-}
add179 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N179NatPlus n) Is (Difference a To (N179NatPlus nPlusA)))
add179 =
    add178 >> add1


{-| The `NNat` plus 180.


-}
add180 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N180NatPlus n) Is (Difference a To (N180NatPlus nPlusA)))
add180 =
    add179 >> add1


{-| The `NNat` plus 181.


-}
add181 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N181NatPlus n) Is (Difference a To (N181NatPlus nPlusA)))
add181 =
    add180 >> add1


{-| The `NNat` plus 182.


-}
add182 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N182NatPlus n) Is (Difference a To (N182NatPlus nPlusA)))
add182 =
    add181 >> add1


{-| The `NNat` plus 183.


-}
add183 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N183NatPlus n) Is (Difference a To (N183NatPlus nPlusA)))
add183 =
    add182 >> add1


{-| The `NNat` plus 184.


-}
add184 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N184NatPlus n) Is (Difference a To (N184NatPlus nPlusA)))
add184 =
    add183 >> add1


{-| The `NNat` plus 185.


-}
add185 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N185NatPlus n) Is (Difference a To (N185NatPlus nPlusA)))
add185 =
    add184 >> add1


{-| The `NNat` plus 186.


-}
add186 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N186NatPlus n) Is (Difference a To (N186NatPlus nPlusA)))
add186 =
    add185 >> add1


{-| The `NNat` plus 187.


-}
add187 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N187NatPlus n) Is (Difference a To (N187NatPlus nPlusA)))
add187 =
    add186 >> add1


{-| The `NNat` plus 188.


-}
add188 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N188NatPlus n) Is (Difference a To (N188NatPlus nPlusA)))
add188 =
    add187 >> add1


{-| The `NNat` plus 189.


-}
add189 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N189NatPlus n) Is (Difference a To (N189NatPlus nPlusA)))
add189 =
    add188 >> add1


{-| The `NNat` plus 190.


-}
add190 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N190NatPlus n) Is (Difference a To (N190NatPlus nPlusA)))
add190 =
    add189 >> add1


{-| The `NNat` plus 191.


-}
add191 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N191NatPlus n) Is (Difference a To (N191NatPlus nPlusA)))
add191 =
    add190 >> add1


{-| The `NNat` plus 192.


-}
add192 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N192NatPlus n) Is (Difference a To (N192NatPlus nPlusA)))
add192 =
    add191 >> add1


{-| The NNat minus 1.


-}
sub1 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1NatPlus n) Is (Difference a To (N1NatPlus nPlusA)))
sub1 =
    Internal.sub1


{-| The NNat minus 2.


-}
sub2 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N2NatPlus n) Is (Difference a To (N2NatPlus nPlusA)))
sub2 =
    sub1 >> sub1


{-| The NNat minus 3.


-}
sub3 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N3NatPlus n) Is (Difference a To (N3NatPlus nPlusA)))
sub3 =
    sub2 >> sub1


{-| The NNat minus 4.


-}
sub4 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N4NatPlus n) Is (Difference a To (N4NatPlus nPlusA)))
sub4 =
    sub3 >> sub1


{-| The NNat minus 5.


-}
sub5 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N5NatPlus n) Is (Difference a To (N5NatPlus nPlusA)))
sub5 =
    sub4 >> sub1


{-| The NNat minus 6.


-}
sub6 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N6NatPlus n) Is (Difference a To (N6NatPlus nPlusA)))
sub6 =
    sub5 >> sub1


{-| The NNat minus 7.


-}
sub7 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N7NatPlus n) Is (Difference a To (N7NatPlus nPlusA)))
sub7 =
    sub6 >> sub1


{-| The NNat minus 8.


-}
sub8 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N8NatPlus n) Is (Difference a To (N8NatPlus nPlusA)))
sub8 =
    sub7 >> sub1


{-| The NNat minus 9.


-}
sub9 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N9NatPlus n) Is (Difference a To (N9NatPlus nPlusA)))
sub9 =
    sub8 >> sub1


{-| The NNat minus 10.


-}
sub10 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N10NatPlus n) Is (Difference a To (N10NatPlus nPlusA)))
sub10 =
    sub9 >> sub1


{-| The NNat minus 11.


-}
sub11 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N11NatPlus n) Is (Difference a To (N11NatPlus nPlusA)))
sub11 =
    sub10 >> sub1


{-| The NNat minus 12.


-}
sub12 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N12NatPlus n) Is (Difference a To (N12NatPlus nPlusA)))
sub12 =
    sub11 >> sub1


{-| The NNat minus 13.


-}
sub13 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N13NatPlus n) Is (Difference a To (N13NatPlus nPlusA)))
sub13 =
    sub12 >> sub1


{-| The NNat minus 14.


-}
sub14 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N14NatPlus n) Is (Difference a To (N14NatPlus nPlusA)))
sub14 =
    sub13 >> sub1


{-| The NNat minus 15.


-}
sub15 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N15NatPlus n) Is (Difference a To (N15NatPlus nPlusA)))
sub15 =
    sub14 >> sub1


{-| The NNat minus 16.


-}
sub16 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N16NatPlus n) Is (Difference a To (N16NatPlus nPlusA)))
sub16 =
    sub15 >> sub1


{-| The NNat minus 17.


-}
sub17 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N17NatPlus n) Is (Difference a To (N17NatPlus nPlusA)))
sub17 =
    sub16 >> sub1


{-| The NNat minus 18.


-}
sub18 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N18NatPlus n) Is (Difference a To (N18NatPlus nPlusA)))
sub18 =
    sub17 >> sub1


{-| The NNat minus 19.


-}
sub19 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N19NatPlus n) Is (Difference a To (N19NatPlus nPlusA)))
sub19 =
    sub18 >> sub1


{-| The NNat minus 20.


-}
sub20 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N20NatPlus n) Is (Difference a To (N20NatPlus nPlusA)))
sub20 =
    sub19 >> sub1


{-| The NNat minus 21.


-}
sub21 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N21NatPlus n) Is (Difference a To (N21NatPlus nPlusA)))
sub21 =
    sub20 >> sub1


{-| The NNat minus 22.


-}
sub22 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N22NatPlus n) Is (Difference a To (N22NatPlus nPlusA)))
sub22 =
    sub21 >> sub1


{-| The NNat minus 23.


-}
sub23 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N23NatPlus n) Is (Difference a To (N23NatPlus nPlusA)))
sub23 =
    sub22 >> sub1


{-| The NNat minus 24.


-}
sub24 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N24NatPlus n) Is (Difference a To (N24NatPlus nPlusA)))
sub24 =
    sub23 >> sub1


{-| The NNat minus 25.


-}
sub25 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N25NatPlus n) Is (Difference a To (N25NatPlus nPlusA)))
sub25 =
    sub24 >> sub1


{-| The NNat minus 26.


-}
sub26 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N26NatPlus n) Is (Difference a To (N26NatPlus nPlusA)))
sub26 =
    sub25 >> sub1


{-| The NNat minus 27.


-}
sub27 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N27NatPlus n) Is (Difference a To (N27NatPlus nPlusA)))
sub27 =
    sub26 >> sub1


{-| The NNat minus 28.


-}
sub28 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N28NatPlus n) Is (Difference a To (N28NatPlus nPlusA)))
sub28 =
    sub27 >> sub1


{-| The NNat minus 29.


-}
sub29 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N29NatPlus n) Is (Difference a To (N29NatPlus nPlusA)))
sub29 =
    sub28 >> sub1


{-| The NNat minus 30.


-}
sub30 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N30NatPlus n) Is (Difference a To (N30NatPlus nPlusA)))
sub30 =
    sub29 >> sub1


{-| The NNat minus 31.


-}
sub31 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N31NatPlus n) Is (Difference a To (N31NatPlus nPlusA)))
sub31 =
    sub30 >> sub1


{-| The NNat minus 32.


-}
sub32 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N32NatPlus n) Is (Difference a To (N32NatPlus nPlusA)))
sub32 =
    sub31 >> sub1


{-| The NNat minus 33.


-}
sub33 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N33NatPlus n) Is (Difference a To (N33NatPlus nPlusA)))
sub33 =
    sub32 >> sub1


{-| The NNat minus 34.


-}
sub34 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N34NatPlus n) Is (Difference a To (N34NatPlus nPlusA)))
sub34 =
    sub33 >> sub1


{-| The NNat minus 35.


-}
sub35 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N35NatPlus n) Is (Difference a To (N35NatPlus nPlusA)))
sub35 =
    sub34 >> sub1


{-| The NNat minus 36.


-}
sub36 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N36NatPlus n) Is (Difference a To (N36NatPlus nPlusA)))
sub36 =
    sub35 >> sub1


{-| The NNat minus 37.


-}
sub37 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N37NatPlus n) Is (Difference a To (N37NatPlus nPlusA)))
sub37 =
    sub36 >> sub1


{-| The NNat minus 38.


-}
sub38 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N38NatPlus n) Is (Difference a To (N38NatPlus nPlusA)))
sub38 =
    sub37 >> sub1


{-| The NNat minus 39.


-}
sub39 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N39NatPlus n) Is (Difference a To (N39NatPlus nPlusA)))
sub39 =
    sub38 >> sub1


{-| The NNat minus 40.


-}
sub40 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N40NatPlus n) Is (Difference a To (N40NatPlus nPlusA)))
sub40 =
    sub39 >> sub1


{-| The NNat minus 41.


-}
sub41 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N41NatPlus n) Is (Difference a To (N41NatPlus nPlusA)))
sub41 =
    sub40 >> sub1


{-| The NNat minus 42.


-}
sub42 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N42NatPlus n) Is (Difference a To (N42NatPlus nPlusA)))
sub42 =
    sub41 >> sub1


{-| The NNat minus 43.


-}
sub43 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N43NatPlus n) Is (Difference a To (N43NatPlus nPlusA)))
sub43 =
    sub42 >> sub1


{-| The NNat minus 44.


-}
sub44 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N44NatPlus n) Is (Difference a To (N44NatPlus nPlusA)))
sub44 =
    sub43 >> sub1


{-| The NNat minus 45.


-}
sub45 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N45NatPlus n) Is (Difference a To (N45NatPlus nPlusA)))
sub45 =
    sub44 >> sub1


{-| The NNat minus 46.


-}
sub46 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N46NatPlus n) Is (Difference a To (N46NatPlus nPlusA)))
sub46 =
    sub45 >> sub1


{-| The NNat minus 47.


-}
sub47 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N47NatPlus n) Is (Difference a To (N47NatPlus nPlusA)))
sub47 =
    sub46 >> sub1


{-| The NNat minus 48.


-}
sub48 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N48NatPlus n) Is (Difference a To (N48NatPlus nPlusA)))
sub48 =
    sub47 >> sub1


{-| The NNat minus 49.


-}
sub49 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N49NatPlus n) Is (Difference a To (N49NatPlus nPlusA)))
sub49 =
    sub48 >> sub1


{-| The NNat minus 50.


-}
sub50 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N50NatPlus n) Is (Difference a To (N50NatPlus nPlusA)))
sub50 =
    sub49 >> sub1


{-| The NNat minus 51.


-}
sub51 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N51NatPlus n) Is (Difference a To (N51NatPlus nPlusA)))
sub51 =
    sub50 >> sub1


{-| The NNat minus 52.


-}
sub52 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N52NatPlus n) Is (Difference a To (N52NatPlus nPlusA)))
sub52 =
    sub51 >> sub1


{-| The NNat minus 53.


-}
sub53 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N53NatPlus n) Is (Difference a To (N53NatPlus nPlusA)))
sub53 =
    sub52 >> sub1


{-| The NNat minus 54.


-}
sub54 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N54NatPlus n) Is (Difference a To (N54NatPlus nPlusA)))
sub54 =
    sub53 >> sub1


{-| The NNat minus 55.


-}
sub55 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N55NatPlus n) Is (Difference a To (N55NatPlus nPlusA)))
sub55 =
    sub54 >> sub1


{-| The NNat minus 56.


-}
sub56 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N56NatPlus n) Is (Difference a To (N56NatPlus nPlusA)))
sub56 =
    sub55 >> sub1


{-| The NNat minus 57.


-}
sub57 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N57NatPlus n) Is (Difference a To (N57NatPlus nPlusA)))
sub57 =
    sub56 >> sub1


{-| The NNat minus 58.


-}
sub58 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N58NatPlus n) Is (Difference a To (N58NatPlus nPlusA)))
sub58 =
    sub57 >> sub1


{-| The NNat minus 59.


-}
sub59 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N59NatPlus n) Is (Difference a To (N59NatPlus nPlusA)))
sub59 =
    sub58 >> sub1


{-| The NNat minus 60.


-}
sub60 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N60NatPlus n) Is (Difference a To (N60NatPlus nPlusA)))
sub60 =
    sub59 >> sub1


{-| The NNat minus 61.


-}
sub61 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N61NatPlus n) Is (Difference a To (N61NatPlus nPlusA)))
sub61 =
    sub60 >> sub1


{-| The NNat minus 62.


-}
sub62 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N62NatPlus n) Is (Difference a To (N62NatPlus nPlusA)))
sub62 =
    sub61 >> sub1


{-| The NNat minus 63.


-}
sub63 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N63NatPlus n) Is (Difference a To (N63NatPlus nPlusA)))
sub63 =
    sub62 >> sub1


{-| The NNat minus 64.


-}
sub64 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N64NatPlus n) Is (Difference a To (N64NatPlus nPlusA)))
sub64 =
    sub63 >> sub1


{-| The NNat minus 65.


-}
sub65 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N65NatPlus n) Is (Difference a To (N65NatPlus nPlusA)))
sub65 =
    sub64 >> sub1


{-| The NNat minus 66.


-}
sub66 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N66NatPlus n) Is (Difference a To (N66NatPlus nPlusA)))
sub66 =
    sub65 >> sub1


{-| The NNat minus 67.


-}
sub67 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N67NatPlus n) Is (Difference a To (N67NatPlus nPlusA)))
sub67 =
    sub66 >> sub1


{-| The NNat minus 68.


-}
sub68 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N68NatPlus n) Is (Difference a To (N68NatPlus nPlusA)))
sub68 =
    sub67 >> sub1


{-| The NNat minus 69.


-}
sub69 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N69NatPlus n) Is (Difference a To (N69NatPlus nPlusA)))
sub69 =
    sub68 >> sub1


{-| The NNat minus 70.


-}
sub70 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N70NatPlus n) Is (Difference a To (N70NatPlus nPlusA)))
sub70 =
    sub69 >> sub1


{-| The NNat minus 71.


-}
sub71 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N71NatPlus n) Is (Difference a To (N71NatPlus nPlusA)))
sub71 =
    sub70 >> sub1


{-| The NNat minus 72.


-}
sub72 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N72NatPlus n) Is (Difference a To (N72NatPlus nPlusA)))
sub72 =
    sub71 >> sub1


{-| The NNat minus 73.


-}
sub73 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N73NatPlus n) Is (Difference a To (N73NatPlus nPlusA)))
sub73 =
    sub72 >> sub1


{-| The NNat minus 74.


-}
sub74 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N74NatPlus n) Is (Difference a To (N74NatPlus nPlusA)))
sub74 =
    sub73 >> sub1


{-| The NNat minus 75.


-}
sub75 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N75NatPlus n) Is (Difference a To (N75NatPlus nPlusA)))
sub75 =
    sub74 >> sub1


{-| The NNat minus 76.


-}
sub76 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N76NatPlus n) Is (Difference a To (N76NatPlus nPlusA)))
sub76 =
    sub75 >> sub1


{-| The NNat minus 77.


-}
sub77 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N77NatPlus n) Is (Difference a To (N77NatPlus nPlusA)))
sub77 =
    sub76 >> sub1


{-| The NNat minus 78.


-}
sub78 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N78NatPlus n) Is (Difference a To (N78NatPlus nPlusA)))
sub78 =
    sub77 >> sub1


{-| The NNat minus 79.


-}
sub79 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N79NatPlus n) Is (Difference a To (N79NatPlus nPlusA)))
sub79 =
    sub78 >> sub1


{-| The NNat minus 80.


-}
sub80 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N80NatPlus n) Is (Difference a To (N80NatPlus nPlusA)))
sub80 =
    sub79 >> sub1


{-| The NNat minus 81.


-}
sub81 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N81NatPlus n) Is (Difference a To (N81NatPlus nPlusA)))
sub81 =
    sub80 >> sub1


{-| The NNat minus 82.


-}
sub82 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N82NatPlus n) Is (Difference a To (N82NatPlus nPlusA)))
sub82 =
    sub81 >> sub1


{-| The NNat minus 83.


-}
sub83 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N83NatPlus n) Is (Difference a To (N83NatPlus nPlusA)))
sub83 =
    sub82 >> sub1


{-| The NNat minus 84.


-}
sub84 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N84NatPlus n) Is (Difference a To (N84NatPlus nPlusA)))
sub84 =
    sub83 >> sub1


{-| The NNat minus 85.


-}
sub85 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N85NatPlus n) Is (Difference a To (N85NatPlus nPlusA)))
sub85 =
    sub84 >> sub1


{-| The NNat minus 86.


-}
sub86 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N86NatPlus n) Is (Difference a To (N86NatPlus nPlusA)))
sub86 =
    sub85 >> sub1


{-| The NNat minus 87.


-}
sub87 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N87NatPlus n) Is (Difference a To (N87NatPlus nPlusA)))
sub87 =
    sub86 >> sub1


{-| The NNat minus 88.


-}
sub88 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N88NatPlus n) Is (Difference a To (N88NatPlus nPlusA)))
sub88 =
    sub87 >> sub1


{-| The NNat minus 89.


-}
sub89 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N89NatPlus n) Is (Difference a To (N89NatPlus nPlusA)))
sub89 =
    sub88 >> sub1


{-| The NNat minus 90.


-}
sub90 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N90NatPlus n) Is (Difference a To (N90NatPlus nPlusA)))
sub90 =
    sub89 >> sub1


{-| The NNat minus 91.


-}
sub91 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N91NatPlus n) Is (Difference a To (N91NatPlus nPlusA)))
sub91 =
    sub90 >> sub1


{-| The NNat minus 92.


-}
sub92 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N92NatPlus n) Is (Difference a To (N92NatPlus nPlusA)))
sub92 =
    sub91 >> sub1


{-| The NNat minus 93.


-}
sub93 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N93NatPlus n) Is (Difference a To (N93NatPlus nPlusA)))
sub93 =
    sub92 >> sub1


{-| The NNat minus 94.


-}
sub94 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N94NatPlus n) Is (Difference a To (N94NatPlus nPlusA)))
sub94 =
    sub93 >> sub1


{-| The NNat minus 95.


-}
sub95 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N95NatPlus n) Is (Difference a To (N95NatPlus nPlusA)))
sub95 =
    sub94 >> sub1


{-| The NNat minus 96.


-}
sub96 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N96NatPlus n) Is (Difference a To (N96NatPlus nPlusA)))
sub96 =
    sub95 >> sub1


{-| The NNat minus 97.


-}
sub97 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N97NatPlus n) Is (Difference a To (N97NatPlus nPlusA)))
sub97 =
    sub96 >> sub1


{-| The NNat minus 98.


-}
sub98 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N98NatPlus n) Is (Difference a To (N98NatPlus nPlusA)))
sub98 =
    sub97 >> sub1


{-| The NNat minus 99.


-}
sub99 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N99NatPlus n) Is (Difference a To (N99NatPlus nPlusA)))
sub99 =
    sub98 >> sub1


{-| The NNat minus 100.


-}
sub100 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N100NatPlus n) Is (Difference a To (N100NatPlus nPlusA)))
sub100 =
    sub99 >> sub1


{-| The NNat minus 101.


-}
sub101 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N101NatPlus n) Is (Difference a To (N101NatPlus nPlusA)))
sub101 =
    sub100 >> sub1


{-| The NNat minus 102.


-}
sub102 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N102NatPlus n) Is (Difference a To (N102NatPlus nPlusA)))
sub102 =
    sub101 >> sub1


{-| The NNat minus 103.


-}
sub103 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N103NatPlus n) Is (Difference a To (N103NatPlus nPlusA)))
sub103 =
    sub102 >> sub1


{-| The NNat minus 104.


-}
sub104 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N104NatPlus n) Is (Difference a To (N104NatPlus nPlusA)))
sub104 =
    sub103 >> sub1


{-| The NNat minus 105.


-}
sub105 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N105NatPlus n) Is (Difference a To (N105NatPlus nPlusA)))
sub105 =
    sub104 >> sub1


{-| The NNat minus 106.


-}
sub106 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N106NatPlus n) Is (Difference a To (N106NatPlus nPlusA)))
sub106 =
    sub105 >> sub1


{-| The NNat minus 107.


-}
sub107 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N107NatPlus n) Is (Difference a To (N107NatPlus nPlusA)))
sub107 =
    sub106 >> sub1


{-| The NNat minus 108.


-}
sub108 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N108NatPlus n) Is (Difference a To (N108NatPlus nPlusA)))
sub108 =
    sub107 >> sub1


{-| The NNat minus 109.


-}
sub109 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N109NatPlus n) Is (Difference a To (N109NatPlus nPlusA)))
sub109 =
    sub108 >> sub1


{-| The NNat minus 110.


-}
sub110 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N110NatPlus n) Is (Difference a To (N110NatPlus nPlusA)))
sub110 =
    sub109 >> sub1


{-| The NNat minus 111.


-}
sub111 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N111NatPlus n) Is (Difference a To (N111NatPlus nPlusA)))
sub111 =
    sub110 >> sub1


{-| The NNat minus 112.


-}
sub112 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N112NatPlus n) Is (Difference a To (N112NatPlus nPlusA)))
sub112 =
    sub111 >> sub1


{-| The NNat minus 113.


-}
sub113 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N113NatPlus n) Is (Difference a To (N113NatPlus nPlusA)))
sub113 =
    sub112 >> sub1


{-| The NNat minus 114.


-}
sub114 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N114NatPlus n) Is (Difference a To (N114NatPlus nPlusA)))
sub114 =
    sub113 >> sub1


{-| The NNat minus 115.


-}
sub115 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N115NatPlus n) Is (Difference a To (N115NatPlus nPlusA)))
sub115 =
    sub114 >> sub1


{-| The NNat minus 116.


-}
sub116 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N116NatPlus n) Is (Difference a To (N116NatPlus nPlusA)))
sub116 =
    sub115 >> sub1


{-| The NNat minus 117.


-}
sub117 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N117NatPlus n) Is (Difference a To (N117NatPlus nPlusA)))
sub117 =
    sub116 >> sub1


{-| The NNat minus 118.


-}
sub118 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N118NatPlus n) Is (Difference a To (N118NatPlus nPlusA)))
sub118 =
    sub117 >> sub1


{-| The NNat minus 119.


-}
sub119 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N119NatPlus n) Is (Difference a To (N119NatPlus nPlusA)))
sub119 =
    sub118 >> sub1


{-| The NNat minus 120.


-}
sub120 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N120NatPlus n) Is (Difference a To (N120NatPlus nPlusA)))
sub120 =
    sub119 >> sub1


{-| The NNat minus 121.


-}
sub121 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N121NatPlus n) Is (Difference a To (N121NatPlus nPlusA)))
sub121 =
    sub120 >> sub1


{-| The NNat minus 122.


-}
sub122 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N122NatPlus n) Is (Difference a To (N122NatPlus nPlusA)))
sub122 =
    sub121 >> sub1


{-| The NNat minus 123.


-}
sub123 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N123NatPlus n) Is (Difference a To (N123NatPlus nPlusA)))
sub123 =
    sub122 >> sub1


{-| The NNat minus 124.


-}
sub124 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N124NatPlus n) Is (Difference a To (N124NatPlus nPlusA)))
sub124 =
    sub123 >> sub1


{-| The NNat minus 125.


-}
sub125 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N125NatPlus n) Is (Difference a To (N125NatPlus nPlusA)))
sub125 =
    sub124 >> sub1


{-| The NNat minus 126.


-}
sub126 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N126NatPlus n) Is (Difference a To (N126NatPlus nPlusA)))
sub126 =
    sub125 >> sub1


{-| The NNat minus 127.


-}
sub127 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N127NatPlus n) Is (Difference a To (N127NatPlus nPlusA)))
sub127 =
    sub126 >> sub1


{-| The NNat minus 128.


-}
sub128 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N128NatPlus n) Is (Difference a To (N128NatPlus nPlusA)))
sub128 =
    sub127 >> sub1


{-| The NNat minus 129.


-}
sub129 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N129NatPlus n) Is (Difference a To (N129NatPlus nPlusA)))
sub129 =
    sub128 >> sub1


{-| The NNat minus 130.


-}
sub130 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N130NatPlus n) Is (Difference a To (N130NatPlus nPlusA)))
sub130 =
    sub129 >> sub1


{-| The NNat minus 131.


-}
sub131 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N131NatPlus n) Is (Difference a To (N131NatPlus nPlusA)))
sub131 =
    sub130 >> sub1


{-| The NNat minus 132.


-}
sub132 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N132NatPlus n) Is (Difference a To (N132NatPlus nPlusA)))
sub132 =
    sub131 >> sub1


{-| The NNat minus 133.


-}
sub133 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N133NatPlus n) Is (Difference a To (N133NatPlus nPlusA)))
sub133 =
    sub132 >> sub1


{-| The NNat minus 134.


-}
sub134 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N134NatPlus n) Is (Difference a To (N134NatPlus nPlusA)))
sub134 =
    sub133 >> sub1


{-| The NNat minus 135.


-}
sub135 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N135NatPlus n) Is (Difference a To (N135NatPlus nPlusA)))
sub135 =
    sub134 >> sub1


{-| The NNat minus 136.


-}
sub136 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N136NatPlus n) Is (Difference a To (N136NatPlus nPlusA)))
sub136 =
    sub135 >> sub1


{-| The NNat minus 137.


-}
sub137 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N137NatPlus n) Is (Difference a To (N137NatPlus nPlusA)))
sub137 =
    sub136 >> sub1


{-| The NNat minus 138.


-}
sub138 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N138NatPlus n) Is (Difference a To (N138NatPlus nPlusA)))
sub138 =
    sub137 >> sub1


{-| The NNat minus 139.


-}
sub139 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N139NatPlus n) Is (Difference a To (N139NatPlus nPlusA)))
sub139 =
    sub138 >> sub1


{-| The NNat minus 140.


-}
sub140 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N140NatPlus n) Is (Difference a To (N140NatPlus nPlusA)))
sub140 =
    sub139 >> sub1


{-| The NNat minus 141.


-}
sub141 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N141NatPlus n) Is (Difference a To (N141NatPlus nPlusA)))
sub141 =
    sub140 >> sub1


{-| The NNat minus 142.


-}
sub142 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N142NatPlus n) Is (Difference a To (N142NatPlus nPlusA)))
sub142 =
    sub141 >> sub1


{-| The NNat minus 143.


-}
sub143 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N143NatPlus n) Is (Difference a To (N143NatPlus nPlusA)))
sub143 =
    sub142 >> sub1


{-| The NNat minus 144.


-}
sub144 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N144NatPlus n) Is (Difference a To (N144NatPlus nPlusA)))
sub144 =
    sub143 >> sub1


{-| The NNat minus 145.


-}
sub145 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N145NatPlus n) Is (Difference a To (N145NatPlus nPlusA)))
sub145 =
    sub144 >> sub1


{-| The NNat minus 146.


-}
sub146 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N146NatPlus n) Is (Difference a To (N146NatPlus nPlusA)))
sub146 =
    sub145 >> sub1


{-| The NNat minus 147.


-}
sub147 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N147NatPlus n) Is (Difference a To (N147NatPlus nPlusA)))
sub147 =
    sub146 >> sub1


{-| The NNat minus 148.


-}
sub148 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N148NatPlus n) Is (Difference a To (N148NatPlus nPlusA)))
sub148 =
    sub147 >> sub1


{-| The NNat minus 149.


-}
sub149 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N149NatPlus n) Is (Difference a To (N149NatPlus nPlusA)))
sub149 =
    sub148 >> sub1


{-| The NNat minus 150.


-}
sub150 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N150NatPlus n) Is (Difference a To (N150NatPlus nPlusA)))
sub150 =
    sub149 >> sub1


{-| The NNat minus 151.


-}
sub151 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N151NatPlus n) Is (Difference a To (N151NatPlus nPlusA)))
sub151 =
    sub150 >> sub1


{-| The NNat minus 152.


-}
sub152 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N152NatPlus n) Is (Difference a To (N152NatPlus nPlusA)))
sub152 =
    sub151 >> sub1


{-| The NNat minus 153.


-}
sub153 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N153NatPlus n) Is (Difference a To (N153NatPlus nPlusA)))
sub153 =
    sub152 >> sub1


{-| The NNat minus 154.


-}
sub154 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N154NatPlus n) Is (Difference a To (N154NatPlus nPlusA)))
sub154 =
    sub153 >> sub1


{-| The NNat minus 155.


-}
sub155 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N155NatPlus n) Is (Difference a To (N155NatPlus nPlusA)))
sub155 =
    sub154 >> sub1


{-| The NNat minus 156.


-}
sub156 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N156NatPlus n) Is (Difference a To (N156NatPlus nPlusA)))
sub156 =
    sub155 >> sub1


{-| The NNat minus 157.


-}
sub157 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N157NatPlus n) Is (Difference a To (N157NatPlus nPlusA)))
sub157 =
    sub156 >> sub1


{-| The NNat minus 158.


-}
sub158 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N158NatPlus n) Is (Difference a To (N158NatPlus nPlusA)))
sub158 =
    sub157 >> sub1


{-| The NNat minus 159.


-}
sub159 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N159NatPlus n) Is (Difference a To (N159NatPlus nPlusA)))
sub159 =
    sub158 >> sub1


{-| The NNat minus 160.


-}
sub160 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N160NatPlus n) Is (Difference a To (N160NatPlus nPlusA)))
sub160 =
    sub159 >> sub1


{-| The NNat minus 161.


-}
sub161 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N161NatPlus n) Is (Difference a To (N161NatPlus nPlusA)))
sub161 =
    sub160 >> sub1


{-| The NNat minus 162.


-}
sub162 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N162NatPlus n) Is (Difference a To (N162NatPlus nPlusA)))
sub162 =
    sub161 >> sub1


{-| The NNat minus 163.


-}
sub163 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N163NatPlus n) Is (Difference a To (N163NatPlus nPlusA)))
sub163 =
    sub162 >> sub1


{-| The NNat minus 164.


-}
sub164 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N164NatPlus n) Is (Difference a To (N164NatPlus nPlusA)))
sub164 =
    sub163 >> sub1


{-| The NNat minus 165.


-}
sub165 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N165NatPlus n) Is (Difference a To (N165NatPlus nPlusA)))
sub165 =
    sub164 >> sub1


{-| The NNat minus 166.


-}
sub166 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N166NatPlus n) Is (Difference a To (N166NatPlus nPlusA)))
sub166 =
    sub165 >> sub1


{-| The NNat minus 167.


-}
sub167 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N167NatPlus n) Is (Difference a To (N167NatPlus nPlusA)))
sub167 =
    sub166 >> sub1


{-| The NNat minus 168.


-}
sub168 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N168NatPlus n) Is (Difference a To (N168NatPlus nPlusA)))
sub168 =
    sub167 >> sub1


{-| The NNat minus 169.


-}
sub169 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N169NatPlus n) Is (Difference a To (N169NatPlus nPlusA)))
sub169 =
    sub168 >> sub1


{-| The NNat minus 170.


-}
sub170 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N170NatPlus n) Is (Difference a To (N170NatPlus nPlusA)))
sub170 =
    sub169 >> sub1


{-| The NNat minus 171.


-}
sub171 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N171NatPlus n) Is (Difference a To (N171NatPlus nPlusA)))
sub171 =
    sub170 >> sub1


{-| The NNat minus 172.


-}
sub172 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N172NatPlus n) Is (Difference a To (N172NatPlus nPlusA)))
sub172 =
    sub171 >> sub1


{-| The NNat minus 173.


-}
sub173 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N173NatPlus n) Is (Difference a To (N173NatPlus nPlusA)))
sub173 =
    sub172 >> sub1


{-| The NNat minus 174.


-}
sub174 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N174NatPlus n) Is (Difference a To (N174NatPlus nPlusA)))
sub174 =
    sub173 >> sub1


{-| The NNat minus 175.


-}
sub175 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N175NatPlus n) Is (Difference a To (N175NatPlus nPlusA)))
sub175 =
    sub174 >> sub1


{-| The NNat minus 176.


-}
sub176 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N176NatPlus n) Is (Difference a To (N176NatPlus nPlusA)))
sub176 =
    sub175 >> sub1


{-| The NNat minus 177.


-}
sub177 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N177NatPlus n) Is (Difference a To (N177NatPlus nPlusA)))
sub177 =
    sub176 >> sub1


{-| The NNat minus 178.


-}
sub178 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N178NatPlus n) Is (Difference a To (N178NatPlus nPlusA)))
sub178 =
    sub177 >> sub1


{-| The NNat minus 179.


-}
sub179 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N179NatPlus n) Is (Difference a To (N179NatPlus nPlusA)))
sub179 =
    sub178 >> sub1


{-| The NNat minus 180.


-}
sub180 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N180NatPlus n) Is (Difference a To (N180NatPlus nPlusA)))
sub180 =
    sub179 >> sub1


{-| The NNat minus 181.


-}
sub181 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N181NatPlus n) Is (Difference a To (N181NatPlus nPlusA)))
sub181 =
    sub180 >> sub1


{-| The NNat minus 182.


-}
sub182 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N182NatPlus n) Is (Difference a To (N182NatPlus nPlusA)))
sub182 =
    sub181 >> sub1


{-| The NNat minus 183.


-}
sub183 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N183NatPlus n) Is (Difference a To (N183NatPlus nPlusA)))
sub183 =
    sub182 >> sub1


{-| The NNat minus 184.


-}
sub184 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N184NatPlus n) Is (Difference a To (N184NatPlus nPlusA)))
sub184 =
    sub183 >> sub1


{-| The NNat minus 185.


-}
sub185 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N185NatPlus n) Is (Difference a To (N185NatPlus nPlusA)))
sub185 =
    sub184 >> sub1


{-| The NNat minus 186.


-}
sub186 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N186NatPlus n) Is (Difference a To (N186NatPlus nPlusA)))
sub186 =
    sub185 >> sub1


{-| The NNat minus 187.


-}
sub187 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N187NatPlus n) Is (Difference a To (N187NatPlus nPlusA)))
sub187 =
    sub186 >> sub1


{-| The NNat minus 188.


-}
sub188 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N188NatPlus n) Is (Difference a To (N188NatPlus nPlusA)))
sub188 =
    sub187 >> sub1


{-| The NNat minus 189.


-}
sub189 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N189NatPlus n) Is (Difference a To (N189NatPlus nPlusA)))
sub189 =
    sub188 >> sub1


{-| The NNat minus 190.


-}
sub190 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N190NatPlus n) Is (Difference a To (N190NatPlus nPlusA)))
sub190 =
    sub189 >> sub1


{-| The NNat minus 191.


-}
sub191 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N191NatPlus n) Is (Difference a To (N191NatPlus nPlusA)))
sub191 =
    sub190 >> sub1


{-| The NNat minus 192.


-}
sub192 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N192NatPlus n) Is (Difference a To (N192NatPlus nPlusA)))
sub192 =
    sub191 >> sub1
