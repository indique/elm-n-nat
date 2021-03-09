module Nats exposing (nat0, nat1, nat10, nat100, nat101, nat102, nat103, nat104, nat105, nat106, nat107, nat108, nat109, nat11, nat110, nat111, nat112, nat113, nat114, nat115, nat116, nat117, nat118, nat119, nat12, nat120, nat121, nat122, nat123, nat124, nat125, nat126, nat127, nat128, nat129, nat13, nat130, nat131, nat132, nat133, nat134, nat135, nat136, nat137, nat138, nat139, nat14, nat140, nat141, nat142, nat143, nat144, nat145, nat146, nat147, nat148, nat149, nat15, nat150, nat151, nat152, nat153, nat154, nat155, nat156, nat157, nat158, nat159, nat16, nat160, nat161, nat162, nat163, nat164, nat165, nat166, nat167, nat168, nat169, nat17, nat170, nat171, nat172, nat173, nat174, nat175, nat176, nat177, nat178, nat179, nat18, nat180, nat181, nat182, nat183, nat184, nat185, nat186, nat187, nat188, nat189, nat19, nat190, nat191, nat192, nat2, nat20, nat21, nat22, nat23, nat24, nat25, nat26, nat27, nat28, nat29, nat3, nat30, nat31, nat32, nat33, nat34, nat35, nat36, nat37, nat38, nat39, nat4, nat40, nat41, nat42, nat43, nat44, nat45, nat46, nat47, nat48, nat49, nat5, nat50, nat51, nat52, nat53, nat54, nat55, nat56, nat57, nat58, nat59, nat6, nat60, nat61, nat62, nat63, nat64, nat65, nat66, nat67, nat68, nat69, nat7, nat70, nat71, nat72, nat73, nat74, nat75, nat76, nat77, nat78, nat79, nat8, nat80, nat81, nat82, nat83, nat84, nat85, nat86, nat87, nat88, nat89, nat9, nat90, nat91, nat92, nat93, nat94, nat95, nat96, nat97, nat98, nat99)

{-| `NNat Nat0` to `NNat Nat192`.


@docs nat0, nat1, nat10, nat100, nat101, nat102, nat103, nat104, nat105, nat106, nat107
@docs nat108, nat109, nat11, nat110, nat111, nat112, nat113, nat114, nat115, nat116
@docs nat117, nat118, nat119, nat12, nat120, nat121, nat122, nat123, nat124, nat125
@docs nat126, nat127, nat128, nat129, nat13, nat130, nat131, nat132, nat133, nat134
@docs nat135, nat136, nat137, nat138, nat139, nat14, nat140, nat141, nat142, nat143
@docs nat144, nat145, nat146, nat147, nat148, nat149, nat15, nat150, nat151, nat152
@docs nat153, nat154, nat155, nat156, nat157, nat158, nat159, nat16, nat160, nat161
@docs nat162, nat163, nat164, nat165, nat166, nat167, nat168, nat169, nat17, nat170
@docs nat171, nat172, nat173, nat174, nat175, nat176, nat177, nat178, nat179, nat18
@docs nat180, nat181, nat182, nat183, nat184, nat185, nat186, nat187, nat188, nat189
@docs nat19, nat190, nat191, nat192, nat2, nat20, nat21, nat22, nat23, nat24, nat25, nat26
@docs nat27, nat28, nat29, nat3, nat30, nat31, nat32, nat33, nat34, nat35, nat36, nat37, nat38
@docs nat39, nat4, nat40, nat41, nat42, nat43, nat44, nat45, nat46, nat47, nat48, nat49, nat5
@docs nat50, nat51, nat52, nat53, nat54, nat55, nat56, nat57, nat58, nat59, nat6, nat60, nat61
@docs nat62, nat63, nat64, nat65, nat66, nat67, nat68, nat69, nat7, nat70, nat71, nat72, nat73
@docs nat74, nat75, nat76, nat77, nat78, nat79, nat8, nat80, nat81, nat82, nat83, nat84, nat85
@docs nat86, nat87, nat88, nat89, nat9, nat90, nat91, nat92, nat93, nat94, nat95, nat96, nat97
@docs nat98, nat99
-}

import N.Nat.Type exposing (..)
import N.Type exposing (..)
import NNat exposing (..)


{-| The `NNat` 0.


-}
nat0 : NNat (N Nat0 Is (Difference a To a))
nat0 =
    Internal.zero


{-| The `NNat` 1.


-}
nat1 : NNat (N Nat1 Is (Difference a To (Nat1Plus a)))
nat1 =
    n0 |> add1


