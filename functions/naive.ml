let stdlib_map =
  List.map

let tail_recursive_map f l =
  List.rev (List.rev_map f l)
