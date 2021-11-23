(* --------------------- Exercise 6: Scope and Partial Application Test Suite --------------------- *)

(* Compile: ocamlc -o test [file path], Execute: ./test *)

module Exercise6Tests = struct
    (* Copy contents from module [Exercise6] in Exercise6.ml *)
  

end


open Exercise6Tests

let () = assert (dist_fast 4 7 = 10.)
let () = assert (dist_fast 5 13 = 7.)
let () = assert (dist_fast 10 13 = 2.)


let _ = print_endline "Congratulations, you have successfully passed all the tests!"