{-| The `NNat` 2.


-}
nat2 : NNat (N Nat2 Is (Difference a To (Nat2Plus a)))
nat2 =
    n1 |> add1


{-| The `NNat` 3.


-}
nat3 : NNat (N Nat3 Is (Difference a To (Nat3Plus a)))
nat3 =
    n2 |> add1


{-| The `NNat` 4.


-}
nat4 : NNat (N Nat4 Is (Difference a To (Nat4Plus a)))
nat4 =
    n3 |> add1


{-| The `NNat` 5.


-}
nat5 : NNat (N Nat5 Is (Difference a To (Nat5Plus a)))
nat5 =
    n4 |> add1


{-| The `NNat` 6.


-}
nat6 : NNat (N Nat6 Is (Difference a To (Nat6Plus a)))
nat6 =
    n5 |> add1


{-| The `NNat` 7.


-}
nat7 : NNat (N Nat7 Is (Difference a To (Nat7Plus a)))
nat7 =
    n6 |> add1


{-| The `NNat` 8.


-}
nat8 : NNat (N Nat8 Is (Difference a To (Nat8Plus a)))
nat8 =
    n7 |> add1


{-| The `NNat` 9.


-}
nat9 : NNat (N Nat9 Is (Difference a To (Nat9Plus a)))
nat9 =
    n8 |> add1


{-| The `NNat` 10.


-}
nat10 : NNat (N Nat10 Is (Difference a To (Nat10Plus a)))
nat10 =
    n9 |> add1


{-| The `NNat` 11.


-}
nat11 : NNat (N Nat11 Is (Difference a To (Nat11Plus a)))
nat11 =
    n10 |> add1


{-| The `NNat` 12.


-}
nat12 : NNat (N Nat12 Is (Difference a To (Nat12Plus a)))
nat12 =
    n11 |> add1


{-| The `NNat` 13.


-}
nat13 : NNat (N Nat13 Is (Difference a To (Nat13Plus a)))
nat13 =
    n12 |> add1


{-| The `NNat` 14.


-}
nat14 : NNat (N Nat14 Is (Difference a To (Nat14Plus a)))
nat14 =
    n13 |> add1


{-| The `NNat` 15.


-}
nat15 : NNat (N Nat15 Is (Difference a To (Nat15Plus a)))
nat15 =
    n14 |> add1


{-| The `NNat` 16.


-}
nat16 : NNat (N Nat16 Is (Difference a To (Nat16Plus a)))
nat16 =
    n15 |> add1


{-| The `NNat` 17.


-}
nat17 : NNat (N Nat17 Is (Difference a To (Nat17Plus a)))
nat17 =
    n16 |> add1


{-| The `NNat` 18.


-}
nat18 : NNat (N Nat18 Is (Difference a To (Nat18Plus a)))
nat18 =
    n17 |> add1


{-| The `NNat` 19.


-}
nat19 : NNat (N Nat19 Is (Difference a To (Nat19Plus a)))
nat19 =
    n18 |> add1


{-| The `NNat` 20.


-}
nat20 : NNat (N Nat20 Is (Difference a To (Nat20Plus a)))
nat20 =
    n19 |> add1


{-| The `NNat` 21.


-}
nat21 : NNat (N Nat21 Is (Difference a To (Nat21Plus a)))
nat21 =
    n20 |> add1


{-| The `NNat` 22.


-}
nat22 : NNat (N Nat22 Is (Difference a To (Nat22Plus a)))
nat22 =
    n21 |> add1


{-| The `NNat` 23.


-}
nat23 : NNat (N Nat23 Is (Difference a To (Nat23Plus a)))
nat23 =
    n22 |> add1


{-| The `NNat` 24.


-}
nat24 : NNat (N Nat24 Is (Difference a To (Nat24Plus a)))
nat24 =
    n23 |> add1


{-| The `NNat` 25.


-}
nat25 : NNat (N Nat25 Is (Difference a To (Nat25Plus a)))
nat25 =
    n24 |> add1


{-| The `NNat` 26.


-}
nat26 : NNat (N Nat26 Is (Difference a To (Nat26Plus a)))
nat26 =
    n25 |> add1


{-| The `NNat` 27.


-}
nat27 : NNat (N Nat27 Is (Difference a To (Nat27Plus a)))
nat27 =
    n26 |> add1


{-| The `NNat` 28.


-}
nat28 : NNat (N Nat28 Is (Difference a To (Nat28Plus a)))
nat28 =
    n27 |> add1


