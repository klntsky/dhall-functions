let Nat/fromNatural = ./../Nat/fromNatural.dhall

let Nat/toNatural = ./../Nat/toNatural.dhall

let Nat/sub = ./../Nat/sub.dhall

let Natural/sub
	: Natural → Natural → Natural
	=   λ(x : Natural)
	  → λ(y : Natural)
	  → Nat/toNatural (Nat/sub (Nat/fromNatural x) (Nat/fromNatural y))

in  Natural/sub
