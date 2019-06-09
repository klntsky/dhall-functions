let List/map =
	  https://github.com/dhall-lang/dhall-lang/raw/master/Prelude/List/map

let List/filter =
	  https://github.com/dhall-lang/dhall-lang/raw/master/Prelude/List/filter

let List/tail
	: ∀(a : Type) → List a → List a
	=   λ(a : Type)
	  → λ(l : List a)
	  → let Indexed = { index : Natural, value : a }

		in  List/map
			Indexed
			a
			(λ(t : Indexed) → t.value)
			( List/filter
			  { index : Natural, value : a }
			  (   λ(t : { index : Natural, value : a })
				→ False == Natural/isZero t.index
			  )
			  (List/indexed a l)
			)

in  List/tail
