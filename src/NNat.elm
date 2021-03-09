module NNat exposing (NNat, add1, add10, add100, add101, add102, add103, add104, add105, add106, add107, add108, add109, add11, add110, add111, add112, add113, add114, add115, add116, add117, add118, add119, add12, add120, add121, add122, add123, add124, add125, add126, add127, add128, add13, add14, add15, add16, add17, add18, add19, add2, add20, add21, add22, add23, add24, add25, add26, add27, add28, add29, add3, add30, add31, add32, add33, add34, add35, add36, add37, add38, add39, add4, add40, add41, add42, add43, add44, add45, add46, add47, add48, add49, add5, add50, add51, add52, add53, add54, add55, add56, add57, add58, add59, add6, add60, add61, add62, add63, add64, add65, add66, add67, add68, add69, add7, add70, add71, add72, add73, add74, add75, add76, add77, add78, add79, add8, add80, add81, add82, add83, add84, add85, add86, add87, add88, add89, add9, add90, add91, add92, add93, add94, add95, add96, add97, add98, add99, n0, n1, n10, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n11, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n12, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n13, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n14, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n15, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n16, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n17, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n18, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n19, n190, n191, n192, n2, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n3, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n4, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n5, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n6, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n7, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n8, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n9, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, sub1, sub10, sub100, sub101, sub102, sub103, sub104, sub105, sub106, sub107, sub108, sub109, sub11, sub110, sub111, sub112, sub113, sub114, sub115, sub116, sub117, sub118, sub119, sub12, sub120, sub121, sub122, sub123, sub124, sub125, sub126, sub127, sub128, sub13, sub14, sub15, sub16, sub17, sub18, sub19, sub2, sub20, sub21, sub22, sub23, sub24, sub25, sub26, sub27, sub28, sub29, sub3, sub30, sub31, sub32, sub33, sub34, sub35, sub36, sub37, sub38, sub39, sub4, sub40, sub41, sub42, sub43, sub44, sub45, sub46, sub47, sub48, sub49, sub5, sub50, sub51, sub52, sub53, sub54, sub55, sub56, sub57, sub58, sub59, sub6, sub60, sub61, sub62, sub63, sub64, sub65, sub66, sub67, sub68, sub69, sub7, sub70, sub71, sub72, sub73, sub74, sub75, sub76, sub77, sub78, sub79, sub8, sub80, sub81, sub82, sub83, sub84, sub85, sub86, sub87, sub88, sub89, sub9, sub90, sub91, sub92, sub93, sub94, sub95, sub96, sub97, sub98, sub99, toInt)

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
n0 : NNat (N N0 Is (Difference a To a))
n0 =
    Internal.zero


{-| The `NNat` 1.


-}
n1 : NNat (N N1 Is (Difference a To (N1Plus a)))
n1 =
    n0 |> add1


{-| The `NNat` 2.


-}
n2 : NNat (N N2 Is (Difference a To (N2Plus a)))
n2 =
    n1 |> add1


{-| The `NNat` 3.


-}
n3 : NNat (N N3 Is (Difference a To (N3Plus a)))
n3 =
    n2 |> add1


{-| The `NNat` 4.


-}
n4 : NNat (N N4 Is (Difference a To (N4Plus a)))
n4 =
    n3 |> add1


{-| The `NNat` 5.


-}
n5 : NNat (N N5 Is (Difference a To (N5Plus a)))
n5 =
    n4 |> add1


{-| The `NNat` 6.


-}
n6 : NNat (N N6 Is (Difference a To (N6Plus a)))
n6 =
    n5 |> add1


{-| The `NNat` 7.


-}
n7 : NNat (N N7 Is (Difference a To (N7Plus a)))
n7 =
    n6 |> add1


{-| The `NNat` 8.


-}
n8 : NNat (N N8 Is (Difference a To (N8Plus a)))
n8 =
    n7 |> add1


{-| The `NNat` 9.


-}
n9 : NNat (N N9 Is (Difference a To (N9Plus a)))
n9 =
    n8 |> add1


{-| The `NNat` 10.


-}
n10 : NNat (N N10 Is (Difference a To (N10Plus a)))
n10 =
    n9 |> add1


{-| The `NNat` 11.


-}
n11 : NNat (N N11 Is (Difference a To (N11Plus a)))
n11 =
    n10 |> add1


{-| The `NNat` 12.


-}
n12 : NNat (N N12 Is (Difference a To (N12Plus a)))
n12 =
    n11 |> add1


{-| The `NNat` 13.


-}
n13 : NNat (N N13 Is (Difference a To (N13Plus a)))
n13 =
    n12 |> add1


{-| The `NNat` 14.


-}
n14 : NNat (N N14 Is (Difference a To (N14Plus a)))
n14 =
    n13 |> add1


{-| The `NNat` 15.


-}
n15 : NNat (N N15 Is (Difference a To (N15Plus a)))
n15 =
    n14 |> add1


{-| The `NNat` 16.


-}
n16 : NNat (N N16 Is (Difference a To (N16Plus a)))
n16 =
    n15 |> add1


{-| The `NNat` 17.


-}
n17 : NNat (N N17 Is (Difference a To (N17Plus a)))
n17 =
    n16 |> add1


{-| The `NNat` 18.


-}
n18 : NNat (N N18 Is (Difference a To (N18Plus a)))
n18 =
    n17 |> add1


{-| The `NNat` 19.


-}
n19 : NNat (N N19 Is (Difference a To (N19Plus a)))
n19 =
    n18 |> add1


{-| The `NNat` 20.


-}
n20 : NNat (N N20 Is (Difference a To (N20Plus a)))
n20 =
    n19 |> add1


{-| The `NNat` 21.


-}
n21 : NNat (N N21 Is (Difference a To (N21Plus a)))
n21 =
    n20 |> add1


{-| The `NNat` 22.


-}
n22 : NNat (N N22 Is (Difference a To (N22Plus a)))
n22 =
    n21 |> add1


{-| The `NNat` 23.


-}
n23 : NNat (N N23 Is (Difference a To (N23Plus a)))
n23 =
    n22 |> add1


{-| The `NNat` 24.


-}
n24 : NNat (N N24 Is (Difference a To (N24Plus a)))
n24 =
    n23 |> add1


{-| The `NNat` 25.


-}
n25 : NNat (N N25 Is (Difference a To (N25Plus a)))
n25 =
    n24 |> add1


{-| The `NNat` 26.


-}
n26 : NNat (N N26 Is (Difference a To (N26Plus a)))
n26 =
    n25 |> add1


{-| The `NNat` 27.


-}
n27 : NNat (N N27 Is (Difference a To (N27Plus a)))
n27 =
    n26 |> add1


{-| The `NNat` 28.


-}
n28 : NNat (N N28 Is (Difference a To (N28Plus a)))
n28 =
    n27 |> add1


{-| The `NNat` 29.


-}
n29 : NNat (N N29 Is (Difference a To (N29Plus a)))
n29 =
    n28 |> add1


{-| The `NNat` 30.


-}
n30 : NNat (N N30 Is (Difference a To (N30Plus a)))
n30 =
    n29 |> add1


{-| The `NNat` 31.


-}
n31 : NNat (N N31 Is (Difference a To (N31Plus a)))
n31 =
    n30 |> add1


{-| The `NNat` 32.


-}
n32 : NNat (N N32 Is (Difference a To (N32Plus a)))
n32 =
    n31 |> add1


{-| The `NNat` 33.


-}
n33 : NNat (N N33 Is (Difference a To (N33Plus a)))
n33 =
    n32 |> add1


{-| The `NNat` 34.


-}
n34 : NNat (N N34 Is (Difference a To (N34Plus a)))
n34 =
    n33 |> add1


{-| The `NNat` 35.


-}
n35 : NNat (N N35 Is (Difference a To (N35Plus a)))
n35 =
    n34 |> add1


{-| The `NNat` 36.


-}
n36 : NNat (N N36 Is (Difference a To (N36Plus a)))
n36 =
    n35 |> add1


{-| The `NNat` 37.


-}
n37 : NNat (N N37 Is (Difference a To (N37Plus a)))
n37 =
    n36 |> add1


{-| The `NNat` 38.


-}
n38 : NNat (N N38 Is (Difference a To (N38Plus a)))
n38 =
    n37 |> add1


{-| The `NNat` 39.


-}
n39 : NNat (N N39 Is (Difference a To (N39Plus a)))
n39 =
    n38 |> add1


{-| The `NNat` 40.


-}
n40 : NNat (N N40 Is (Difference a To (N40Plus a)))
n40 =
    n39 |> add1


{-| The `NNat` 41.


-}
n41 : NNat (N N41 Is (Difference a To (N41Plus a)))
n41 =
    n40 |> add1


{-| The `NNat` 42.


-}
n42 : NNat (N N42 Is (Difference a To (N42Plus a)))
n42 =
    n41 |> add1


{-| The `NNat` 43.


-}
n43 : NNat (N N43 Is (Difference a To (N43Plus a)))
n43 =
    n42 |> add1


{-| The `NNat` 44.


-}
n44 : NNat (N N44 Is (Difference a To (N44Plus a)))
n44 =
    n43 |> add1


