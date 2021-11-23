(* --------------------- Exercise 12: Processing... Test Suite --------------------- *)

(* Compile: ocamlc -o test [file path], Execute: ./test *)

module Exercise12Tests = struct
    (* Copy contents from module [Exercise12] in Exercise12.ml *)


end


open Exercise12Tests

let alice = {name="Alice"; ssn=102031111; balance=200000.}
let bob = {name="Bob"; ssn=102551221; balance=150000.}
let charlie = {name="Charlie"; ssn=122621050; balance=850000.}
let accounts_a = [alice; bob]
let accounts_b = [bob; charlie]

let () = assert (financial_position 0. accounts_a = 0.7)
let () = assert (financial_position 0. accounts_b = 2.0)


let _ = print_endline "Congratulations, you have successfully passed all the tests!"