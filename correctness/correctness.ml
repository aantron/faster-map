let () =
  let test_at_sizes =
      [0; 1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12]
    @ [13; 14; 15; 16; 17; 18; 19; 20; 21; 22; 23; 24; 25]
    @ [500]
    @ [1000; 1001; 1002; 1003; 1004; 1005; 1006; 1007; 1008; 1009;
       1010; 1011; 1012; 1013; 1014; 1015; 1016; 1017; 1018; 1019;
       1020; 1021; 1022; 1023; 1024; 1025]
    @ [5000; 5001; 5002; 5003; 5004; 5005; 5006; 5007; 5008; 5009;
       5010; 5011; 5012; 5013; 5014; 5015; 5016; 5017; 5018; 5019;
       5020; 5021; 5022; 5023; 5024; 5025]
    @ [10000]
    @ [1000000]
    @ [100000000]
  in

  let make_list n =
    let rec loop n list_acc =
      if n <= 0 then
        list_acc
      else
        loop (n - 1) (n::list_acc)
    in
    loop n []
  in

  let f = (+) 1 in

  let safe_map f l = List.rev_map f l |> List.rev in

  let faster_map =
    Functions.Generated.plain_unrolled_prefix_5
      Functions.Generated.chunked_tail_recursive_map_12 1000
  in

  let test size =
    Printf.printf "Testing at size %i\n%!" size;
    let argument = make_list size in
    assert (safe_map f argument = faster_map f argument)
  in

  List.iter test test_at_sizes
