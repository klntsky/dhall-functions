let Nat = ./Nat.dhall

let List/init = ./../List/init.dhall

let Nat/pred : Nat → Nat = List/init {}

in  Nat/pred
