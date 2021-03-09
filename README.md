## elm-n-nat

Current attempts of represening natural numbers (>= 0) only have quite lose promises.

- If you know that your `Nat` is bigger than 3, why can't you subtract 1 or 2 or 3?

This package contains a very strict `Nat` type. The _actual value_ is present in the type.

- If you only want to ensure that a `Nat` is within a minimum & maximum, try [`elm-nat-in-range`][elm-nat-in-range]!

Setup

> ```noformatingplease
> elm install indique/elm-n-type
> elm install indique/elm-n-nat-type
> elm install indique/elm-n-nat
> ```

```elm
import NNat exposing (NNat)
import N.Type exposing (..)
--this is N, Is, Difference, To
import N.Nat.Type as Nat
```

Lets take a look at its types

```elm
n0 :
    NNat --a natural number
        (N N0 --zero is the exact value at compile time
         Is (Difference a To a)
         --we can also describe zero as the difference a - a
        )

sub1 :
    NNat
        (N (N1Plus nMinus1)
            --the exact value is nMinus1 + 1
            Is (Difference a To (N1Plus nPlusAMinus1))
            --we can also describe it as the difference (a + nMinus1 + 1) - a
        )
        
    -> NNat (N nMinus1 Is (Difference a To nPlusAMinus1))
```
→ `sub1 n0` is a compile-time-error!

→ We can only call `sub123` for a `NNat` that is at least 123

You can also express things like
- one `NNat` should be at least as big as another one.

    ```elm
    safeInterval :
        NNat (N first Is (Difference lastMinusFirst To last))
        -> NNat (N last Is lastDifference)
        -> Interval
    ```

Take a look at [`elm-nat-in-range`][elm-nat-in-range] & [`elm-n-array`][elm-n-array] to see `NNat` in action!

[elm-nat-in-range]: https://package.elm-lang.org/packages/indique/elm-nat-in-range/latest/
[elm-n-array]: https://package.elm-lang.org/packages/indique/elm-n-array/latest/
