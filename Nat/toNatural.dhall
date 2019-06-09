let Nat = ./Nat.dhall

let Nat/succ = ./succ.dhall

let Nat/zero = ./zero.dhall

let Nat/toNatural
	: Nat → Natural
	=   λ(n : Nat)
	  → Natural/build
		(   λ(natural : Type)
		  → λ(succ : natural → natural)
		  → λ(zero : natural)
		  → List/fold {} n natural (λ(_ : {}) → succ) zero
		)

in  Nat/toNatural
