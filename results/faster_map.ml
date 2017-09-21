(* For reference in the article. *)
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



(* Non-tail-recursive prefix for the new fast map implementation. This is not
   really necessary, as it is possible to use the tail-recursive suffix
   function, and get almost the same performance. However, there *is* a slight
   improvement, and this makes it fully competitive with Containers and
   Base :) *)
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



(* Fast tail-recursive map for the list suffix. *)
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



(* Combines the 5x unrolled non-tail-recursive map for a prefix of 5000
   elements, followed by the tail-recursive new fast map for the remainder. *)
let faster_map f l =
  plain_unrolled_prefix_5 chunked_tail_recursive_map_12 1000 f l