{-| The `NNat` 29.


-}
nat29 : NNat (N Nat29 Is (Difference a To (Nat29Plus a)))
nat29 =
    n28 |> add1


{-| The `NNat` 30.


-}
nat30 : NNat (N Nat30 Is (Difference a To (Nat30Plus a)))
nat30 =
    n29 |> add1


{-| The `NNat` 31.


-}
nat31 : NNat (N Nat31 Is (Difference a To (Nat31Plus a)))
nat31 =
    n30 |> add1


{-| The `NNat` 32.


-}
nat32 : NNat (N Nat32 Is (Difference a To (Nat32Plus a)))
nat32 =
    n31 |> add1


{-| The `NNat` 33.


-}
nat33 : NNat (N Nat33 Is (Difference a To (Nat33Plus a)))
nat33 =
    n32 |> add1


{-| The `NNat` 34.


-}
nat34 : NNat (N Nat34 Is (Difference a To (Nat34Plus a)))
nat34 =
    n33 |> add1


{-| The `NNat` 35.


-}
nat35 : NNat (N Nat35 Is (Difference a To (Nat35Plus a)))
nat35 =
    n34 |> add1


{-| The `NNat` 36.


-}
nat36 : NNat (N Nat36 Is (Difference a To (Nat36Plus a)))
nat36 =
    n35 |> add1


{-| The `NNat` 37.


-}
nat37 : NNat (N Nat37 Is (Difference a To (Nat37Plus a)))
nat37 =
    n36 |> add1


{-| The `NNat` 38.


-}
nat38 : NNat (N Nat38 Is (Difference a To (Nat38Plus a)))
nat38 =
    n37 |> add1


{-| The `NNat` 39.


-}
nat39 : NNat (N Nat39 Is (Difference a To (Nat39Plus a)))
nat39 =
    n38 |> add1


{-| The `NNat` 40.


-}
nat40 : NNat (N Nat40 Is (Difference a To (Nat40Plus a)))
nat40 =
    n39 |> add1


{-| The `NNat` 41.


-}
nat41 : NNat (N Nat41 Is (Difference a To (Nat41Plus a)))
nat41 =
    n40 |> add1


{-| The `NNat` 42.


-}
nat42 : NNat (N Nat42 Is (Difference a To (Nat42Plus a)))
nat42 =
    n41 |> add1


{-| The `NNat` 43.


-}
nat43 : NNat (N Nat43 Is (Difference a To (Nat43Plus a)))
nat43 =
    n42 |> add1


{-| The `NNat` 44.


-}
nat44 : NNat (N Nat44 Is (Difference a To (Nat44Plus a)))
nat44 =
    n43 |> add1


{-| The `NNat` 45.


-}
nat45 : NNat (N Nat45 Is (Difference a To (Nat45Plus a)))
nat45 =
    n44 |> add1


{-| The `NNat` 46.


-}
nat46 : NNat (N Nat46 Is (Difference a To (Nat46Plus a)))
nat46 =
    n45 |> add1


{-| The `NNat` 47.


-}
nat47 : NNat (N Nat47 Is (Difference a To (Nat47Plus a)))
nat47 =
    n46 |> add1


{-| The `NNat` 48.


-}
nat48 : NNat (N Nat48 Is (Difference a To (Nat48Plus a)))
nat48 =
    n47 |> add1


{-| The `NNat` 49.


-}
nat49 : NNat (N Nat49 Is (Difference a To (Nat49Plus a)))
nat49 =
    n48 |> add1


{-| The `NNat` 50.


-}
nat50 : NNat (N Nat50 Is (Difference a To (Nat50Plus a)))
nat50 =
    n49 |> add1


{-| The `NNat` 51.


-}
nat51 : NNat (N Nat51 Is (Difference a To (Nat51Plus a)))
nat51 =
    n50 |> add1


{-| The `NNat` 52.


-}
nat52 : NNat (N Nat52 Is (Difference a To (Nat52Plus a)))
nat52 =
    n51 |> add1


{-| The `NNat` 53.


-}
nat53 : NNat (N Nat53 Is (Difference a To (Nat53Plus a)))
nat53 =
    n52 |> add1


{-| The `NNat` 54.


-}
nat54 : NNat (N Nat54 Is (Difference a To (Nat54Plus a)))
nat54 =
    n53 |> add1


{-| The `NNat` 55.


-}
nat55 : NNat (N Nat55 Is (Difference a To (Nat55Plus a)))
nat55 =
    n54 |> add1


