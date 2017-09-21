(* [range n] evaluates to [[1; 2; ...; n-1; n]]. *)
let range n =
  let rec range acc n =
    match n with
    | 0 ->
      acc
    | n ->
      range (n::acc) (n - 1)
  in
  range [] n

(* Useful abbreviations. *)
let p = Printf.printf
let fmt = Printf.sprintf



(* [plain_unrolled unrolling_factor] generates the source code of an unrolled
   variant of the non-tail-recursive [List.map], with unrolling factor
   [unrolling_factor], and writes it to STDOUT.

   Example output:

{[
let rec plain_unrolled_map_5 f l =
  match l with
  | [] ->
    []
  | [x1] ->
    let y1 = f x1 in
    [y1]
  | [x1; x2] ->
    let y1 = f x1 in
    let y2 = f x2 in
    [y1; y2]
  | [x1; x2; x3] ->
    let y1 = f x1 in
    let y2 = f x2 in
    let y3 = f x3 in
    [y1; y2; y3]
  | [x1; x2; x3; x4] ->
    let y1 = f x1 in
    let y2 = f x2 in
    let y3 = f x3 in
    let y4 = f x4 in
    [y1; y2; y3; y4]
  | x1::x2::x3::x4::x5::tail ->
    let y1 = f x1 in
    let y2 = f x2 in
    let y3 = f x3 in
    let y4 = f x4 in
    let y5 = f x5 in
    y1::y2::y3::y4::y5::(plain_unrolled_map_5 f tail)
]} *)
let plain_unrolled unrolling_factor =
  p "let rec plain_unrolled_map_%i f l =\n" unrolling_factor;
  p "  match l with\n";

  for i = 0 to unrolling_factor - 1 do
    range i
    |> List.map (fmt "x%i")
    |> String.concat "; "
    |> p "  | [%s] ->\n";

    range i
    |> List.map (fun i -> fmt "let y%i = f x%i in" i i)
    |> List.iter (p "    %s\n");

    range i
    |> List.map (fmt "y%i")
    |> String.concat "; "
    |> p "    [%s]\n";
  done;

  range unrolling_factor
  |> List.map (fmt "x%i")
  |> String.concat "::"
  |> p "  | %s::tail ->\n";

  range unrolling_factor
  |> List.map (fun i -> fmt "let y%i = f x%i in" i i)
  |> List.iter (p "    %s\n");

  range unrolling_factor
  |> List.map (fmt "y%i")
  |> String.concat "::"
  |> fun s -> p "    %s::(plain_unrolled_map_%i f tail)\n" s unrolling_factor;

  p "\n";

  ()



(* Largely the same as plain_unrolled, but the generated function takes two
   additional argments: the maximum number of iterations to perform, and another
   function to call for mapping the list tail when that number of iterations is
   reached.

   It also applies [f] in reverse order, because the new fast tail-recursive map
   applies [f] in reverse order to the suffix.

   Example output:

{[
let rec plain_unrolled_prefix_5 map_suffix count f l =
  match l with
  | [] ->
    []
  | [x1] ->
    let y1 = f x1 in
    [y1]
  | [x1; x2] ->
    let y2 = f x2 in
    let y1 = f x1 in
    [y1; y2]
  | [x1; x2; x3] ->
    let y3 = f x3 in
    let y2 = f x2 in
    let y1 = f x1 in
    [y1; y2; y3]
  | [x1; x2; x3; x4] ->
    let y4 = f x4 in
    let y3 = f x3 in
    let y2 = f x2 in
    let y1 = f x1 in
    [y1; y2; y3; y4]
  | x1::x2::x3::x4::x5::tail ->
    let tail =
      if count <= 0 then
        map_suffix f tail
      else
        plain_unrolled_prefix_5 map_suffix (count - 1) f tail
    in
    let y5 = f x5 in
    let y4 = f x4 in
    let y3 = f x3 in
    let y2 = f x2 in
    let y1 = f x1 in
    y1::y2::y3::y4::y5::tail
]} *)
let plain_unrolled_prefix unrolling_factor =
  p "let rec plain_unrolled_prefix_%i map_suffix count f l =\n"
    unrolling_factor;
  p "  match l with\n";

  for i = 0 to unrolling_factor - 1 do
    range i
    |> List.map (fmt "x%i")
    |> String.concat "; "
    |> p "  | [%s] ->\n";

    range i
    |> List.rev
    |> List.map (fun i -> fmt "let y%i = f x%i in" i i)
    |> List.iter (p "    %s\n");

    range i
    |> List.map (fmt "y%i")
    |> String.concat "; "
    |> p "    [%s]\n";
  done;

  range unrolling_factor
  |> List.map (fmt "x%i")
  |> String.concat "::"
  |> p "  | %s::tail ->\n";

  p "    let tail =\n";
  p "      if count <= 0 then\n";
  p "        map_suffix f tail\n";
  p "      else\n";
  p "        plain_unrolled_prefix_%i map_suffix (count - 1) f tail\n"
    unrolling_factor;
  p "    in\n";

  range unrolling_factor
  |> List.rev
  |> List.map (fun i -> fmt "let y%i = f x%i in" i i)
  |> List.iter (p "    %s\n");

  range unrolling_factor
  |> List.map (fmt "y%i")
  |> String.concat "::"
  |> p "    %s::tail\n";

  p "\n";

  ()



