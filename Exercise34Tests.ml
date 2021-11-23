(* -------------------------------- Exercise 34: Unfolding Transactions Test Suite -------------------------------- *)

(* Compile: ocamlc -o test [file path], Execute: ./test *)

module Exercise34Tests = struct
    (* Copy contents from module [Exercise34] in Exercise34.ml *)
  

    
end


open Exercise34Tests

(* Exercise 34: Unfolding Transactions Test Cases *)

let transactions_a = [1500;2000;10000;350200;200;50;100;20;1000;3200;1400;1500]
let transactions_b = [2100;1000;425;3000;1000;50;100;2;1000;215;1208;500]

(* Part (a) *)
let () = assert (num_trades_full_year transactions_a = 371170)
let () = assert (num_trades_full_year transactions_b = 10600)

(* Part (b) *)
let () = assert (max_trades_full_year transactions_a = 350200)
let () = assert (max_trades_full_year transactions_b = 3000)

(* Part (c) *)
let () = assert (trades_first_half transactions_a = Some (6, 363950))
let () = assert (trades_first_half transactions_b = Some (6, 7575))


let _ = print_endline "Congratulations, you have successfully passed all the tests!"