{-| The `NNat` 56.


-}
nat56 : NNat (N Nat56 Is (Difference a To (Nat56Plus a)))
nat56 =
    n55 |> add1


{-| The `NNat` 57.


-}
nat57 : NNat (N Nat57 Is (Difference a To (Nat57Plus a)))
nat57 =
    n56 |> add1


{-| The `NNat` 58.


-}
nat58 : NNat (N Nat58 Is (Difference a To (Nat58Plus a)))
nat58 =
    n57 |> add1


{-| The `NNat` 59.


-}
nat59 : NNat (N Nat59 Is (Difference a To (Nat59Plus a)))
nat59 =
    n58 |> add1


{-| The `NNat` 60.


-}
nat60 : NNat (N Nat60 Is (Difference a To (Nat60Plus a)))
nat60 =
    n59 |> add1


{-| The `NNat` 61.


-}
nat61 : NNat (N Nat61 Is (Difference a To (Nat61Plus a)))
nat61 =
    n60 |> add1


{-| The `NNat` 62.


-}
nat62 : NNat (N Nat62 Is (Difference a To (Nat62Plus a)))
nat62 =
    n61 |> add1


{-| The `NNat` 63.


-}
nat63 : NNat (N Nat63 Is (Difference a To (Nat63Plus a)))
nat63 =
    n62 |> add1


{-| The `NNat` 64.


-}
nat64 : NNat (N Nat64 Is (Difference a To (Nat64Plus a)))
nat64 =
    n63 |> add1


{-| The `NNat` 65.


-}
nat65 : NNat (N Nat65 Is (Difference a To (Nat65Plus a)))
nat65 =
    n64 |> add1


{-| The `NNat` 66.


-}
nat66 : NNat (N Nat66 Is (Difference a To (Nat66Plus a)))
nat66 =
    n65 |> add1


{-| The `NNat` 67.


-}
nat67 : NNat (N Nat67 Is (Difference a To (Nat67Plus a)))
nat67 =
    n66 |> add1


{-| The `NNat` 68.


-}
nat68 : NNat (N Nat68 Is (Difference a To (Nat68Plus a)))
nat68 =
    n67 |> add1


{-| The `NNat` 69.


-}
nat69 : NNat (N Nat69 Is (Difference a To (Nat69Plus a)))
nat69 =
    n68 |> add1


{-| The `NNat` 70.


-}
nat70 : NNat (N Nat70 Is (Difference a To (Nat70Plus a)))
nat70 =
    n69 |> add1


{-| The `NNat` 71.


-}
nat71 : NNat (N Nat71 Is (Difference a To (Nat71Plus a)))
nat71 =
    n70 |> add1


{-| The `NNat` 72.


-}
nat72 : NNat (N Nat72 Is (Difference a To (Nat72Plus a)))
nat72 =
    n71 |> add1


{-| The `NNat` 73.


-}
nat73 : NNat (N Nat73 Is (Difference a To (Nat73Plus a)))
nat73 =
    n72 |> add1


{-| The `NNat` 74.


-}
nat74 : NNat (N Nat74 Is (Difference a To (Nat74Plus a)))
nat74 =
    n73 |> add1


{-| The `NNat` 75.


-}
nat75 : NNat (N Nat75 Is (Difference a To (Nat75Plus a)))
nat75 =
    n74 |> add1


{-| The `NNat` 76.


-}
nat76 : NNat (N Nat76 Is (Difference a To (Nat76Plus a)))
nat76 =
    n75 |> add1


{-| The `NNat` 77.


-}
nat77 : NNat (N Nat77 Is (Difference a To (Nat77Plus a)))
nat77 =
    n76 |> add1


{-| The `NNat` 78.


-}
nat78 : NNat (N Nat78 Is (Difference a To (Nat78Plus a)))
nat78 =
    n77 |> add1


{-| The `NNat` 79.


-}
nat79 : NNat (N Nat79 Is (Difference a To (Nat79Plus a)))
nat79 =
    n78 |> add1


{-| The `NNat` 80.


-}
nat80 : NNat (N Nat80 Is (Difference a To (Nat80Plus a)))
nat80 =
    n79 |> add1


{-| The `NNat` 81.


-}
nat81 : NNat (N Nat81 Is (Difference a To (Nat81Plus a)))
nat81 =
    n80 |> add1


{-| The `NNat` 82.


-}
nat82 : NNat (N Nat82 Is (Difference a To (Nat82Plus a)))
nat82 =
    n81 |> add1


{-| The `NNat` 83.


-}
nat83 : NNat (N Nat83 Is (Difference a To (Nat83Plus a)))
nat83 =
    n82 |> add1


