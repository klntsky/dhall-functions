let Natural/sub = ./sub.dhall

let Natural/compare
	: Natural → Natural → Bool
	=   λ(x : Natural)
	  → λ(y : Natural)
	  → Natural/isZero (Natural/sub x y) && Natural/isZero (Natural/sub y x)

in  Natural/compare