{-| The `NNat` 45.


-}
n45 : NNat (N N45 Is (Difference a To (N45Plus a)))
n45 =
    n44 |> add1


{-| The `NNat` 46.


-}
n46 : NNat (N N46 Is (Difference a To (N46Plus a)))
n46 =
    n45 |> add1


{-| The `NNat` 47.


-}
n47 : NNat (N N47 Is (Difference a To (N47Plus a)))
n47 =
    n46 |> add1


{-| The `NNat` 48.


-}
n48 : NNat (N N48 Is (Difference a To (N48Plus a)))
n48 =
    n47 |> add1


{-| The `NNat` 49.


-}
n49 : NNat (N N49 Is (Difference a To (N49Plus a)))
n49 =
    n48 |> add1


{-| The `NNat` 50.


-}
n50 : NNat (N N50 Is (Difference a To (N50Plus a)))
n50 =
    n49 |> add1


{-| The `NNat` 51.


-}
n51 : NNat (N N51 Is (Difference a To (N51Plus a)))
n51 =
    n50 |> add1


{-| The `NNat` 52.


-}
n52 : NNat (N N52 Is (Difference a To (N52Plus a)))
n52 =
    n51 |> add1


{-| The `NNat` 53.


-}
n53 : NNat (N N53 Is (Difference a To (N53Plus a)))
n53 =
    n52 |> add1


{-| The `NNat` 54.


-}
n54 : NNat (N N54 Is (Difference a To (N54Plus a)))
n54 =
    n53 |> add1


{-| The `NNat` 55.


-}
n55 : NNat (N N55 Is (Difference a To (N55Plus a)))
n55 =
    n54 |> add1


{-| The `NNat` 56.


-}
n56 : NNat (N N56 Is (Difference a To (N56Plus a)))
n56 =
    n55 |> add1


{-| The `NNat` 57.


-}
n57 : NNat (N N57 Is (Difference a To (N57Plus a)))
n57 =
    n56 |> add1


{-| The `NNat` 58.


-}
n58 : NNat (N N58 Is (Difference a To (N58Plus a)))
n58 =
    n57 |> add1


{-| The `NNat` 59.


-}
n59 : NNat (N N59 Is (Difference a To (N59Plus a)))
n59 =
    n58 |> add1


{-| The `NNat` 60.


-}
n60 : NNat (N N60 Is (Difference a To (N60Plus a)))
n60 =
    n59 |> add1


{-| The `NNat` 61.


-}
n61 : NNat (N N61 Is (Difference a To (N61Plus a)))
n61 =
    n60 |> add1


{-| The `NNat` 62.


-}
n62 : NNat (N N62 Is (Difference a To (N62Plus a)))
n62 =
    n61 |> add1


{-| The `NNat` 63.


-}
n63 : NNat (N N63 Is (Difference a To (N63Plus a)))
n63 =
    n62 |> add1


{-| The `NNat` 64.


-}
n64 : NNat (N N64 Is (Difference a To (N64Plus a)))
n64 =
    n63 |> add1


{-| The `NNat` 65.


-}
n65 : NNat (N N65 Is (Difference a To (N65Plus a)))
n65 =
    n64 |> add1


{-| The `NNat` 66.


-}
n66 : NNat (N N66 Is (Difference a To (N66Plus a)))
n66 =
    n65 |> add1


{-| The `NNat` 67.


-}
n67 : NNat (N N67 Is (Difference a To (N67Plus a)))
n67 =
    n66 |> add1


{-| The `NNat` 68.


-}
n68 : NNat (N N68 Is (Difference a To (N68Plus a)))
n68 =
    n67 |> add1


{-| The `NNat` 69.


-}
n69 : NNat (N N69 Is (Difference a To (N69Plus a)))
n69 =
    n68 |> add1


{-| The `NNat` 70.


-}
n70 : NNat (N N70 Is (Difference a To (N70Plus a)))
n70 =
    n69 |> add1


{-| The `NNat` 71.


-}
n71 : NNat (N N71 Is (Difference a To (N71Plus a)))
n71 =
    n70 |> add1


{-| The `NNat` 72.


-}
n72 : NNat (N N72 Is (Difference a To (N72Plus a)))
n72 =
    n71 |> add1


{-| The `NNat` 73.


-}
n73 : NNat (N N73 Is (Difference a To (N73Plus a)))
n73 =
    n72 |> add1


{-| The `NNat` 74.


-}
n74 : NNat (N N74 Is (Difference a To (N74Plus a)))
n74 =
    n73 |> add1


{-| The `NNat` 75.


-}
n75 : NNat (N N75 Is (Difference a To (N75Plus a)))
n75 =
    n74 |> add1


{-| The `NNat` 76.


-}
n76 : NNat (N N76 Is (Difference a To (N76Plus a)))
n76 =
    n75 |> add1


{-| The `NNat` 77.


-}
n77 : NNat (N N77 Is (Difference a To (N77Plus a)))
n77 =
    n76 |> add1


{-| The `NNat` 78.


-}
n78 : NNat (N N78 Is (Difference a To (N78Plus a)))
n78 =
    n77 |> add1


{-| The `NNat` 79.


-}
n79 : NNat (N N79 Is (Difference a To (N79Plus a)))
n79 =
    n78 |> add1


{-| The `NNat` 80.


-}
n80 : NNat (N N80 Is (Difference a To (N80Plus a)))
n80 =
    n79 |> add1


{-| The `NNat` 81.


-}
n81 : NNat (N N81 Is (Difference a To (N81Plus a)))
n81 =
    n80 |> add1


{-| The `NNat` 82.


-}
n82 : NNat (N N82 Is (Difference a To (N82Plus a)))
n82 =
    n81 |> add1


{-| The `NNat` 83.


-}
n83 : NNat (N N83 Is (Difference a To (N83Plus a)))
n83 =
    n82 |> add1


{-| The `NNat` 84.


-}
n84 : NNat (N N84 Is (Difference a To (N84Plus a)))
n84 =
    n83 |> add1


{-| The `NNat` 85.


-}
n85 : NNat (N N85 Is (Difference a To (N85Plus a)))
n85 =
    n84 |> add1


{-| The `NNat` 86.


-}
n86 : NNat (N N86 Is (Difference a To (N86Plus a)))
n86 =
    n85 |> add1


{-| The `NNat` 87.


-}
n87 : NNat (N N87 Is (Difference a To (N87Plus a)))
n87 =
    n86 |> add1


{-| The `NNat` 88.


-}
n88 : NNat (N N88 Is (Difference a To (N88Plus a)))
n88 =
    n87 |> add1


{-| The `NNat` 89.


-}
n89 : NNat (N N89 Is (Difference a To (N89Plus a)))
n89 =
    n88 |> add1


{-| The `NNat` 90.


-}
n90 : NNat (N N90 Is (Difference a To (N90Plus a)))
n90 =
    n89 |> add1


{-| The `NNat` 91.


-}
n91 : NNat (N N91 Is (Difference a To (N91Plus a)))
n91 =
    n90 |> add1


{-| The `NNat` 92.


-}
n92 : NNat (N N92 Is (Difference a To (N92Plus a)))
n92 =
    n91 |> add1


{-| The `NNat` 93.


-}
n93 : NNat (N N93 Is (Difference a To (N93Plus a)))
n93 =
    n92 |> add1


{-| The `NNat` 94.


-}
n94 : NNat (N N94 Is (Difference a To (N94Plus a)))
n94 =
    n93 |> add1


{-| The `NNat` 95.


-}
n95 : NNat (N N95 Is (Difference a To (N95Plus a)))
n95 =
    n94 |> add1


{-| The `NNat` 96.


-}
n96 : NNat (N N96 Is (Difference a To (N96Plus a)))
n96 =
    n95 |> add1


{-| The `NNat` 97.


-}
n97 : NNat (N N97 Is (Difference a To (N97Plus a)))
n97 =
    n96 |> add1


{-| The `NNat` 98.


-}
n98 : NNat (N N98 Is (Difference a To (N98Plus a)))
n98 =
    n97 |> add1


{-| The `NNat` 99.


-}
n99 : NNat (N N99 Is (Difference a To (N99Plus a)))
n99 =
    n98 |> add1


{-| The `NNat` 100.


-}
n100 : NNat (N N100 Is (Difference a To (N100Plus a)))
n100 =
    n99 |> add1


{-| The `NNat` 101.


-}
n101 : NNat (N N101 Is (Difference a To (N101Plus a)))
n101 =
    n100 |> add1


{-| The `NNat` 102.


-}
n102 : NNat (N N102 Is (Difference a To (N102Plus a)))
n102 =
    n101 |> add1


{-| The `NNat` 103.


-}
n103 : NNat (N N103 Is (Difference a To (N103Plus a)))
n103 =
    n102 |> add1


{-| The `NNat` 104.


-}
n104 : NNat (N N104 Is (Difference a To (N104Plus a)))
n104 =
    n103 |> add1


{-| The `NNat` 105.


-}
n105 : NNat (N N105 Is (Difference a To (N105Plus a)))
n105 =
    n104 |> add1


{-| The `NNat` 106.


-}
n106 : NNat (N N106 Is (Difference a To (N106Plus a)))
n106 =
    n105 |> add1