{-| The `NNat` 84.


-}
nat84 : NNat (N Nat84 Is (Difference a To (Nat84Plus a)))
nat84 =
    n83 |> add1


{-| The `NNat` 85.


-}
nat85 : NNat (N Nat85 Is (Difference a To (Nat85Plus a)))
nat85 =
    n84 |> add1


{-| The `NNat` 86.


-}
nat86 : NNat (N Nat86 Is (Difference a To (Nat86Plus a)))
nat86 =
    n85 |> add1


{-| The `NNat` 87.


-}
nat87 : NNat (N Nat87 Is (Difference a To (Nat87Plus a)))
nat87 =
    n86 |> add1


{-| The `NNat` 88.


-}
nat88 : NNat (N Nat88 Is (Difference a To (Nat88Plus a)))
nat88 =
    n87 |> add1


{-| The `NNat` 89.


-}
nat89 : NNat (N Nat89 Is (Difference a To (Nat89Plus a)))
nat89 =
    n88 |> add1


{-| The `NNat` 90.


-}
nat90 : NNat (N Nat90 Is (Difference a To (Nat90Plus a)))
nat90 =
    n89 |> add1


{-| The `NNat` 91.


-}
nat91 : NNat (N Nat91 Is (Difference a To (Nat91Plus a)))
nat91 =
    n90 |> add1


{-| The `NNat` 92.


-}
nat92 : NNat (N Nat92 Is (Difference a To (Nat92Plus a)))
nat92 =
    n91 |> add1


{-| The `NNat` 93.


-}
nat93 : NNat (N Nat93 Is (Difference a To (Nat93Plus a)))
nat93 =
    n92 |> add1


{-| The `NNat` 94.


-}
nat94 : NNat (N Nat94 Is (Difference a To (Nat94Plus a)))
nat94 =
    n93 |> add1


{-| The `NNat` 95.


-}
nat95 : NNat (N Nat95 Is (Difference a To (Nat95Plus a)))
nat95 =
    n94 |> add1


{-| The `NNat` 96.


-}
nat96 : NNat (N Nat96 Is (Difference a To (Nat96Plus a)))
nat96 =
    n95 |> add1


{-| The `NNat` 97.


-}
nat97 : NNat (N Nat97 Is (Difference a To (Nat97Plus a)))
nat97 =
    n96 |> add1


{-| The `NNat` 98.


-}
nat98 : NNat (N Nat98 Is (Difference a To (Nat98Plus a)))
nat98 =
    n97 |> add1


{-| The `NNat` 99.


-}
nat99 : NNat (N Nat99 Is (Difference a To (Nat99Plus a)))
nat99 =
    n98 |> add1


{-| The `NNat` 100.


-}
nat100 : NNat (N Nat100 Is (Difference a To (Nat100Plus a)))
nat100 =
    n99 |> add1


{-| The `NNat` 101.


-}
nat101 : NNat (N Nat101 Is (Difference a To (Nat101Plus a)))
nat101 =
    n100 |> add1


{-| The `NNat` 102.


-}
nat102 : NNat (N Nat102 Is (Difference a To (Nat102Plus a)))
nat102 =
    n101 |> add1


{-| The `NNat` 103.


-}
nat103 : NNat (N Nat103 Is (Difference a To (Nat103Plus a)))
nat103 =
    n102 |> add1


{-| The `NNat` 104.


-}
nat104 : NNat (N Nat104 Is (Difference a To (Nat104Plus a)))
nat104 =
    n103 |> add1


{-| The `NNat` 105.


-}
nat105 : NNat (N Nat105 Is (Difference a To (Nat105Plus a)))
nat105 =
    n104 |> add1


{-| The `NNat` 106.


-}
nat106 : NNat (N Nat106 Is (Difference a To (Nat106Plus a)))
nat106 =
    n105 |> add1


{-| The `NNat` 107.


-}
nat107 : NNat (N Nat107 Is (Difference a To (Nat107Plus a)))
nat107 =
    n106 |> add1


{-| The `NNat` 108.


-}
nat108 : NNat (N Nat108 Is (Difference a To (Nat108Plus a)))
nat108 =
    n107 |> add1


{-| The `NNat` 109.


-}
nat109 : NNat (N Nat109 Is (Difference a To (Nat109Plus a)))
nat109 =
    n108 |> add1


{-| The `NNat` 110.


-}
nat110 : NNat (N Nat110 Is (Difference a To (Nat110Plus a)))
nat110 =
    n109 |> add1


