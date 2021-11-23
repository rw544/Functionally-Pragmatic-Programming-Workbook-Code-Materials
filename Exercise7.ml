(* ---------------------- Exercise 7: Processing ---------------------- *)

(* Compile: ocamlc -o test [file path] *)

module Exercise7 = struct
    
    let rec search_bitmap pid (bitmap:(int * int) list) = 
        match bitmap with
        | [] -> -1
        | (a,b)::t -> if a = pid then b else search_bitmap pid t
    
    let rec evict_process (queue:int list) (bitmap:(int * int) list) = 
        (* Fill in code below *)








end