{-| The `NNat` 107.


-}
n107 : NNat (N N107 Is (Difference a To (N107Plus a)))
n107 =
    n106 |> add1


{-| The `NNat` 108.


-}
n108 : NNat (N N108 Is (Difference a To (N108Plus a)))
n108 =
    n107 |> add1


{-| The `NNat` 109.


-}
n109 : NNat (N N109 Is (Difference a To (N109Plus a)))
n109 =
    n108 |> add1


{-| The `NNat` 110.


-}
n110 : NNat (N N110 Is (Difference a To (N110Plus a)))
n110 =
    n109 |> add1


{-| The `NNat` 111.


-}
n111 : NNat (N N111 Is (Difference a To (N111Plus a)))
n111 =
    n110 |> add1


{-| The `NNat` 112.


-}
n112 : NNat (N N112 Is (Difference a To (N112Plus a)))
n112 =
    n111 |> add1


{-| The `NNat` 113.


-}
n113 : NNat (N N113 Is (Difference a To (N113Plus a)))
n113 =
    n112 |> add1


{-| The `NNat` 114.


-}
n114 : NNat (N N114 Is (Difference a To (N114Plus a)))
n114 =
    n113 |> add1


{-| The `NNat` 115.


-}
n115 : NNat (N N115 Is (Difference a To (N115Plus a)))
n115 =
    n114 |> add1


{-| The `NNat` 116.


-}
n116 : NNat (N N116 Is (Difference a To (N116Plus a)))
n116 =
    n115 |> add1


{-| The `NNat` 117.


-}
n117 : NNat (N N117 Is (Difference a To (N117Plus a)))
n117 =
    n116 |> add1


{-| The `NNat` 118.


-}
n118 : NNat (N N118 Is (Difference a To (N118Plus a)))
n118 =
    n117 |> add1


{-| The `NNat` 119.


-}
n119 : NNat (N N119 Is (Difference a To (N119Plus a)))
n119 =
    n118 |> add1


{-| The `NNat` 120.


-}
n120 : NNat (N N120 Is (Difference a To (N120Plus a)))
n120 =
    n119 |> add1


{-| The `NNat` 121.


-}
n121 : NNat (N N121 Is (Difference a To (N121Plus a)))
n121 =
    n120 |> add1


{-| The `NNat` 122.


-}
n122 : NNat (N N122 Is (Difference a To (N122Plus a)))
n122 =
    n121 |> add1


{-| The `NNat` 123.


-}
n123 : NNat (N N123 Is (Difference a To (N123Plus a)))
n123 =
    n122 |> add1


{-| The `NNat` 124.


-}
n124 : NNat (N N124 Is (Difference a To (N124Plus a)))
n124 =
    n123 |> add1


{-| The `NNat` 125.


-}
n125 : NNat (N N125 Is (Difference a To (N125Plus a)))
n125 =
    n124 |> add1


{-| The `NNat` 126.


-}
n126 : NNat (N N126 Is (Difference a To (N126Plus a)))
n126 =
    n125 |> add1


{-| The `NNat` 127.


-}
n127 : NNat (N N127 Is (Difference a To (N127Plus a)))
n127 =
    n126 |> add1


{-| The `NNat` 128.


-}
n128 : NNat (N N128 Is (Difference a To (N128Plus a)))
n128 =
    n127 |> add1


{-| The `NNat` 129.


-}
n129 : NNat (N N129 Is (Difference a To (N129Plus a)))
n129 =
    n128 |> add1


{-| The `NNat` 130.


-}
n130 : NNat (N N130 Is (Difference a To (N130Plus a)))
n130 =
    n129 |> add1


{-| The `NNat` 131.


-}
n131 : NNat (N N131 Is (Difference a To (N131Plus a)))
n131 =
    n130 |> add1


{-| The `NNat` 132.


-}
n132 : NNat (N N132 Is (Difference a To (N132Plus a)))
n132 =
    n131 |> add1


{-| The `NNat` 133.


-}
n133 : NNat (N N133 Is (Difference a To (N133Plus a)))
n133 =
    n132 |> add1


{-| The `NNat` 134.


-}
n134 : NNat (N N134 Is (Difference a To (N134Plus a)))
n134 =
    n133 |> add1


{-| The `NNat` 135.


-}
n135 : NNat (N N135 Is (Difference a To (N135Plus a)))
n135 =
    n134 |> add1


{-| The `NNat` 136.


-}
n136 : NNat (N N136 Is (Difference a To (N136Plus a)))
n136 =
    n135 |> add1


{-| The `NNat` 137.


-}
n137 : NNat (N N137 Is (Difference a To (N137Plus a)))
n137 =
    n136 |> add1


{-| The `NNat` 138.


-}
n138 : NNat (N N138 Is (Difference a To (N138Plus a)))
n138 =
    n137 |> add1


{-| The `NNat` 139.


-}
n139 : NNat (N N139 Is (Difference a To (N139Plus a)))
n139 =
    n138 |> add1


{-| The `NNat` 140.


-}
n140 : NNat (N N140 Is (Difference a To (N140Plus a)))
n140 =
    n139 |> add1


{-| The `NNat` 141.


-}
n141 : NNat (N N141 Is (Difference a To (N141Plus a)))
n141 =
    n140 |> add1


{-| The `NNat` 142.


-}
n142 : NNat (N N142 Is (Difference a To (N142Plus a)))
n142 =
    n141 |> add1


{-| The `NNat` 143.


-}
n143 : NNat (N N143 Is (Difference a To (N143Plus a)))
n143 =
    n142 |> add1


{-| The `NNat` 144.


-}
n144 : NNat (N N144 Is (Difference a To (N144Plus a)))
n144 =
    n143 |> add1


{-| The `NNat` 145.


-}
n145 : NNat (N N145 Is (Difference a To (N145Plus a)))
n145 =
    n144 |> add1


{-| The `NNat` 146.


-}
n146 : NNat (N N146 Is (Difference a To (N146Plus a)))
n146 =
    n145 |> add1


{-| The `NNat` 147.


-}
n147 : NNat (N N147 Is (Difference a To (N147Plus a)))
n147 =
    n146 |> add1


{-| The `NNat` 148.


-}
n148 : NNat (N N148 Is (Difference a To (N148Plus a)))
n148 =
    n147 |> add1


{-| The `NNat` 149.


-}
n149 : NNat (N N149 Is (Difference a To (N149Plus a)))
n149 =
    n148 |> add1


{-| The `NNat` 150.


-}
n150 : NNat (N N150 Is (Difference a To (N150Plus a)))
n150 =
    n149 |> add1


{-| The `NNat` 151.


-}
n151 : NNat (N N151 Is (Difference a To (N151Plus a)))
n151 =
    n150 |> add1


{-| The `NNat` 152.


-}
n152 : NNat (N N152 Is (Difference a To (N152Plus a)))
n152 =
    n151 |> add1


{-| The `NNat` 153.


-}
n153 : NNat (N N153 Is (Difference a To (N153Plus a)))
n153 =
    n152 |> add1


{-| The `NNat` 154.


-}
n154 : NNat (N N154 Is (Difference a To (N154Plus a)))
n154 =
    n153 |> add1


{-| The `NNat` 155.


-}
n155 : NNat (N N155 Is (Difference a To (N155Plus a)))
n155 =
    n154 |> add1


{-| The `NNat` 156.


-}
n156 : NNat (N N156 Is (Difference a To (N156Plus a)))
n156 =
    n155 |> add1


{-| The `NNat` 157.


-}
n157 : NNat (N N157 Is (Difference a To (N157Plus a)))
n157 =
    n156 |> add1


{-| The `NNat` 158.


-}
n158 : NNat (N N158 Is (Difference a To (N158Plus a)))
n158 =
    n157 |> add1


{-| The `NNat` 159.


-}
n159 : NNat (N N159 Is (Difference a To (N159Plus a)))
n159 =
    n158 |> add1


{-| The `NNat` 160.


-}
n160 : NNat (N N160 Is (Difference a To (N160Plus a)))
n160 =
    n159 |> add1


{-| The `NNat` 161.


-}
n161 : NNat (N N161 Is (Difference a To (N161Plus a)))
n161 =
    n160 |> add1


{-| The `NNat` 162.


-}
n162 : NNat (N N162 Is (Difference a To (N162Plus a)))
n162 =
    n161 |> add1


{-| The `NNat` 163.


-}
n163 : NNat (N N163 Is (Difference a To (N163Plus a)))
n163 =
    n162 |> add1


{-| The `NNat` 164.


-}
n164 : NNat (N N164 Is (Difference a To (N164Plus a)))
n164 =
    n163 |> add1


{-| The `NNat` 165.


-}
n165 : NNat (N N165 Is (Difference a To (N165Plus a)))
n165 =
    n164 |> add1


{-| The `NNat` 166.


-}
n166 : NNat (N N166 Is (Difference a To (N166Plus a)))
n166 =
    n165 |> add1


{-| The `NNat` 167.


-}
n167 : NNat (N N167 Is (Difference a To (N167Plus a)))
n167 =
    n166 |> add1


{-| The `NNat` 168.


-}
n168 : NNat (N N168 Is (Difference a To (N168Plus a)))
n168 =
    n167 |> add1