{-| The `NNat` 111.


-}
nat111 : NNat (N Nat111 Is (Difference a To (Nat111Plus a)))
nat111 =
    n110 |> add1


{-| The `NNat` 112.


-}
nat112 : NNat (N Nat112 Is (Difference a To (Nat112Plus a)))
nat112 =
    n111 |> add1


{-| The `NNat` 113.


-}
nat113 : NNat (N Nat113 Is (Difference a To (Nat113Plus a)))
nat113 =
    n112 |> add1


{-| The `NNat` 114.


-}
nat114 : NNat (N Nat114 Is (Difference a To (Nat114Plus a)))
nat114 =
    n113 |> add1


{-| The `NNat` 115.


-}
nat115 : NNat (N Nat115 Is (Difference a To (Nat115Plus a)))
nat115 =
    n114 |> add1


{-| The `NNat` 116.


-}
nat116 : NNat (N Nat116 Is (Difference a To (Nat116Plus a)))
nat116 =
    n115 |> add1


{-| The `NNat` 117.


-}
nat117 : NNat (N Nat117 Is (Difference a To (Nat117Plus a)))
nat117 =
    n116 |> add1


{-| The `NNat` 118.


-}
nat118 : NNat (N Nat118 Is (Difference a To (Nat118Plus a)))
nat118 =
    n117 |> add1


{-| The `NNat` 119.


-}
nat119 : NNat (N Nat119 Is (Difference a To (Nat119Plus a)))
nat119 =
    n118 |> add1


{-| The `NNat` 120.


-}
nat120 : NNat (N Nat120 Is (Difference a To (Nat120Plus a)))
nat120 =
    n119 |> add1


{-| The `NNat` 121.


-}
nat121 : NNat (N Nat121 Is (Difference a To (Nat121Plus a)))
nat121 =
    n120 |> add1


{-| The `NNat` 122.


-}
nat122 : NNat (N Nat122 Is (Difference a To (Nat122Plus a)))
nat122 =
    n121 |> add1


{-| The `NNat` 123.


-}
nat123 : NNat (N Nat123 Is (Difference a To (Nat123Plus a)))
nat123 =
    n122 |> add1


{-| The `NNat` 124.


-}
nat124 : NNat (N Nat124 Is (Difference a To (Nat124Plus a)))
nat124 =
    n123 |> add1


{-| The `NNat` 125.


-}
nat125 : NNat (N Nat125 Is (Difference a To (Nat125Plus a)))
nat125 =
    n124 |> add1


{-| The `NNat` 126.


-}
nat126 : NNat (N Nat126 Is (Difference a To (Nat126Plus a)))
nat126 =
    n125 |> add1


{-| The `NNat` 127.


-}
nat127 : NNat (N Nat127 Is (Difference a To (Nat127Plus a)))
nat127 =
    n126 |> add1


{-| The `NNat` 128.


-}
nat128 : NNat (N Nat128 Is (Difference a To (Nat128Plus a)))
nat128 =
    n127 |> add1


{-| The `NNat` 129.


-}
nat129 : NNat (N Nat129 Is (Difference a To (Nat129Plus a)))
nat129 =
    n128 |> add1


{-| The `NNat` 130.


-}
nat130 : NNat (N Nat130 Is (Difference a To (Nat130Plus a)))
nat130 =
    n129 |> add1


{-| The `NNat` 131.


-}
nat131 : NNat (N Nat131 Is (Difference a To (Nat131Plus a)))
nat131 =
    n130 |> add1


{-| The `NNat` 132.


-}
nat132 : NNat (N Nat132 Is (Difference a To (Nat132Plus a)))
nat132 =
    n131 |> add1


{-| The `NNat` 133.


-}
nat133 : NNat (N Nat133 Is (Difference a To (Nat133Plus a)))
nat133 =
    n132 |> add1


{-| The `NNat` 134.


-}
nat134 : NNat (N Nat134 Is (Difference a To (Nat134Plus a)))
nat134 =
    n133 |> add1


{-| The `NNat` 135.


-}
nat135 : NNat (N Nat135 Is (Difference a To (Nat135Plus a)))
nat135 =
    n134 |> add1


{-| The `NNat` 136.


-}
nat136 : NNat (N Nat136 Is (Difference a To (Nat136Plus a)))
nat136 =
    n135 |> add1


{-| The `NNat` 137.


-}
nat137 : NNat (N Nat137 Is (Difference a To (Nat137Plus a)))
nat137 =
    n136 |> add1


