let List/init
	: ∀(e : Type) → List e → List e
	=   λ(e : Type)
	  → λ(l : List e)
	  → let Step = { el : Optional e, acc : List e }

		let cons =
				λ(x : e)
			  → λ(f : Step → Step)
			  → λ(t : Step)
			  → f
				( Optional/fold
				  e
				  t.el
				  Step
				  (λ(m : e) → { el = Some x, acc = t.acc # [ m ] })
				  { el = Some x, acc = [] : List e }
				)

		let nil = λ(x : Step) → x

		in  ( List/fold
			  e
			  l
			  (Step → Step)
			  cons
			  nil
			  { el = None e, acc = [] : List e }
			).acc

in  List/init
