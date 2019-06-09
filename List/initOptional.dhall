let List/initOptional
	: ∀(e : Type) → List e → Optional (List e)
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

		let tmp =
			  List/fold
			  e
			  l
			  (Step → Step)
			  cons
			  nil
			  { el = None e, acc = [] : List e }

		in  Optional/fold
			e
			tmp.el
			(Optional (List e))
			(λ(m : e) → Some tmp.acc)
			(None (List e))

in  List/initOptional