{-| The `NNat` 138.


-}
nat138 : NNat (N Nat138 Is (Difference a To (Nat138Plus a)))
nat138 =
    n137 |> add1


{-| The `NNat` 139.


-}
nat139 : NNat (N Nat139 Is (Difference a To (Nat139Plus a)))
nat139 =
    n138 |> add1


{-| The `NNat` 140.


-}
nat140 : NNat (N Nat140 Is (Difference a To (Nat140Plus a)))
nat140 =
    n139 |> add1


{-| The `NNat` 141.


-}
nat141 : NNat (N Nat141 Is (Difference a To (Nat141Plus a)))
nat141 =
    n140 |> add1


{-| The `NNat` 142.


-}
nat142 : NNat (N Nat142 Is (Difference a To (Nat142Plus a)))
nat142 =
    n141 |> add1


{-| The `NNat` 143.


-}
nat143 : NNat (N Nat143 Is (Difference a To (Nat143Plus a)))
nat143 =
    n142 |> add1


{-| The `NNat` 144.


-}
nat144 : NNat (N Nat144 Is (Difference a To (Nat144Plus a)))
nat144 =
    n143 |> add1


{-| The `NNat` 145.


-}
nat145 : NNat (N Nat145 Is (Difference a To (Nat145Plus a)))
nat145 =
    n144 |> add1


{-| The `NNat` 146.


-}
nat146 : NNat (N Nat146 Is (Difference a To (Nat146Plus a)))
nat146 =
    n145 |> add1


{-| The `NNat` 147.


-}
nat147 : NNat (N Nat147 Is (Difference a To (Nat147Plus a)))
nat147 =
    n146 |> add1


{-| The `NNat` 148.


-}
nat148 : NNat (N Nat148 Is (Difference a To (Nat148Plus a)))
nat148 =
    n147 |> add1


{-| The `NNat` 149.


-}
nat149 : NNat (N Nat149 Is (Difference a To (Nat149Plus a)))
nat149 =
    n148 |> add1


{-| The `NNat` 150.


-}
nat150 : NNat (N Nat150 Is (Difference a To (Nat150Plus a)))
nat150 =
    n149 |> add1


{-| The `NNat` 151.


-}
nat151 : NNat (N Nat151 Is (Difference a To (Nat151Plus a)))
nat151 =
    n150 |> add1


{-| The `NNat` 152.


-}
nat152 : NNat (N Nat152 Is (Difference a To (Nat152Plus a)))
nat152 =
    n151 |> add1


{-| The `NNat` 153.


-}
nat153 : NNat (N Nat153 Is (Difference a To (Nat153Plus a)))
nat153 =
    n152 |> add1


{-| The `NNat` 154.


-}
nat154 : NNat (N Nat154 Is (Difference a To (Nat154Plus a)))
nat154 =
    n153 |> add1


{-| The `NNat` 155.


-}
nat155 : NNat (N Nat155 Is (Difference a To (Nat155Plus a)))
nat155 =
    n154 |> add1


{-| The `NNat` 156.


-}
nat156 : NNat (N Nat156 Is (Difference a To (Nat156Plus a)))
nat156 =
    n155 |> add1


{-| The `NNat` 157.


-}
nat157 : NNat (N Nat157 Is (Difference a To (Nat157Plus a)))
nat157 =
    n156 |> add1


{-| The `NNat` 158.


-}
nat158 : NNat (N Nat158 Is (Difference a To (Nat158Plus a)))
nat158 =
    n157 |> add1


{-| The `NNat` 159.


-}
nat159 : NNat (N Nat159 Is (Difference a To (Nat159Plus a)))
nat159 =
    n158 |> add1


{-| The `NNat` 160.


-}
nat160 : NNat (N Nat160 Is (Difference a To (Nat160Plus a)))
nat160 =
    n159 |> add1


{-| The `NNat` 161.


-}
nat161 : NNat (N Nat161 Is (Difference a To (Nat161Plus a)))
nat161 =
    n160 |> add1


{-| The `NNat` 162.


-}
nat162 : NNat (N Nat162 Is (Difference a To (Nat162Plus a)))
nat162 =
    n161 |> add1


{-| The `NNat` 163.


-}
nat163 : NNat (N Nat163 Is (Difference a To (Nat163Plus a)))
nat163 =
    n162 |> add1


{-| The `NNat` 164.


-}
nat164 : NNat (N Nat164 Is (Difference a To (Nat164Plus a)))
nat164 =
    n163 |> add1


{-| The `NNat` 165.


-}
nat165 : NNat (N Nat165 Is (Difference a To (Nat165Plus a)))
nat165 =
    n164 |> add1