{-| The `NNat` 169.


-}
n169 : NNat (N N169 Is (Difference a To (N169Plus a)))
n169 =
    n168 |> add1


{-| The `NNat` 170.


-}
n170 : NNat (N N170 Is (Difference a To (N170Plus a)))
n170 =
    n169 |> add1


{-| The `NNat` 171.


-}
n171 : NNat (N N171 Is (Difference a To (N171Plus a)))
n171 =
    n170 |> add1


{-| The `NNat` 172.


-}
n172 : NNat (N N172 Is (Difference a To (N172Plus a)))
n172 =
    n171 |> add1


{-| The `NNat` 173.


-}
n173 : NNat (N N173 Is (Difference a To (N173Plus a)))
n173 =
    n172 |> add1


{-| The `NNat` 174.


-}
n174 : NNat (N N174 Is (Difference a To (N174Plus a)))
n174 =
    n173 |> add1


{-| The `NNat` 175.


-}
n175 : NNat (N N175 Is (Difference a To (N175Plus a)))
n175 =
    n174 |> add1


{-| The `NNat` 176.


-}
n176 : NNat (N N176 Is (Difference a To (N176Plus a)))
n176 =
    n175 |> add1


{-| The `NNat` 177.


-}
n177 : NNat (N N177 Is (Difference a To (N177Plus a)))
n177 =
    n176 |> add1


{-| The `NNat` 178.


-}
n178 : NNat (N N178 Is (Difference a To (N178Plus a)))
n178 =
    n177 |> add1


{-| The `NNat` 179.


-}
n179 : NNat (N N179 Is (Difference a To (N179Plus a)))
n179 =
    n178 |> add1


{-| The `NNat` 180.


-}
n180 : NNat (N N180 Is (Difference a To (N180Plus a)))
n180 =
    n179 |> add1


{-| The `NNat` 181.


-}
n181 : NNat (N N181 Is (Difference a To (N181Plus a)))
n181 =
    n180 |> add1


{-| The `NNat` 182.


-}
n182 : NNat (N N182 Is (Difference a To (N182Plus a)))
n182 =
    n181 |> add1


{-| The `NNat` 183.


-}
n183 : NNat (N N183 Is (Difference a To (N183Plus a)))
n183 =
    n182 |> add1


{-| The `NNat` 184.


-}
n184 : NNat (N N184 Is (Difference a To (N184Plus a)))
n184 =
    n183 |> add1


{-| The `NNat` 185.


-}
n185 : NNat (N N185 Is (Difference a To (N185Plus a)))
n185 =
    n184 |> add1


{-| The `NNat` 186.


-}
n186 : NNat (N N186 Is (Difference a To (N186Plus a)))
n186 =
    n185 |> add1


{-| The `NNat` 187.


-}
n187 : NNat (N N187 Is (Difference a To (N187Plus a)))
n187 =
    n186 |> add1


{-| The `NNat` 188.


-}
n188 : NNat (N N188 Is (Difference a To (N188Plus a)))
n188 =
    n187 |> add1


{-| The `NNat` 189.


-}
n189 : NNat (N N189 Is (Difference a To (N189Plus a)))
n189 =
    n188 |> add1


{-| The `NNat` 190.


-}
n190 : NNat (N N190 Is (Difference a To (N190Plus a)))
n190 =
    n189 |> add1


{-| The `NNat` 191.


-}
n191 : NNat (N N191 Is (Difference a To (N191Plus a)))
n191 =
    n190 |> add1


{-| The `NNat` 192.


-}
n192 : NNat (N N192 Is (Difference a To (N192Plus a)))
n192 =
    n191 |> add1


{-| The `NNat` plus 1.


-}
add1 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1Plus n) Is (Difference a To (N1Plus nPlusA)))
add1 =
    Internal.add1


{-| The `NNat` plus 2.


-}
add2 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N2Plus n) Is (Difference a To (N2Plus nPlusA)))
add2 =
    add1 >> add1


{-| The `NNat` plus 3.


-}
add3 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N3Plus n) Is (Difference a To (N3Plus nPlusA)))
add3 =
    add2 >> add1


{-| The `NNat` plus 4.


-}
add4 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N4Plus n) Is (Difference a To (N4Plus nPlusA)))
add4 =
    add3 >> add1


{-| The `NNat` plus 5.


-}
add5 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N5Plus n) Is (Difference a To (N5Plus nPlusA)))
add5 =
    add4 >> add1


{-| The `NNat` plus 6.


-}
add6 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N6Plus n) Is (Difference a To (N6Plus nPlusA)))
add6 =
    add5 >> add1


{-| The `NNat` plus 7.


-}
add7 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N7Plus n) Is (Difference a To (N7Plus nPlusA)))
add7 =
    add6 >> add1


{-| The `NNat` plus 8.


-}
add8 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N8Plus n) Is (Difference a To (N8Plus nPlusA)))
add8 =
    add7 >> add1


{-| The `NNat` plus 9.


-}
add9 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N9Plus n) Is (Difference a To (N9Plus nPlusA)))
add9 =
    add8 >> add1


{-| The `NNat` plus 10.


-}
add10 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N10Plus n) Is (Difference a To (N10Plus nPlusA)))
add10 =
    add9 >> add1


{-| The `NNat` plus 11.


-}
add11 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N11Plus n) Is (Difference a To (N11Plus nPlusA)))
add11 =
    add10 >> add1


{-| The `NNat` plus 12.


-}
add12 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N12Plus n) Is (Difference a To (N12Plus nPlusA)))
add12 =
    add11 >> add1


{-| The `NNat` plus 13.


-}
add13 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N13Plus n) Is (Difference a To (N13Plus nPlusA)))
add13 =
    add12 >> add1


{-| The `NNat` plus 14.


-}
add14 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N14Plus n) Is (Difference a To (N14Plus nPlusA)))
add14 =
    add13 >> add1


{-| The `NNat` plus 15.


-}
add15 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N15Plus n) Is (Difference a To (N15Plus nPlusA)))
add15 =
    add14 >> add1


{-| The `NNat` plus 16.


-}
add16 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N16Plus n) Is (Difference a To (N16Plus nPlusA)))
add16 =
    add15 >> add1


{-| The `NNat` plus 17.


-}
add17 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N17Plus n) Is (Difference a To (N17Plus nPlusA)))
add17 =
    add16 >> add1


{-| The `NNat` plus 18.


-}
add18 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N18Plus n) Is (Difference a To (N18Plus nPlusA)))
add18 =
    add17 >> add1


{-| The `NNat` plus 19.


-}
add19 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N19Plus n) Is (Difference a To (N19Plus nPlusA)))
add19 =
    add18 >> add1


{-| The `NNat` plus 20.


-}
add20 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N20Plus n) Is (Difference a To (N20Plus nPlusA)))
add20 =
    add19 >> add1


{-| The `NNat` plus 21.


-}
add21 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N21Plus n) Is (Difference a To (N21Plus nPlusA)))
add21 =
    add20 >> add1


{-| The `NNat` plus 22.


-}
add22 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N22Plus n) Is (Difference a To (N22Plus nPlusA)))
add22 =
    add21 >> add1


{-| The `NNat` plus 23.


-}
add23 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N23Plus n) Is (Difference a To (N23Plus nPlusA)))
add23 =
    add22 >> add1


{-| The `NNat` plus 24.


-}
add24 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N24Plus n) Is (Difference a To (N24Plus nPlusA)))
add24 =
    add23 >> add1


{-| The `NNat` plus 25.


-}
add25 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N25Plus n) Is (Difference a To (N25Plus nPlusA)))
add25 =
    add24 >> add1


{-| The `NNat` plus 26.


-}
add26 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N26Plus n) Is (Difference a To (N26Plus nPlusA)))
add26 =
    add25 >> add1


{-| The `NNat` plus 27.


-}
add27 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N27Plus n) Is (Difference a To (N27Plus nPlusA)))
add27 =
    add26 >> add1


{-| The `NNat` plus 28.


-}
add28 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N28Plus n) Is (Difference a To (N28Plus nPlusA)))
add28 =
    add27 >> add1


{-| The `NNat` plus 29.


-}
add29 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N29Plus n) Is (Difference a To (N29Plus nPlusA)))
add29 =
    add28 >> add1


{-| The `NNat` plus 30.


-}
add30 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N30Plus n) Is (Difference a To (N30Plus nPlusA)))
add30 =
    add29 >> add1


{-| The `NNat` plus 31.


-}
add31 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N31Plus n) Is (Difference a To (N31Plus nPlusA)))
add31 =
    add30 >> add1


{-| The `NNat` plus 32.


-}
add32 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N32Plus n) Is (Difference a To (N32Plus nPlusA)))
add32 =
    add31 >> add1


{-| The `NNat` plus 33.


-}
add33 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N33Plus n) Is (Difference a To (N33Plus nPlusA)))
add33 =
    add32 >> add1


{-| The `NNat` plus 34.


-}
add34 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N34Plus n) Is (Difference a To (N34Plus nPlusA)))
add34 =
    add33 >> add1


{-| The `NNat` plus 35.


-}
add35 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N35Plus n) Is (Difference a To (N35Plus nPlusA)))
add35 =
    add34 >> add1


