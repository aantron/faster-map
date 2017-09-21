let starts_with prefix s =
  try
    String.sub s 0 (String.length prefix) = prefix
  with Invalid_argument _ ->
    false

let rec scan_to_table_start () : int =
  let header = "With lists of size " in
  let line = read_line () in
  if not @@ starts_with header line then
    scan_to_table_start ()
  else begin
    let list_size =
      String.sub
        line
        (String.length header)
        (String.length line - String.length header)
      |> int_of_string
    in
    read_line () |> ignore;
    read_line () |> ignore;
    read_line () |> ignore;
    read_line () |> ignore;
    list_size
  end

let read_table_row list_size : (string * float) option =
  let line = read_line () |> String.trim in
  if line = "" then
    None
  else begin
    Scanf.sscanf line "%s %s" (fun label time ->
      let unit_index = String.length time - 2 in
      let unit = String.sub time unit_index 2 in
      let multiple =
        match unit with
        | "us" -> 1e3
        | "ms" -> 1e6
        | _ -> assert false
      in
      let nanoseconds_per_element =
        String.sub time 0 unit_index
        |> float_of_string
        |> fun t -> t *. multiple /. (float_of_int list_size)
      in
      Some (label, nanoseconds_per_element))
    end

let rec read_tables () : unit =
  let list_size = scan_to_table_start () in
  Printf.printf "%i" list_size;

  let rec read_rows rows_acc =
    match read_table_row list_size with
    | None ->
      List.rev rows_acc;
    | Some (_, time) ->
      read_rows (time::rows_acc);
  in
  let times = read_rows [] in

  let naive_tailrec_time = List.nth times 1 in
  let normalized =
    List.map (fun time -> time /. naive_tailrec_time *. 100.) times in

  List.iter (fun normalized -> Printf.printf "\t%.02f" normalized) normalized;
  print_newline ();

  read_tables ()

let () =
  try
    read_tables ()
  with End_of_file ->
    ()