{-| The `NNat` 166.


-}
nat166 : NNat (N Nat166 Is (Difference a To (Nat166Plus a)))
nat166 =
    n165 |> add1


{-| The `NNat` 167.


-}
nat167 : NNat (N Nat167 Is (Difference a To (Nat167Plus a)))
nat167 =
    n166 |> add1


{-| The `NNat` 168.


-}
nat168 : NNat (N Nat168 Is (Difference a To (Nat168Plus a)))
nat168 =
    n167 |> add1


{-| The `NNat` 169.


-}
nat169 : NNat (N Nat169 Is (Difference a To (Nat169Plus a)))
nat169 =
    n168 |> add1


{-| The `NNat` 170.


-}
nat170 : NNat (N Nat170 Is (Difference a To (Nat170Plus a)))
nat170 =
    n169 |> add1


{-| The `NNat` 171.


-}
nat171 : NNat (N Nat171 Is (Difference a To (Nat171Plus a)))
nat171 =
    n170 |> add1


{-| The `NNat` 172.


-}
nat172 : NNat (N Nat172 Is (Difference a To (Nat172Plus a)))
nat172 =
    n171 |> add1


{-| The `NNat` 173.


-}
nat173 : NNat (N Nat173 Is (Difference a To (Nat173Plus a)))
nat173 =
    n172 |> add1


{-| The `NNat` 174.


-}
nat174 : NNat (N Nat174 Is (Difference a To (Nat174Plus a)))
nat174 =
    n173 |> add1


{-| The `NNat` 175.


-}
nat175 : NNat (N Nat175 Is (Difference a To (Nat175Plus a)))
nat175 =
    n174 |> add1


{-| The `NNat` 176.


-}
nat176 : NNat (N Nat176 Is (Difference a To (Nat176Plus a)))
nat176 =
    n175 |> add1


{-| The `NNat` 177.


-}
nat177 : NNat (N Nat177 Is (Difference a To (Nat177Plus a)))
nat177 =
    n176 |> add1


{-| The `NNat` 178.


-}
nat178 : NNat (N Nat178 Is (Difference a To (Nat178Plus a)))
nat178 =
    n177 |> add1


{-| The `NNat` 179.


-}
nat179 : NNat (N Nat179 Is (Difference a To (Nat179Plus a)))
nat179 =
    n178 |> add1


{-| The `NNat` 180.


-}
nat180 : NNat (N Nat180 Is (Difference a To (Nat180Plus a)))
nat180 =
    n179 |> add1


{-| The `NNat` 181.


-}
nat181 : NNat (N Nat181 Is (Difference a To (Nat181Plus a)))
nat181 =
    n180 |> add1


{-| The `NNat` 182.


-}
nat182 : NNat (N Nat182 Is (Difference a To (Nat182Plus a)))
nat182 =
    n181 |> add1


{-| The `NNat` 183.


-}
nat183 : NNat (N Nat183 Is (Difference a To (Nat183Plus a)))
nat183 =
    n182 |> add1


{-| The `NNat` 184.


-}
nat184 : NNat (N Nat184 Is (Difference a To (Nat184Plus a)))
nat184 =
    n183 |> add1


{-| The `NNat` 185.


-}
nat185 : NNat (N Nat185 Is (Difference a To (Nat185Plus a)))
nat185 =
    n184 |> add1


{-| The `NNat` 186.


-}
nat186 : NNat (N Nat186 Is (Difference a To (Nat186Plus a)))
nat186 =
    n185 |> add1


{-| The `NNat` 187.


-}
nat187 : NNat (N Nat187 Is (Difference a To (Nat187Plus a)))
nat187 =
    n186 |> add1


{-| The `NNat` 188.


-}
nat188 : NNat (N Nat188 Is (Difference a To (Nat188Plus a)))
nat188 =
    n187 |> add1


{-| The `NNat` 189.


-}
nat189 : NNat (N Nat189 Is (Difference a To (Nat189Plus a)))
nat189 =
    n188 |> add1


{-| The `NNat` 190.


-}
nat190 : NNat (N Nat190 Is (Difference a To (Nat190Plus a)))
nat190 =
    n189 |> add1


{-| The `NNat` 191.


-}
nat191 : NNat (N Nat191 Is (Difference a To (Nat191Plus a)))
nat191 =
    n190 |> add1


{-| The `NNat` 192.


-}
nat192 : NNat (N Nat192 Is (Difference a To (Nat192Plus a)))
nat192 =
    n191 |> add1
