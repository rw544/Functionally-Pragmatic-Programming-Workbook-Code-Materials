(* ------------------- Exercise 6: Scope and Partial Application ------------------- *)

(* Compile: ocamlc -o test [file path] *)

module Exercise6 = struct

    let square x = x * x
    let square_root x = sqrt x
    
    let dist loc_shore loc_curr : float = 
        match loc_curr with
        | (lat_curr, lon_curr) ->
            begin match loc_shore with
            | (lat_shore, lon_shore) -> (float) ((square (lat_curr - lat_shore)) + (square (lon_curr - lon_shore))) |> square_root
            end
    
    let g = dist (12,13)

    let dist_fast a b = 
        (* Fill in code below *)






end