{-| The `NNat` plus 36.


-}
add36 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N36Plus n) Is (Difference a To (N36Plus nPlusA)))
add36 =
    add35 >> add1


{-| The `NNat` plus 37.


-}
add37 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N37Plus n) Is (Difference a To (N37Plus nPlusA)))
add37 =
    add36 >> add1


{-| The `NNat` plus 38.


-}
add38 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N38Plus n) Is (Difference a To (N38Plus nPlusA)))
add38 =
    add37 >> add1


{-| The `NNat` plus 39.


-}
add39 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N39Plus n) Is (Difference a To (N39Plus nPlusA)))
add39 =
    add38 >> add1


{-| The `NNat` plus 40.


-}
add40 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N40Plus n) Is (Difference a To (N40Plus nPlusA)))
add40 =
    add39 >> add1


{-| The `NNat` plus 41.


-}
add41 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N41Plus n) Is (Difference a To (N41Plus nPlusA)))
add41 =
    add40 >> add1


{-| The `NNat` plus 42.


-}
add42 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N42Plus n) Is (Difference a To (N42Plus nPlusA)))
add42 =
    add41 >> add1


{-| The `NNat` plus 43.


-}
add43 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N43Plus n) Is (Difference a To (N43Plus nPlusA)))
add43 =
    add42 >> add1


{-| The `NNat` plus 44.


-}
add44 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N44Plus n) Is (Difference a To (N44Plus nPlusA)))
add44 =
    add43 >> add1


{-| The `NNat` plus 45.


-}
add45 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N45Plus n) Is (Difference a To (N45Plus nPlusA)))
add45 =
    add44 >> add1


{-| The `NNat` plus 46.


-}
add46 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N46Plus n) Is (Difference a To (N46Plus nPlusA)))
add46 =
    add45 >> add1


{-| The `NNat` plus 47.


-}
add47 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N47Plus n) Is (Difference a To (N47Plus nPlusA)))
add47 =
    add46 >> add1


{-| The `NNat` plus 48.


-}
add48 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N48Plus n) Is (Difference a To (N48Plus nPlusA)))
add48 =
    add47 >> add1


{-| The `NNat` plus 49.


-}
add49 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N49Plus n) Is (Difference a To (N49Plus nPlusA)))
add49 =
    add48 >> add1


{-| The `NNat` plus 50.


-}
add50 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N50Plus n) Is (Difference a To (N50Plus nPlusA)))
add50 =
    add49 >> add1


{-| The `NNat` plus 51.


-}
add51 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N51Plus n) Is (Difference a To (N51Plus nPlusA)))
add51 =
    add50 >> add1


{-| The `NNat` plus 52.


-}
add52 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N52Plus n) Is (Difference a To (N52Plus nPlusA)))
add52 =
    add51 >> add1


{-| The `NNat` plus 53.


-}
add53 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N53Plus n) Is (Difference a To (N53Plus nPlusA)))
add53 =
    add52 >> add1


{-| The `NNat` plus 54.


-}
add54 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N54Plus n) Is (Difference a To (N54Plus nPlusA)))
add54 =
    add53 >> add1


{-| The `NNat` plus 55.


-}
add55 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N55Plus n) Is (Difference a To (N55Plus nPlusA)))
add55 =
    add54 >> add1


{-| The `NNat` plus 56.


-}
add56 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N56Plus n) Is (Difference a To (N56Plus nPlusA)))
add56 =
    add55 >> add1


{-| The `NNat` plus 57.


-}
add57 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N57Plus n) Is (Difference a To (N57Plus nPlusA)))
add57 =
    add56 >> add1


{-| The `NNat` plus 58.


-}
add58 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N58Plus n) Is (Difference a To (N58Plus nPlusA)))
add58 =
    add57 >> add1


{-| The `NNat` plus 59.


-}
add59 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N59Plus n) Is (Difference a To (N59Plus nPlusA)))
add59 =
    add58 >> add1


{-| The `NNat` plus 60.


-}
add60 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N60Plus n) Is (Difference a To (N60Plus nPlusA)))
add60 =
    add59 >> add1


{-| The `NNat` plus 61.


-}
add61 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N61Plus n) Is (Difference a To (N61Plus nPlusA)))
add61 =
    add60 >> add1


{-| The `NNat` plus 62.


-}
add62 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N62Plus n) Is (Difference a To (N62Plus nPlusA)))
add62 =
    add61 >> add1


{-| The `NNat` plus 63.


-}
add63 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N63Plus n) Is (Difference a To (N63Plus nPlusA)))
add63 =
    add62 >> add1


{-| The `NNat` plus 64.


-}
add64 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N64Plus n) Is (Difference a To (N64Plus nPlusA)))
add64 =
    add63 >> add1


{-| The `NNat` plus 65.


-}
add65 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N65Plus n) Is (Difference a To (N65Plus nPlusA)))
add65 =
    add64 >> add1


{-| The `NNat` plus 66.


-}
add66 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N66Plus n) Is (Difference a To (N66Plus nPlusA)))
add66 =
    add65 >> add1


{-| The `NNat` plus 67.


-}
add67 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N67Plus n) Is (Difference a To (N67Plus nPlusA)))
add67 =
    add66 >> add1


{-| The `NNat` plus 68.


-}
add68 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N68Plus n) Is (Difference a To (N68Plus nPlusA)))
add68 =
    add67 >> add1


{-| The `NNat` plus 69.


-}
add69 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N69Plus n) Is (Difference a To (N69Plus nPlusA)))
add69 =
    add68 >> add1


{-| The `NNat` plus 70.


-}
add70 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N70Plus n) Is (Difference a To (N70Plus nPlusA)))
add70 =
    add69 >> add1


{-| The `NNat` plus 71.


-}
add71 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N71Plus n) Is (Difference a To (N71Plus nPlusA)))
add71 =
    add70 >> add1


{-| The `NNat` plus 72.


-}
add72 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N72Plus n) Is (Difference a To (N72Plus nPlusA)))
add72 =
    add71 >> add1


{-| The `NNat` plus 73.


-}
add73 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N73Plus n) Is (Difference a To (N73Plus nPlusA)))
add73 =
    add72 >> add1


{-| The `NNat` plus 74.


-}
add74 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N74Plus n) Is (Difference a To (N74Plus nPlusA)))
add74 =
    add73 >> add1


{-| The `NNat` plus 75.


-}
add75 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N75Plus n) Is (Difference a To (N75Plus nPlusA)))
add75 =
    add74 >> add1


{-| The `NNat` plus 76.


-}
add76 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N76Plus n) Is (Difference a To (N76Plus nPlusA)))
add76 =
    add75 >> add1


{-| The `NNat` plus 77.


-}
add77 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N77Plus n) Is (Difference a To (N77Plus nPlusA)))
add77 =
    add76 >> add1


{-| The `NNat` plus 78.


-}
add78 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N78Plus n) Is (Difference a To (N78Plus nPlusA)))
add78 =
    add77 >> add1


{-| The `NNat` plus 79.


-}
add79 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N79Plus n) Is (Difference a To (N79Plus nPlusA)))
add79 =
    add78 >> add1


{-| The `NNat` plus 80.


-}
add80 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N80Plus n) Is (Difference a To (N80Plus nPlusA)))
add80 =
    add79 >> add1


{-| The `NNat` plus 81.


-}
add81 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N81Plus n) Is (Difference a To (N81Plus nPlusA)))
add81 =
    add80 >> add1


{-| The `NNat` plus 82.


-}
add82 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N82Plus n) Is (Difference a To (N82Plus nPlusA)))
add82 =
    add81 >> add1


{-| The `NNat` plus 83.


-}
add83 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N83Plus n) Is (Difference a To (N83Plus nPlusA)))
add83 =
    add82 >> add1


{-| The `NNat` plus 84.


-}
add84 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N84Plus n) Is (Difference a To (N84Plus nPlusA)))
add84 =
    add83 >> add1


{-| The `NNat` plus 85.


-}
add85 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N85Plus n) Is (Difference a To (N85Plus nPlusA)))
add85 =
    add84 >> add1


{-| The `NNat` plus 86.


-}
add86 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N86Plus n) Is (Difference a To (N86Plus nPlusA)))
add86 =
    add85 >> add1


{-| The `NNat` plus 87.


-}
add87 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N87Plus n) Is (Difference a To (N87Plus nPlusA)))
add87 =
    add86 >> add1


{-| The `NNat` plus 88.


-}
add88 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N88Plus n) Is (Difference a To (N88Plus nPlusA)))
add88 =
    add87 >> add1


{-| The `NNat` plus 89.


-}
add89 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N89Plus n) Is (Difference a To (N89Plus nPlusA)))
add89 =
    add88 >> add1


{-| The `NNat` plus 90.


-}
add90 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N90Plus n) Is (Difference a To (N90Plus nPlusA)))
add90 =
    add89 >> add1


{-| The `NNat` plus 91.


-}
add91 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N91Plus n) Is (Difference a To (N91Plus nPlusA)))
add91 =
    add90 >> add1


{-| The `NNat` plus 92.


-}
add92 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N92Plus n) Is (Difference a To (N92Plus nPlusA)))
add92 =
    add91 >> add1


