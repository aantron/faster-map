let stack_words = ref 0

let check_stack_size () =
  let current_size = Gc.((quick_stat ()).stack_size) in
  if current_size > !stack_words then
    stack_words := current_size


(* Based on:
  https://github.com/ocaml/ocaml/blob/ebcebb9379b79138de2f4eeaa29e209c9eb497e4/stdlib/list.ml#L52-L55
  https://github.com/ocaml/ocaml/blob/ebcebb9379b79138de2f4eeaa29e209c9eb497e4/stdlib/list.ml#L90-L95 *)
let rec rev_append l1 l2 =
  match l1 with
    [] -> check_stack_size (); l2
  | a :: l -> rev_append l (a :: l2)

let rev_map f l =
  let rec rmap_f accu = function
    | [] -> check_stack_size (); accu
    | a::l -> rmap_f (f a :: accu) l
  in
  rmap_f [] l

(* Based on https://github.com/ocaml/ocaml/blob/ebcebb9379b79138de2f4eeaa29e209c9eb497e4/stdlib/list.ml#L80-L82. *)
module Stdlib =
struct
  let rec map f = function
      [] -> check_stack_size (); []
    | a::l -> let r = f a in r :: map f l
end

module Naive =
struct
  let map f l = rev_append (rev_map f l) []
end

(* Based on https://github.com/janestreet/base/blob/75d0bfe8721aa8d9ffeabe13adb9081675da6139/src/list.ml#L312-L346. *)
module Base =
struct
  let rev = function
    | [] | [_] as res -> res
    | x :: y :: rest -> rev_append rest [y; x]

  let map_slow l ~f = rev (List.rev_map f l)

  let rec count_map ~f l ctr =
    match l with
    | [] -> check_stack_size (); []
    | [x1] ->
      let f1 = f x1 in
      check_stack_size (); [f1]
    | [x1; x2] ->
      let f1 = f x1 in
      let f2 = f x2 in
      check_stack_size (); [f1; f2]
    | [x1; x2; x3] ->
      let f1 = f x1 in
      let f2 = f x2 in
      let f3 = f x3 in
      check_stack_size (); [f1; f2; f3]
    | [x1; x2; x3; x4] ->
      let f1 = f x1 in
      let f2 = f x2 in
      let f3 = f x3 in
      let f4 = f x4 in
      check_stack_size (); [f1; f2; f3; f4]
    | x1 :: x2 :: x3 :: x4 :: x5 :: tl ->
      let f1 = f x1 in
      let f2 = f x2 in
      let f3 = f x3 in
      let f4 = f x4 in
      let f5 = f x5 in
      f1 :: f2 :: f3 :: f4 :: f5 ::
      (if ctr > 1000
      then map_slow ~f tl
      else count_map ~f tl (ctr + 1))

  let map l ~f = count_map ~f l 0

  let map f l = map l ~f
end

(* Based on https://github.com/c-cube/ocaml-containers/blob/c792d70ac7cccfcc0faf466ff23943b3808f4d6c/src/core/CCList.ml#L23-L37. *)
module Containers =
struct
  let direct_depth_default_ = 1000

  let map f l =
    let rec direct f i l = match l with
      | [] -> check_stack_size (); []
      | [x] -> check_stack_size (); [f x]
      | [x1;x2] -> let y1 = f x1 in check_stack_size (); [y1; f x2]
      | [x1;x2;x3] ->
        let y1 = f x1 in let y2 = f x2 in check_stack_size (); [y1; y2; f x3]
      | _ when i=0 -> rev_append (rev_map f l) []
      | x1::x2::x3::x4::l' ->
        let y1 = f x1 in
        let y2 = f x2 in
        let y3 = f x3 in
        let y4 = f x4 in
        y1 :: y2 :: y3 :: y4 :: direct f (i-1) l'
    in
    direct f direct_depth_default_ l
end

(* Based on https://github.com/ocaml-batteries-team/batteries-included/blob/d682509f15fcfa098646d9b5691329f277f9afb6/src/batList.mlv#L223-L233. *)
module Batteries =
struct
  type 'a mut_list =  {
    hd: 'a;
    mutable tl: 'a list
  }

  external inj : 'a mut_list -> 'a list = "%identity"

  module Acc = struct
    let dummy () =
      { hd = Obj.magic (); tl = [] }
    let create x =
      { hd = x; tl = [] }
    let accum acc x =
      let cell = create x in
      acc.tl <- inj cell;
      cell
  end

  let map f = function
    | [] -> []
    | h :: t ->
      let rec loop dst = function
        | [] -> check_stack_size (); ()
        | h :: t ->
          loop (Acc.accum dst (f h)) t
      in
      let r = Acc.create (f h) in
      loop r t;
      inj r
end

module Proposed =
struct
  let rec plain_unrolled_prefix_5 map_suffix count f l =
    match l with
    | [] ->
      check_stack_size (); []
    | [x1] ->
      let y1 = f x1 in
      check_stack_size (); [y1]
    | [x1; x2] ->
      let y1 = f x1 in
      let y2 = f x2 in
      check_stack_size (); [y1; y2]
    | [x1; x2; x3] ->
      let y1 = f x1 in
      let y2 = f x2 in
      let y3 = f x3 in
      check_stack_size (); [y1; y2; y3]
    | [x1; x2; x3; x4] ->
      let y1 = f x1 in
      let y2 = f x2 in
      let y3 = f x3 in
      let y4 = f x4 in
      check_stack_size (); [y1; y2; y3; y4]
    | x1::x2::x3::x4::x5::tail ->
      let y1 = f x1 in
      let y2 = f x2 in
      let y3 = f x3 in
      let y4 = f x4 in
      let y5 = f x5 in
      let tail =
        if count <= 0 then
          map_suffix f tail
        else
          plain_unrolled_prefix_5 map_suffix (count - 1) f tail
      in
      y1::y2::y3::y4::y5::tail

  let chunked_tail_recursive_map_12 f l =
    let rec split chunks l =
      match l with
      | _::_::_::_::_::_::_::_::_::_::_::_::tail ->
        ((split [@ocaml.tailcall]) (l::chunks) tail)
      | _ ->
        check_stack_size (); l::chunks
    in

    let map_head_chunk chunk =
      begin match chunk with
      | [] ->
        check_stack_size (); []
      | [x1] ->
        let y1 = f x1 in
        check_stack_size (); [y1]
      | [x1; x2] ->
        let y1 = f x1 in
        let y2 = f x2 in
        check_stack_size (); [y1; y2]
      | [x1; x2; x3] ->
        let y1 = f x1 in
        let y2 = f x2 in
        let y3 = f x3 in
        check_stack_size (); [y1; y2; y3]
      | [x1; x2; x3; x4] ->
        let y1 = f x1 in
        let y2 = f x2 in
        let y3 = f x3 in
        let y4 = f x4 in
        check_stack_size (); [y1; y2; y3; y4]
      | [x1; x2; x3; x4; x5] ->
        let y1 = f x1 in
        let y2 = f x2 in
        let y3 = f x3 in
        let y4 = f x4 in
        let y5 = f x5 in
        check_stack_size (); [y1; y2; y3; y4; y5]
      | [x1; x2; x3; x4; x5; x6] ->
        let y1 = f x1 in
        let y2 = f x2 in
        let y3 = f x3 in
        let y4 = f x4 in
        let y5 = f x5 in
        let y6 = f x6 in
        check_stack_size (); [y1; y2; y3; y4; y5; y6]
      | [x1; x2; x3; x4; x5; x6; x7] ->
        let y1 = f x1 in
        let y2 = f x2 in
        let y3 = f x3 in
        let y4 = f x4 in
        let y5 = f x5 in
        let y6 = f x6 in
        let y7 = f x7 in
        check_stack_size (); [y1; y2; y3; y4; y5; y6; y7]
      | [x1; x2; x3; x4; x5; x6; x7; x8] ->
        let y1 = f x1 in
        let y2 = f x2 in
        let y3 = f x3 in
        let y4 = f x4 in
        let y5 = f x5 in
        let y6 = f x6 in
        let y7 = f x7 in
        let y8 = f x8 in
        check_stack_size (); [y1; y2; y3; y4; y5; y6; y7; y8]
      | [x1; x2; x3; x4; x5; x6; x7; x8; x9] ->
        let y1 = f x1 in
        let y2 = f x2 in
        let y3 = f x3 in
        let y4 = f x4 in
        let y5 = f x5 in
        let y6 = f x6 in
        let y7 = f x7 in
        let y8 = f x8 in
        let y9 = f x9 in
        check_stack_size (); [y1; y2; y3; y4; y5; y6; y7; y8; y9]
      | [x1; x2; x3; x4; x5; x6; x7; x8; x9; x10] ->
        let y1 = f x1 in
        let y2 = f x2 in
        let y3 = f x3 in
        let y4 = f x4 in
        let y5 = f x5 in
        let y6 = f x6 in
        let y7 = f x7 in
        let y8 = f x8 in
        let y9 = f x9 in
        let y10 = f x10 in
        check_stack_size (); [y1; y2; y3; y4; y5; y6; y7; y8; y9; y10]
      | [x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11] ->
        let y1 = f x1 in
        let y2 = f x2 in
        let y3 = f x3 in
        let y4 = f x4 in
        let y5 = f x5 in
        let y6 = f x6 in
        let y7 = f x7 in
        let y8 = f x8 in
        let y9 = f x9 in
        let y10 = f x10 in
        let y11 = f x11 in
        check_stack_size (); [y1; y2; y3; y4; y5; y6; y7; y8; y9; y10; y11]
      | [x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12] ->
        let y1 = f x1 in
        let y2 = f x2 in
        let y3 = f x3 in
        let y4 = f x4 in
        let y5 = f x5 in
        let y6 = f x6 in
        let y7 = f x7 in
        let y8 = f x8 in
        let y9 = f x9 in
        let y10 = f x10 in
        let y11 = f x11 in
        let y12 = f x12 in
        check_stack_size (); [y1; y2; y3; y4; y5; y6; y7; y8; y9; y10; y11; y12]
      end [@ocaml.warning "-8"]
    in

    let map_tail_chunk suffix chunk =
      begin match chunk with
      | x1::x2::x3::x4::x5::x6::x7::x8::x9::x10::x11::x12::_ ->
        let y1 = f x1 in
        let y2 = f x2 in
        let y3 = f x3 in
        let y4 = f x4 in
        let y5 = f x5 in
        let y6 = f x6 in
        let y7 = f x7 in
        let y8 = f x8 in
        let y9 = f x9 in
        let y10 = f x10 in
        let y11 = f x11 in
        let y12 = f x12 in
        (y1)::(y2)::(y3)::(y4)::(y5)::(y6)::(y7)::(y8)::(y9)::(y10)::(y11)::(y12)::suffix
      end [@ocaml.warning "-8"]
    in

    let rec map_all_tail_chunks suffix chunks =
      match chunks with
      | [] ->
        check_stack_size (); suffix
      | chunk::more ->
        ((map_all_tail_chunks [@ocaml.tailcall])
          (map_tail_chunk suffix chunk) more)
    in

    let chunks = split [] l in

    match chunks with
    | [] ->
      check_stack_size (); []
    | first::rest ->
      map_all_tail_chunks (map_head_chunk first) rest

  let map f l =
    plain_unrolled_prefix_5 chunked_tail_recursive_map_12 1000 f l
end

module Unrolled =
struct
  let rec map f l =
    match l with
    | [] ->
      check_stack_size (); []
    | [x1] ->
      let y1 = f x1 in
      check_stack_size (); [y1]
    | [x1; x2] ->
      let y1 = f x1 in
      let y2 = f x2 in
      check_stack_size (); [y1; y2]
    | [x1; x2; x3] ->
      let y1 = f x1 in
      let y2 = f x2 in
      let y3 = f x3 in
      check_stack_size (); [y1; y2; y3]
    | [x1; x2; x3; x4] ->
      let y1 = f x1 in
      let y2 = f x2 in
      let y3 = f x3 in
      let y4 = f x4 in
      check_stack_size (); [y1; y2; y3; y4]
    | x1::x2::x3::x4::x5::tail ->
      let y1 = f x1 in
      let y2 = f x2 in
      let y3 = f x3 in
      let y4 = f x4 in
      let y5 = f x5 in
      let tail = map f tail in
      y1::y2::y3::y4::y5::tail
end



let measure label map_function =
  let heap_overhead = Gc.((quick_stat ()).top_heap_words) in

  let rec make_list n list_acc =
    if n <= 0 then list_acc
    else make_list (n - 1) (0::list_acc)
  in

  let list_length = 1000000 in
  let argument = make_list list_length [] in
  let f = (+) 1 in

  let initial_stack_words, initial_heap_words =
    let stats = Gc.quick_stat () in
    Gc.(stats.stack_size, stats.top_heap_words)
  in

  let result = map_function f argument in

  let final_heap_words = Gc.((quick_stat ()).top_heap_words) in

  (* A small effort to suppress any intermediate GC. *)
  assert (List.length argument = list_length);
  assert (List.length result = list_length);

  assert (!stack_words > initial_stack_words);
  assert (final_heap_words > initial_heap_words);

  let word_size = 8 in
  let stack_usage_megabytes =
    (!stack_words - initial_stack_words) * word_size / 1024 / 1024 in
  let heap_usage_megabytes =
    (final_heap_words - heap_overhead) * word_size / 1024 / 1024 in

  Printf.printf
    "%-10s\t%i\t%i\t%i\n"
    label
    stack_usage_megabytes
    heap_usage_megabytes
    (stack_usage_megabytes + heap_usage_megabytes)
