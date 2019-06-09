let Nat = ./Nat.dhall

let Nat/succ = ./succ.dhall

let Nat/zero = ./zero.dhall

let Nat/fromNatural
	: Natural → Nat
	= λ(n : Natural) → Natural/fold n Nat Nat/succ Nat/zero

in  Nat/fromNatural
