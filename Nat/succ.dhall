let Nat = ./Nat.dhall

let Nat/succ : Nat → Nat = λ(n : Nat) → [ {=} ] # n

in  Nat/succ