(* Generates a fast tail-recursive chunked map.

   Example output:

{[
let chunked_tail_recursive_map_12 f l =
  let rec split chunks l =
    match l with
    | _::_::_::_::_::_::_::_::_::_::_::_::tail ->
      ((split [@ocaml.tailcall]) (l::chunks) tail)
    | _ ->
      l::chunks
  in

  let map_head_chunk chunk =
    begin match chunk with
    | [] ->
      []
    | [x1] ->
      let y1 = f x1 in
      [y1]
    | [x1; x2] ->
      let y2 = f x2 in
      let y1 = f x1 in
      [y1; y2]
    | [x1; x2; x3] ->
      let y3 = f x3 in
      let y2 = f x2 in
      let y1 = f x1 in
      [y1; y2; y3]
    | [x1; x2; x3; x4] ->
      let y4 = f x4 in
      let y3 = f x3 in
      let y2 = f x2 in
      let y1 = f x1 in
      [y1; y2; y3; y4]
    | [x1; x2; x3; x4; x5] ->
      let y5 = f x5 in
      let y4 = f x4 in
      let y3 = f x3 in
      let y2 = f x2 in
      let y1 = f x1 in
      [y1; y2; y3; y4; y5]
    | [x1; x2; x3; x4; x5; x6] ->
      let y6 = f x6 in
      let y5 = f x5 in
      let y4 = f x4 in
      let y3 = f x3 in
      let y2 = f x2 in
      let y1 = f x1 in
      [y1; y2; y3; y4; y5; y6]
    | [x1; x2; x3; x4; x5; x6; x7] ->
      let y7 = f x7 in
      let y6 = f x6 in
      let y5 = f x5 in
      let y4 = f x4 in
      let y3 = f x3 in
      let y2 = f x2 in
      let y1 = f x1 in
      [y1; y2; y3; y4; y5; y6; y7]
    | [x1; x2; x3; x4; x5; x6; x7; x8] ->
      let y8 = f x8 in
      let y7 = f x7 in
      let y6 = f x6 in
      let y5 = f x5 in
      let y4 = f x4 in
      let y3 = f x3 in
      let y2 = f x2 in
      let y1 = f x1 in
      [y1; y2; y3; y4; y5; y6; y7; y8]
    | [x1; x2; x3; x4; x5; x6; x7; x8; x9] ->
      let y9 = f x9 in
      let y8 = f x8 in
      let y7 = f x7 in
      let y6 = f x6 in
      let y5 = f x5 in
      let y4 = f x4 in
      let y3 = f x3 in
      let y2 = f x2 in
      let y1 = f x1 in
      [y1; y2; y3; y4; y5; y6; y7; y8; y9]
    | [x1; x2; x3; x4; x5; x6; x7; x8; x9; x10] ->
      let y10 = f x10 in
      let y9 = f x9 in
      let y8 = f x8 in
      let y7 = f x7 in
      let y6 = f x6 in
      let y5 = f x5 in
      let y4 = f x4 in
      let y3 = f x3 in
      let y2 = f x2 in
      let y1 = f x1 in
      [y1; y2; y3; y4; y5; y6; y7; y8; y9; y10]
    | [x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11] ->
      let y11 = f x11 in
      let y10 = f x10 in
      let y9 = f x9 in
      let y8 = f x8 in
      let y7 = f x7 in
      let y6 = f x6 in
      let y5 = f x5 in
      let y4 = f x4 in
      let y3 = f x3 in
      let y2 = f x2 in
      let y1 = f x1 in
      [y1; y2; y3; y4; y5; y6; y7; y8; y9; y10; y11]
    | [x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12] ->
      let y12 = f x12 in
      let y11 = f x11 in
      let y10 = f x10 in
      let y9 = f x9 in
      let y8 = f x8 in
      let y7 = f x7 in
      let y6 = f x6 in
      let y5 = f x5 in
      let y4 = f x4 in
      let y3 = f x3 in
      let y2 = f x2 in
      let y1 = f x1 in
      [y1; y2; y3; y4; y5; y6; y7; y8; y9; y10; y11; y12]
    end [@ocaml.warning "-8"]
  in

  let map_tail_chunk suffix chunk =
    begin match chunk with
    | x1::x2::x3::x4::x5::x6::x7::x8::x9::x10::x11::x12::_ ->
      let y12 = f x12 in
      let y11 = f x11 in
      let y10 = f x10 in
      let y9 = f x9 in
      let y8 = f x8 in
      let y7 = f x7 in
      let y6 = f x6 in
      let y5 = f x5 in
      let y4 = f x4 in
      let y3 = f x3 in
      let y2 = f x2 in
      let y1 = f x1 in
      (y1)::(y2)::(y3)::(y4)::(y5)::(y6)::(y7)::(y8)::(y9)::(y10)::(y11)::(y12)::suffix
    end [@ocaml.warning "-8"]
  in

  let rec map_all_tail_chunks suffix chunks =
    match chunks with
    | [] ->
      suffix
    | chunk::more ->
      ((map_all_tail_chunks [@ocaml.tailcall])
        (map_tail_chunk suffix chunk) more)
  in

  let chunks = split [] l in

  match chunks with
  | [] ->
    []
  | first::rest ->
    map_all_tail_chunks (map_head_chunk first) rest
]} *)
let chunked_tail_recursive chunk_size =
  p "let chunked_tail_recursive_map_%i f l =\n" chunk_size;

  p "  let rec split chunks l =\n";
  p "    match l with\n";
  range chunk_size
  |> List.map (fun _ -> "_")
  |> String.concat "::"
  |> p "    | %s::tail ->\n";
  p "      ((split [@ocaml.tailcall]) (l::chunks) tail)\n";
  p "    | _ ->\n";
  p "      l::chunks\n";
  p "  in\n\n";

  p "  let map_head_chunk chunk =\n";
  p "    begin match chunk with\n";
  for i = 0 to chunk_size do
    range i
    |> List.map (fmt "x%i")
    |> String.concat "; "
    |> p "    | [%s] ->\n";

    range i
    |> List.rev
    |> List.map (fun i -> fmt "let y%i = f x%i in" i i)
    |> List.iter (p "      %s\n");

    range i
    |> List.map (fmt "y%i")
    |> String.concat "; "
    |> p "      [%s]\n";
  done;
  p "    end [@ocaml.warning \"-8\"]\n";
  p "  in\n\n";

  p "  let map_tail_chunk suffix chunk =\n";
  p "    begin match chunk with\n";
  range chunk_size
  |> List.map (fmt "x%i")
  |> String.concat "::"
  |> p "    | %s::_ ->\n";
  range chunk_size
  |> List.rev
  |> List.map (fun i -> fmt "let y%i = f x%i in" i i)
  |> List.iter (p "      %s\n");
  range chunk_size
  |> List.map (fmt "(y%i)")
  |> String.concat "::"
  |> p "      %s::suffix\n";
  p "    end [@ocaml.warning \"-8\"]\n";
  p "  in\n\n";

  p "  let rec map_all_tail_chunks suffix chunks =\n";
  p "    match chunks with\n";
  p "    | [] ->\n";
  p "      suffix\n";
  p "    | chunk::more ->\n";
  p "      ((map_all_tail_chunks [@ocaml.tailcall])\n";
  p "        (map_tail_chunk suffix chunk) more)\n";
  p "  in\n\n";

  p "  let chunks = split [] l in\n\n";

  p "  match chunks with\n";
  p "  | [] ->\n";
  p "    []\n";
  p "  | first::rest ->\n";
  p "    map_all_tail_chunks (map_head_chunk first) rest\n";

  p "\n";

  ()



(* Generates unrolled and chunked map functions for all unrolling factors from 2
   to 64. This is used for choosing the fastest one by some kind of binary
   search. *)
let generate_all () =
  let two_to_64 = range 64 |> List.tl in

  two_to_64 |> List.iter plain_unrolled;
  two_to_64 |> List.iter plain_unrolled_prefix;
  two_to_64 |> List.iter chunked_tail_recursive;

  ()

(* Generates the unrolled and chunked map functions determined to be fastest, by
   the search mentioned above. *)
let generate_chosen () =
  plain_unrolled 5;
  plain_unrolled_prefix 5;
  chunked_tail_recursive 12;

  ()

let () =
  generate_chosen ()
