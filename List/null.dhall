let Optional/null =
	  https://github.com/dhall-lang/dhall-lang/raw/master/Prelude/Optional/null

let List/null
	: ∀(a : Type) → List a → Bool
	= λ(a : Type) → λ(xs : List a) → Optional/null a (List/head a xs)

in  List/null
