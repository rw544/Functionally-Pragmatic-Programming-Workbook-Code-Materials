(* -------------------------------------- Exercise 77: Stock Market Prices -------------------------------------- *)

(* Compile: ocamlc -o test [file_path]; Execute: ./test *)


(* ------------ Type Definition ------------ *)
type 'a yr_stocks = { year : 'a; mutable next : 'a yr_stocks option; prices : 'a array; mutable min_price : 'a };;


(* ------------ Sample Solution ------------ *)
let compute_min arr = Array.fold_left min arr.(0) arr;;

let rec update_min_prices yr_stocks =
  match yr_stocks with
  | None -> ()
  | Some v when compute_min v.prices < v.min_price -> v.min_price <- compute_min v.prices; update_min_prices v.next
  | Some v -> update_min_prices v.next;;


(* ------------ Insert Function Implementation Below ------------ *)
(* let rec update_min_prices yr_stocks = *)


(* ------------ Test Suite ------------ *)

(* Test Case 1 *)
let yr_stocks = Some {year=2016; next=Some {year=2017; next=None; prices=[|5;2;3|]; min_price=max_int}; prices=[|5;1|]; min_price=max_int};;
update_min_prices yr_stocks;;
let actual_output = yr_stocks in
  let expected_output = Some {year=2016; next=Some {year=2017; next=None; prices=[|5;2;3|];  min_price=2}; prices=[|5;1|]; min_price=1} in 
    assert (expected_output = actual_output);;

(* Test Case 2 *)
let yr_stocks = Some {year=2016; next=None; prices=[|0;3;10;15|]; min_price=max_int};;
update_min_prices yr_stocks;;
let actual_output = yr_stocks in
  let expected_output = Some {year=2016; next=None; prices=[|0;3;10;15|]; min_price=0} in 
    assert (expected_output = actual_output);;

(* Test Case 3 *)
let yr_stocks = Some {year=2016; next=Some {year=2017; next=Some {year=2018; next=None; prices=[|8|]; min_price=max_int}; prices=[|5;2;3|]; min_price=max_int}; prices=[|0;3;10;15|]; min_price=max_int};;
update_min_prices yr_stocks;;
let actual_output = yr_stocks in
  let expected_output = Some {year=2016; next=Some {year=2017; next=Some {year=2018; next=None; prices=[|8|]; min_price=8}; prices=[|5;2;3|]; min_price=2}; prices=[|0;3;10;15|]; min_price=0} in 
    assert (expected_output = actual_output);;


let _ = print_endline "Congratulations, you have successfully passed all the tests!";;