(* -------------------------------- Exercise 31: Filcarterer Test Suite -------------------------------- *)

(* Compile: ocamlc -o test [file path], Execute: ./test *)

module Exercise31Tests = struct
    (* Copy contents from module [Exercise31] in Exercise31.ml *)
  
    
    
    
end


open Exercise31Tests

(* Exercise 31: Filcarterer Test Cases *)

let () = assert (filter_cart ["a105"; "a102"; "b107"] = ["a105"; "a102"; "b107"])
let () = assert (filter_cart ["a105"; "a105"; "a102"; "b107"; "c502"] = ["a105"; "a102"; "b107"; "c502"])


let _ = print_endline "Congratulations, you have successfully passed all the tests!"