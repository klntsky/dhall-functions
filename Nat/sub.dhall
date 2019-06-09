let Nat = ./Nat.dhall

let Nat/zero = ./zero.dhall

let Nat/isZero = ./isZero.dhall

let Nat/pred = ./pred.dhall

let Nat/sub
	: Nat → Nat → Nat
	=   λ(x : Nat)
	  → λ(y : Nat)
	  → let cons =
				λ(elem : {})
			  → λ(cont : Nat → Nat)
			  → λ(c : Nat)
			  → if Nat/isZero c then c else cont (Nat/pred c)

		let nil = λ(x : Nat) → x

		in  List/fold {} y (Nat → Nat) cons nil x

in  Nat/sub
