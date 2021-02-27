## elm-n-nat

Current attempts of represening `Nat`ural numbers (>= 0) only have quite lose promises.

- If you know that your `Nat` is bigger than 3, why can't you subtract 1 or 2 or 3?

This package contains a very strict `Nat` type. The _actual value_ is present in the type.

- If you only want to ensure that a `Nat` is within a minimum & maximum, try `indique/elm-n-nat-within`!

Setup

> elm install indique/elm-n-type
> elm install indique/elm-n-nat-type
> elm install indique/elm-n-nat

```elm
import N.Nat exposing (NNat)
import N.Type exposing (..)
--this is N, Is, Difference, To
import N.Nat.Type exposing (..)
--N, 0Nat, N1Nat, ..., N1024Nat
--        N1NatPlus, N2NatPlus ..., N1024NatPlus
import N.Nats exposing (..)
--n, add, subtract: 0 to 1024
```

This is how its types look

```elm
n0Nat :
    NNat --a natural number
        (N N0Nat --zero is the exact value at compile time
         Is (Difference a To a)
         --we can also describe zero as the difference `a - a`
        )

n10Nat : NNat (N N10Nat Is (Difference a To (N10NatPlus a)))

sub1 :
    NNat (N N1Nat Is (Difference a To (N1NatPlus a)))
```

- `takesOnlyExact1 n10Nat` is a compile-time-error

```elm
takesAtLeast2 : NaturalNumber (N2NatPlus maybeMore)
```

- `takesAtLeast2 n1Nat` is a compile-time-error
- `takesAtLeast2 n10Nat` & `takesAtLeast2 n2Nat` work

Subtract is a good example of that

```elm
subtract6 :
    NNat (N1Plus nMinus1) (Plus a Is (N1Plus nMinus1PlusA))
    -> NNat nMinus1 (Plus a Is nMinus1PlusA)
subtract6 naturalNumber =
    naturalNumber |> subN3Nat |> subN2Nat |> subN1Nat
```

We have a typesafe subtract? Thant's neat.

For more complex usecases, you might also want a function, where one `NNat` should be at least as big as another one.

```elm
safeInterval :
    NNat first (Plus lastMinusFirst Is last)
    -> NNat last addAbility
    -> Interval
```


This package is the foundation of `indique/elm-n-nat`, `indique/elm-nat-within`, `indique/elm-n-array`.

Take a closer look at those packages to see `N.Nat.Type` in action!
