#use "src/core.ml";;

let expect condition = if not condition then failwith "fixture mismatch";;
let signal_case_1 = { demand = 56; capacity = 70; latency = 13; risk = 11; weight = 6 };;
expect (score signal_case_1 = 111);;
expect (classify signal_case_1 = "review");;
let signal_case_2 = { demand = 68; capacity = 85; latency = 27; risk = 15; weight = 5 };;
expect (score signal_case_2 = 68);;
expect (classify signal_case_2 = "review");;
let signal_case_3 = { demand = 71; capacity = 72; latency = 12; risk = 18; weight = 4 };;
expect (score signal_case_3 = 100);;
expect (classify signal_case_3 = "review");;
