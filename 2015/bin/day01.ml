let read_lines path =
  let ic = open_in path in
  let rec loop acc =
    match input_line ic with
    | line -> loop (line :: acc)
    | exception End_of_file ->
      close_in ic;
      List.rev acc
  in
  loop []

let () =
  let input_path = if Array.length Sys.argv > 1 then Sys.argv.(1) else "inputs/day01.txt" in
  let lines = read_lines input_path in
  Printf.printf "read %d lines from %s\n" (List.length lines) input_path
