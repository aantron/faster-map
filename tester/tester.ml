let stack_safe_map_functions = [
  "warmup",
    Functions.Naive.tail_recursive_map;

  "naive-tail-recursive",
    Functions.Naive.tail_recursive_map;

  "base",
    Functions.Existing.base_map;

  "batteries",
    Functions.Existing.batteries_map;

  "containers",
    Functions.Existing.containers_map;

  "chunked-tail-recursive-12",
    Functions.Generated.chunked_tail_recursive_map_12;

  "unrolled-5-chunked-12-hybrid",
    Functions.Generated.plain_unrolled_prefix_5
      Functions.Generated.chunked_tail_recursive_map_12 1000;

  "tupled",
    Functions.Contrib.tupled_map;
]

let stack_unsafe_map_functions = [
  "stdlib",
    Functions.Naive.stdlib_map;

  "unrolled-5",
    Functions.Generated.plain_unrolled_map_5;
]

let all_map_functions =
  stack_safe_map_functions @ stack_unsafe_map_functions



let list_sizes =
  let lower_exponent = 3. in
  let upper_exponent = 6. in
  let exponent_step = 0.25 in

  let rec generate exponent sizes_acc =
    if exponent > upper_exponent then
      List.rev sizes_acc
    else
      let size = int_of_float (10. ** exponent) in
      generate (exponent +. exponent_step) (size::sizes_acc)
  in
  generate lower_exponent []



let make_map_test name map_function argument : Core_bench.Bench.Test.t =
  Core_bench.Bench.Test.create
    ~name
    (fun () ->
      map_function ((+) 1) argument
      |> ignore)

let make_argument_list number_of_elements =
  let rec make_list_loop l = function
    | n when n <= 0 -> l
    | n -> make_list_loop (n::l) (n - 1)
  in
  make_list_loop [] number_of_elements

let make_tests map_functions list_sizes : (int * Core.Command.t) list =
  list_sizes
  |> List.map (fun list_size ->
    let argument_list = make_argument_list list_size in
    map_functions
    |> List.map (fun (name, map_function) ->
      make_map_test name map_function argument_list)
    |> Core_bench.Bench.make_command
    |> fun command -> (list_size, command))



let () =
  make_tests all_map_functions list_sizes
  |> List.iter (fun (list_size, test) ->
    Printf.printf "With lists of size %i\n%!" list_size;
    Core.Command.run test)