{-| The `NNat` plus 93.


-}
add93 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N93Plus n) Is (Difference a To (N93Plus nPlusA)))
add93 =
    add92 >> add1


{-| The `NNat` plus 94.


-}
add94 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N94Plus n) Is (Difference a To (N94Plus nPlusA)))
add94 =
    add93 >> add1


{-| The `NNat` plus 95.


-}
add95 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N95Plus n) Is (Difference a To (N95Plus nPlusA)))
add95 =
    add94 >> add1


{-| The `NNat` plus 96.


-}
add96 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N96Plus n) Is (Difference a To (N96Plus nPlusA)))
add96 =
    add95 >> add1


{-| The `NNat` plus 97.


-}
add97 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N97Plus n) Is (Difference a To (N97Plus nPlusA)))
add97 =
    add96 >> add1


{-| The `NNat` plus 98.


-}
add98 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N98Plus n) Is (Difference a To (N98Plus nPlusA)))
add98 =
    add97 >> add1


{-| The `NNat` plus 99.


-}
add99 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N99Plus n) Is (Difference a To (N99Plus nPlusA)))
add99 =
    add98 >> add1


{-| The `NNat` plus 100.


-}
add100 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N100Plus n) Is (Difference a To (N100Plus nPlusA)))
add100 =
    add99 >> add1


{-| The `NNat` plus 101.


-}
add101 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N101Plus n) Is (Difference a To (N101Plus nPlusA)))
add101 =
    add100 >> add1


{-| The `NNat` plus 102.


-}
add102 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N102Plus n) Is (Difference a To (N102Plus nPlusA)))
add102 =
    add101 >> add1


{-| The `NNat` plus 103.


-}
add103 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N103Plus n) Is (Difference a To (N103Plus nPlusA)))
add103 =
    add102 >> add1


{-| The `NNat` plus 104.


-}
add104 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N104Plus n) Is (Difference a To (N104Plus nPlusA)))
add104 =
    add103 >> add1


{-| The `NNat` plus 105.


-}
add105 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N105Plus n) Is (Difference a To (N105Plus nPlusA)))
add105 =
    add104 >> add1


{-| The `NNat` plus 106.


-}
add106 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N106Plus n) Is (Difference a To (N106Plus nPlusA)))
add106 =
    add105 >> add1


{-| The `NNat` plus 107.


-}
add107 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N107Plus n) Is (Difference a To (N107Plus nPlusA)))
add107 =
    add106 >> add1


{-| The `NNat` plus 108.


-}
add108 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N108Plus n) Is (Difference a To (N108Plus nPlusA)))
add108 =
    add107 >> add1


{-| The `NNat` plus 109.


-}
add109 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N109Plus n) Is (Difference a To (N109Plus nPlusA)))
add109 =
    add108 >> add1


{-| The `NNat` plus 110.


-}
add110 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N110Plus n) Is (Difference a To (N110Plus nPlusA)))
add110 =
    add109 >> add1


{-| The `NNat` plus 111.


-}
add111 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N111Plus n) Is (Difference a To (N111Plus nPlusA)))
add111 =
    add110 >> add1


{-| The `NNat` plus 112.


-}
add112 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N112Plus n) Is (Difference a To (N112Plus nPlusA)))
add112 =
    add111 >> add1


{-| The `NNat` plus 113.


-}
add113 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N113Plus n) Is (Difference a To (N113Plus nPlusA)))
add113 =
    add112 >> add1


{-| The `NNat` plus 114.


-}
add114 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N114Plus n) Is (Difference a To (N114Plus nPlusA)))
add114 =
    add113 >> add1


{-| The `NNat` plus 115.


-}
add115 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N115Plus n) Is (Difference a To (N115Plus nPlusA)))
add115 =
    add114 >> add1


{-| The `NNat` plus 116.


-}
add116 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N116Plus n) Is (Difference a To (N116Plus nPlusA)))
add116 =
    add115 >> add1


{-| The `NNat` plus 117.


-}
add117 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N117Plus n) Is (Difference a To (N117Plus nPlusA)))
add117 =
    add116 >> add1


{-| The `NNat` plus 118.


-}
add118 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N118Plus n) Is (Difference a To (N118Plus nPlusA)))
add118 =
    add117 >> add1


{-| The `NNat` plus 119.


-}
add119 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N119Plus n) Is (Difference a To (N119Plus nPlusA)))
add119 =
    add118 >> add1


{-| The `NNat` plus 120.


-}
add120 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N120Plus n) Is (Difference a To (N120Plus nPlusA)))
add120 =
    add119 >> add1


{-| The `NNat` plus 121.


-}
add121 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N121Plus n) Is (Difference a To (N121Plus nPlusA)))
add121 =
    add120 >> add1


{-| The `NNat` plus 122.


-}
add122 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N122Plus n) Is (Difference a To (N122Plus nPlusA)))
add122 =
    add121 >> add1


{-| The `NNat` plus 123.


-}
add123 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N123Plus n) Is (Difference a To (N123Plus nPlusA)))
add123 =
    add122 >> add1


{-| The `NNat` plus 124.


-}
add124 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N124Plus n) Is (Difference a To (N124Plus nPlusA)))
add124 =
    add123 >> add1


{-| The `NNat` plus 125.


-}
add125 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N125Plus n) Is (Difference a To (N125Plus nPlusA)))
add125 =
    add124 >> add1


{-| The `NNat` plus 126.


-}
add126 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N126Plus n) Is (Difference a To (N126Plus nPlusA)))
add126 =
    add125 >> add1


{-| The `NNat` plus 127.


-}
add127 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N127Plus n) Is (Difference a To (N127Plus nPlusA)))
add127 =
    add126 >> add1


{-| The `NNat` plus 128.


-}
add128 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N128Plus n) Is (Difference a To (N128Plus nPlusA)))
add128 =
    add127 >> add1


