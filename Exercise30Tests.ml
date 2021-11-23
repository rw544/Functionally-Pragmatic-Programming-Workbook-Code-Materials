(* -------------------------------- Exercise 30: Map It! Test Suite -------------------------------- *)

(* Compile: ocamlc -o test [file path], Execute: ./test *)

module Exercise30Tests = struct
    (* Copy contents from module [Exercise30] in Exercise30.ml *)
  

    
end


open Exercise30Tests


(* Exercise 30: Map It! Test Cases *)

let rec sum = function
    | [] -> 0 
    | x::xs -> x + sum xs

let rec count lst elt = 
    match lst with
    | [] -> 0
    | h::t -> if h = elt then 1 + count t elt else count t elt

let f x = [(0, count x 0); (1, count x 1); (2, count x 2)]

let () = assert (map sum [[1;2]; [3;4]] = [3;7])
let () = assert (map f [[1;1;2]; [0;1;1]] = [[(0, 0); (1, 2); (2, 1)]; [(0, 1); (1, 2); (2, 0)]])


let _ = print_endline "Congratulations, you have successfully passed all the tests!"