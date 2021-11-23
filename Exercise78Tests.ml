(* --------------------- Exercise 78: Dot Operators Test Suite --------------------- *)

(* Compile: ocamlc -o test [file path], Execute: ./test *)

module Exercise78Tests = struct
    (* Copy contents from module [Exercise78] in Exercise78.ml *)
  

end


open Exercise78Tests

let () = assert (dot_operator (fun (x,y) -> x * y) [5;-2;3] [1;-1;2] = 13)
let () = assert (dot_operator (fun (x,y) -> x + 2*y) [5;-2;3] [1;-1;2] = 10)


let _ = print_endline "Congratulations, you have successfully passed all the tests!"