{-| The NNat minus 1.


-}
sub1 :
    NNat (N (N1Plus nMinus1) Is (Difference a To (N1Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub1 =
    Internal.sub1


{-| The NNat minus 2.


-}
sub2 :
    NNat (N (N2Plus nMinus1) Is (Difference a To (N2Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub2 =
    sub1 >> sub1


{-| The NNat minus 3.


-}
sub3 :
    NNat (N (N3Plus nMinus1) Is (Difference a To (N3Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub3 =
    sub2 >> sub1


{-| The NNat minus 4.


-}
sub4 :
    NNat (N (N4Plus nMinus1) Is (Difference a To (N4Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub4 =
    sub3 >> sub1


{-| The NNat minus 5.


-}
sub5 :
    NNat (N (N5Plus nMinus1) Is (Difference a To (N5Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub5 =
    sub4 >> sub1


{-| The NNat minus 6.


-}
sub6 :
    NNat (N (N6Plus nMinus1) Is (Difference a To (N6Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub6 =
    sub5 >> sub1


{-| The NNat minus 7.


-}
sub7 :
    NNat (N (N7Plus nMinus1) Is (Difference a To (N7Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub7 =
    sub6 >> sub1


{-| The NNat minus 8.


-}
sub8 :
    NNat (N (N8Plus nMinus1) Is (Difference a To (N8Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub8 =
    sub7 >> sub1


{-| The NNat minus 9.


-}
sub9 :
    NNat (N (N9Plus nMinus1) Is (Difference a To (N9Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub9 =
    sub8 >> sub1


{-| The NNat minus 10.


-}
sub10 :
    NNat (N (N10Plus nMinus1) Is (Difference a To (N10Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub10 =
    sub9 >> sub1


{-| The NNat minus 11.


-}
sub11 :
    NNat (N (N11Plus nMinus1) Is (Difference a To (N11Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub11 =
    sub10 >> sub1


{-| The NNat minus 12.


-}
sub12 :
    NNat (N (N12Plus nMinus1) Is (Difference a To (N12Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub12 =
    sub11 >> sub1


{-| The NNat minus 13.


-}
sub13 :
    NNat (N (N13Plus nMinus1) Is (Difference a To (N13Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub13 =
    sub12 >> sub1


{-| The NNat minus 14.


-}
sub14 :
    NNat (N (N14Plus nMinus1) Is (Difference a To (N14Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub14 =
    sub13 >> sub1


{-| The NNat minus 15.


-}
sub15 :
    NNat (N (N15Plus nMinus1) Is (Difference a To (N15Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub15 =
    sub14 >> sub1


{-| The NNat minus 16.


-}
sub16 :
    NNat (N (N16Plus nMinus1) Is (Difference a To (N16Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub16 =
    sub15 >> sub1


{-| The NNat minus 17.


-}
sub17 :
    NNat (N (N17Plus nMinus1) Is (Difference a To (N17Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub17 =
    sub16 >> sub1


{-| The NNat minus 18.


-}
sub18 :
    NNat (N (N18Plus nMinus1) Is (Difference a To (N18Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub18 =
    sub17 >> sub1


{-| The NNat minus 19.


-}
sub19 :
    NNat (N (N19Plus nMinus1) Is (Difference a To (N19Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub19 =
    sub18 >> sub1


{-| The NNat minus 20.


-}
sub20 :
    NNat (N (N20Plus nMinus1) Is (Difference a To (N20Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub20 =
    sub19 >> sub1


{-| The NNat minus 21.


-}
sub21 :
    NNat (N (N21Plus nMinus1) Is (Difference a To (N21Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub21 =
    sub20 >> sub1


{-| The NNat minus 22.


-}
sub22 :
    NNat (N (N22Plus nMinus1) Is (Difference a To (N22Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub22 =
    sub21 >> sub1


{-| The NNat minus 23.


-}
sub23 :
    NNat (N (N23Plus nMinus1) Is (Difference a To (N23Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub23 =
    sub22 >> sub1


{-| The NNat minus 24.


-}
sub24 :
    NNat (N (N24Plus nMinus1) Is (Difference a To (N24Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub24 =
    sub23 >> sub1


{-| The NNat minus 25.


-}
sub25 :
    NNat (N (N25Plus nMinus1) Is (Difference a To (N25Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub25 =
    sub24 >> sub1


{-| The NNat minus 26.


-}
sub26 :
    NNat (N (N26Plus nMinus1) Is (Difference a To (N26Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub26 =
    sub25 >> sub1


{-| The NNat minus 27.


-}
sub27 :
    NNat (N (N27Plus nMinus1) Is (Difference a To (N27Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub27 =
    sub26 >> sub1


{-| The NNat minus 28.


-}
sub28 :
    NNat (N (N28Plus nMinus1) Is (Difference a To (N28Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub28 =
    sub27 >> sub1


{-| The NNat minus 29.


-}
sub29 :
    NNat (N (N29Plus nMinus1) Is (Difference a To (N29Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub29 =
    sub28 >> sub1


{-| The NNat minus 30.


-}
sub30 :
    NNat (N (N30Plus nMinus1) Is (Difference a To (N30Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub30 =
    sub29 >> sub1


{-| The NNat minus 31.


-}
sub31 :
    NNat (N (N31Plus nMinus1) Is (Difference a To (N31Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub31 =
    sub30 >> sub1


{-| The NNat minus 32.


-}
sub32 :
    NNat (N (N32Plus nMinus1) Is (Difference a To (N32Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub32 =
    sub31 >> sub1


{-| The NNat minus 33.


-}
sub33 :
    NNat (N (N33Plus nMinus1) Is (Difference a To (N33Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub33 =
    sub32 >> sub1


{-| The NNat minus 34.


-}
sub34 :
    NNat (N (N34Plus nMinus1) Is (Difference a To (N34Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub34 =
    sub33 >> sub1


{-| The NNat minus 35.


-}
sub35 :
    NNat (N (N35Plus nMinus1) Is (Difference a To (N35Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub35 =
    sub34 >> sub1


{-| The NNat minus 36.


-}
sub36 :
    NNat (N (N36Plus nMinus1) Is (Difference a To (N36Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub36 =
    sub35 >> sub1


{-| The NNat minus 37.


-}
sub37 :
    NNat (N (N37Plus nMinus1) Is (Difference a To (N37Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub37 =
    sub36 >> sub1


{-| The NNat minus 38.


-}
sub38 :
    NNat (N (N38Plus nMinus1) Is (Difference a To (N38Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub38 =
    sub37 >> sub1


{-| The NNat minus 39.


-}
sub39 :
    NNat (N (N39Plus nMinus1) Is (Difference a To (N39Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub39 =
    sub38 >> sub1


{-| The NNat minus 40.


-}
sub40 :
    NNat (N (N40Plus nMinus1) Is (Difference a To (N40Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub40 =
    sub39 >> sub1


{-| The NNat minus 41.


-}
sub41 :
    NNat (N (N41Plus nMinus1) Is (Difference a To (N41Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub41 =
    sub40 >> sub1


{-| The NNat minus 42.


-}
sub42 :
    NNat (N (N42Plus nMinus1) Is (Difference a To (N42Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub42 =
    sub41 >> sub1


{-| The NNat minus 43.


-}
sub43 :
    NNat (N (N43Plus nMinus1) Is (Difference a To (N43Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub43 =
    sub42 >> sub1


{-| The NNat minus 44.


-}
sub44 :
    NNat (N (N44Plus nMinus1) Is (Difference a To (N44Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub44 =
    sub43 >> sub1


{-| The NNat minus 45.


-}
sub45 :
    NNat (N (N45Plus nMinus1) Is (Difference a To (N45Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub45 =
    sub44 >> sub1


{-| The NNat minus 46.


-}
sub46 :
    NNat (N (N46Plus nMinus1) Is (Difference a To (N46Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub46 =
    sub45 >> sub1


{-| The NNat minus 47.


-}
sub47 :
    NNat (N (N47Plus nMinus1) Is (Difference a To (N47Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub47 =
    sub46 >> sub1


{-| The NNat minus 48.


-}
sub48 :
    NNat (N (N48Plus nMinus1) Is (Difference a To (N48Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub48 =
    sub47 >> sub1


{-| The NNat minus 49.


-}
sub49 :
    NNat (N (N49Plus nMinus1) Is (Difference a To (N49Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub49 =
    sub48 >> sub1


{-| The NNat minus 50.


-}
sub50 :
    NNat (N (N50Plus nMinus1) Is (Difference a To (N50Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub50 =
    sub49 >> sub1


{-| The NNat minus 51.


-}
sub51 :
    NNat (N (N51Plus nMinus1) Is (Difference a To (N51Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub51 =
    sub50 >> sub1


{-| The NNat minus 52.


-}
sub52 :
    NNat (N (N52Plus nMinus1) Is (Difference a To (N52Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub52 =
    sub51 >> sub1


{-| The NNat minus 53.


-}
sub53 :
    NNat (N (N53Plus nMinus1) Is (Difference a To (N53Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub53 =
    sub52 >> sub1


{-| The NNat minus 54.


-}
sub54 :
    NNat (N (N54Plus nMinus1) Is (Difference a To (N54Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub54 =
    sub53 >> sub1


{-| The NNat minus 55.


-}
sub55 :
    NNat (N (N55Plus nMinus1) Is (Difference a To (N55Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub55 =
    sub54 >> sub1


{-| The NNat minus 56.


-}
sub56 :
    NNat (N (N56Plus nMinus1) Is (Difference a To (N56Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub56 =
    sub55 >> sub1


{-| The NNat minus 57.


-}
sub57 :
    NNat (N (N57Plus nMinus1) Is (Difference a To (N57Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub57 =
    sub56 >> sub1


{-| The NNat minus 58.


-}
sub58 :
    NNat (N (N58Plus nMinus1) Is (Difference a To (N58Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub58 =
    sub57 >> sub1


{-| The NNat minus 59.


-}
sub59 :
    NNat (N (N59Plus nMinus1) Is (Difference a To (N59Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub59 =
    sub58 >> sub1


{-| The NNat minus 60.


-}
sub60 :
    NNat (N (N60Plus nMinus1) Is (Difference a To (N60Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub60 =
    sub59 >> sub1


{-| The NNat minus 61.


-}
sub61 :
    NNat (N (N61Plus nMinus1) Is (Difference a To (N61Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub61 =
    sub60 >> sub1


{-| The NNat minus 62.


-}
sub62 :
    NNat (N (N62Plus nMinus1) Is (Difference a To (N62Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub62 =
    sub61 >> sub1


{-| The NNat minus 63.


-}
sub63 :
    NNat (N (N63Plus nMinus1) Is (Difference a To (N63Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub63 =
    sub62 >> sub1


{-| The NNat minus 64.


-}
sub64 :
    NNat (N (N64Plus nMinus1) Is (Difference a To (N64Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub64 =
    sub63 >> sub1


{-| The NNat minus 65.


-}
sub65 :
    NNat (N (N65Plus nMinus1) Is (Difference a To (N65Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub65 =
    sub64 >> sub1


{-| The NNat minus 66.


-}
sub66 :
    NNat (N (N66Plus nMinus1) Is (Difference a To (N66Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub66 =
    sub65 >> sub1


{-| The NNat minus 67.


-}
sub67 :
    NNat (N (N67Plus nMinus1) Is (Difference a To (N67Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub67 =
    sub66 >> sub1


{-| The NNat minus 68.


-}
sub68 :
    NNat (N (N68Plus nMinus1) Is (Difference a To (N68Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub68 =
    sub67 >> sub1


{-| The NNat minus 69.


-}
sub69 :
    NNat (N (N69Plus nMinus1) Is (Difference a To (N69Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub69 =
    sub68 >> sub1


{-| The NNat minus 70.


-}
sub70 :
    NNat (N (N70Plus nMinus1) Is (Difference a To (N70Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub70 =
    sub69 >> sub1


{-| The NNat minus 71.


-}
sub71 :
    NNat (N (N71Plus nMinus1) Is (Difference a To (N71Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub71 =
    sub70 >> sub1


{-| The NNat minus 72.


-}
sub72 :
    NNat (N (N72Plus nMinus1) Is (Difference a To (N72Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub72 =
    sub71 >> sub1


{-| The NNat minus 73.


-}
sub73 :
    NNat (N (N73Plus nMinus1) Is (Difference a To (N73Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub73 =
    sub72 >> sub1


{-| The NNat minus 74.


-}
sub74 :
    NNat (N (N74Plus nMinus1) Is (Difference a To (N74Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub74 =
    sub73 >> sub1


{-| The NNat minus 75.


-}
sub75 :
    NNat (N (N75Plus nMinus1) Is (Difference a To (N75Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub75 =
    sub74 >> sub1


{-| The NNat minus 76.


-}
sub76 :
    NNat (N (N76Plus nMinus1) Is (Difference a To (N76Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub76 =
    sub75 >> sub1


{-| The NNat minus 77.


-}
sub77 :
    NNat (N (N77Plus nMinus1) Is (Difference a To (N77Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub77 =
    sub76 >> sub1


{-| The NNat minus 78.


-}
sub78 :
    NNat (N (N78Plus nMinus1) Is (Difference a To (N78Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub78 =
    sub77 >> sub1


{-| The NNat minus 79.


-}
sub79 :
    NNat (N (N79Plus nMinus1) Is (Difference a To (N79Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub79 =
    sub78 >> sub1


{-| The NNat minus 80.


-}
sub80 :
    NNat (N (N80Plus nMinus1) Is (Difference a To (N80Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub80 =
    sub79 >> sub1


{-| The NNat minus 81.


-}
sub81 :
    NNat (N (N81Plus nMinus1) Is (Difference a To (N81Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub81 =
    sub80 >> sub1


{-| The NNat minus 82.


-}
sub82 :
    NNat (N (N82Plus nMinus1) Is (Difference a To (N82Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub82 =
    sub81 >> sub1


{-| The NNat minus 83.


-}
sub83 :
    NNat (N (N83Plus nMinus1) Is (Difference a To (N83Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub83 =
    sub82 >> sub1


{-| The NNat minus 84.


-}
sub84 :
    NNat (N (N84Plus nMinus1) Is (Difference a To (N84Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub84 =
    sub83 >> sub1


{-| The NNat minus 85.


-}
sub85 :
    NNat (N (N85Plus nMinus1) Is (Difference a To (N85Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub85 =
    sub84 >> sub1


{-| The NNat minus 86.


-}
sub86 :
    NNat (N (N86Plus nMinus1) Is (Difference a To (N86Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub86 =
    sub85 >> sub1


{-| The NNat minus 87.


-}
sub87 :
    NNat (N (N87Plus nMinus1) Is (Difference a To (N87Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub87 =
    sub86 >> sub1


{-| The NNat minus 88.


-}
sub88 :
    NNat (N (N88Plus nMinus1) Is (Difference a To (N88Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub88 =
    sub87 >> sub1


{-| The NNat minus 89.


-}
sub89 :
    NNat (N (N89Plus nMinus1) Is (Difference a To (N89Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub89 =
    sub88 >> sub1


{-| The NNat minus 90.


-}
sub90 :
    NNat (N (N90Plus nMinus1) Is (Difference a To (N90Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub90 =
    sub89 >> sub1


{-| The NNat minus 91.


-}
sub91 :
    NNat (N (N91Plus nMinus1) Is (Difference a To (N91Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub91 =
    sub90 >> sub1


{-| The NNat minus 92.


-}
sub92 :
    NNat (N (N92Plus nMinus1) Is (Difference a To (N92Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub92 =
    sub91 >> sub1


{-| The NNat minus 93.


-}
sub93 :
    NNat (N (N93Plus nMinus1) Is (Difference a To (N93Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub93 =
    sub92 >> sub1


{-| The NNat minus 94.


-}
sub94 :
    NNat (N (N94Plus nMinus1) Is (Difference a To (N94Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub94 =
    sub93 >> sub1


{-| The NNat minus 95.


-}
sub95 :
    NNat (N (N95Plus nMinus1) Is (Difference a To (N95Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub95 =
    sub94 >> sub1


{-| The NNat minus 96.


-}
sub96 :
    NNat (N (N96Plus nMinus1) Is (Difference a To (N96Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub96 =
    sub95 >> sub1


{-| The NNat minus 97.


-}
sub97 :
    NNat (N (N97Plus nMinus1) Is (Difference a To (N97Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub97 =
    sub96 >> sub1


{-| The NNat minus 98.


-}
sub98 :
    NNat (N (N98Plus nMinus1) Is (Difference a To (N98Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub98 =
    sub97 >> sub1


{-| The NNat minus 99.


-}
sub99 :
    NNat (N (N99Plus nMinus1) Is (Difference a To (N99Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub99 =
    sub98 >> sub1


{-| The NNat minus 100.


-}
sub100 :
    NNat (N (N100Plus nMinus1) Is (Difference a To (N100Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub100 =
    sub99 >> sub1


{-| The NNat minus 101.


-}
sub101 :
    NNat (N (N101Plus nMinus1) Is (Difference a To (N101Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub101 =
    sub100 >> sub1


{-| The NNat minus 102.


-}
sub102 :
    NNat (N (N102Plus nMinus1) Is (Difference a To (N102Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub102 =
    sub101 >> sub1


{-| The NNat minus 103.


-}
sub103 :
    NNat (N (N103Plus nMinus1) Is (Difference a To (N103Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub103 =
    sub102 >> sub1


{-| The NNat minus 104.


-}
sub104 :
    NNat (N (N104Plus nMinus1) Is (Difference a To (N104Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub104 =
    sub103 >> sub1


{-| The NNat minus 105.


-}
sub105 :
    NNat (N (N105Plus nMinus1) Is (Difference a To (N105Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub105 =
    sub104 >> sub1


{-| The NNat minus 106.


-}
sub106 :
    NNat (N (N106Plus nMinus1) Is (Difference a To (N106Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub106 =
    sub105 >> sub1


{-| The NNat minus 107.


-}
sub107 :
    NNat (N (N107Plus nMinus1) Is (Difference a To (N107Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub107 =
    sub106 >> sub1


{-| The NNat minus 108.


-}
sub108 :
    NNat (N (N108Plus nMinus1) Is (Difference a To (N108Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub108 =
    sub107 >> sub1


{-| The NNat minus 109.


-}
sub109 :
    NNat (N (N109Plus nMinus1) Is (Difference a To (N109Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub109 =
    sub108 >> sub1


{-| The NNat minus 110.


-}
sub110 :
    NNat (N (N110Plus nMinus1) Is (Difference a To (N110Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub110 =
    sub109 >> sub1


{-| The NNat minus 111.


-}
sub111 :
    NNat (N (N111Plus nMinus1) Is (Difference a To (N111Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub111 =
    sub110 >> sub1


{-| The NNat minus 112.


-}
sub112 :
    NNat (N (N112Plus nMinus1) Is (Difference a To (N112Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub112 =
    sub111 >> sub1


{-| The NNat minus 113.


-}
sub113 :
    NNat (N (N113Plus nMinus1) Is (Difference a To (N113Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub113 =
    sub112 >> sub1


{-| The NNat minus 114.


-}
sub114 :
    NNat (N (N114Plus nMinus1) Is (Difference a To (N114Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub114 =
    sub113 >> sub1


{-| The NNat minus 115.


-}
sub115 :
    NNat (N (N115Plus nMinus1) Is (Difference a To (N115Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub115 =
    sub114 >> sub1


{-| The NNat minus 116.


-}
sub116 :
    NNat (N (N116Plus nMinus1) Is (Difference a To (N116Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub116 =
    sub115 >> sub1


{-| The NNat minus 117.


-}
sub117 :
    NNat (N (N117Plus nMinus1) Is (Difference a To (N117Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub117 =
    sub116 >> sub1


{-| The NNat minus 118.


-}
sub118 :
    NNat (N (N118Plus nMinus1) Is (Difference a To (N118Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub118 =
    sub117 >> sub1


{-| The NNat minus 119.


-}
sub119 :
    NNat (N (N119Plus nMinus1) Is (Difference a To (N119Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub119 =
    sub118 >> sub1


{-| The NNat minus 120.


-}
sub120 :
    NNat (N (N120Plus nMinus1) Is (Difference a To (N120Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub120 =
    sub119 >> sub1


{-| The NNat minus 121.


-}
sub121 :
    NNat (N (N121Plus nMinus1) Is (Difference a To (N121Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub121 =
    sub120 >> sub1


{-| The NNat minus 122.


-}
sub122 :
    NNat (N (N122Plus nMinus1) Is (Difference a To (N122Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub122 =
    sub121 >> sub1


{-| The NNat minus 123.


-}
sub123 :
    NNat (N (N123Plus nMinus1) Is (Difference a To (N123Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub123 =
    sub122 >> sub1


{-| The NNat minus 124.


-}
sub124 :
    NNat (N (N124Plus nMinus1) Is (Difference a To (N124Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub124 =
    sub123 >> sub1


{-| The NNat minus 125.


-}
sub125 :
    NNat (N (N125Plus nMinus1) Is (Difference a To (N125Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub125 =
    sub124 >> sub1


{-| The NNat minus 126.


-}
sub126 :
    NNat (N (N126Plus nMinus1) Is (Difference a To (N126Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub126 =
    sub125 >> sub1


{-| The NNat minus 127.


-}
sub127 :
    NNat (N (N127Plus nMinus1) Is (Difference a To (N127Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub127 =
    sub126 >> sub1


{-| The NNat minus 128.


-}
sub128 :
    NNat (N (N128Plus nMinus1) Is (Difference a To (N128Plus nPlusAMinus1)))
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
sub128 =
    sub127 >> sub1
