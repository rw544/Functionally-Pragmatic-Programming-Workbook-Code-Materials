(* --------------------- Exercise 7: Processing... Test Suite --------------------- *)

(* Compile: ocamlc -o test [file path], Execute: ./test *)

module Exercise7Tests = struct
    (* Copy contents from module [Exercise7] in Exercise7.ml *)
  

end


open Exercise7Tests

let () = assert (evict_process [5;1;2;8] [(1,1); (2,0); (5,1); (8,0)] = [2;8])
let () = assert (evict_process [1;2;3] [(1,1); (3,1); (2,1)] = [])


let _ = print_endline "Congratulations, you have successfully passed all the tests!"