let tupled_map f xs =

  let rec rise ys = function
   | [] ->
      ys
   | (y0, y1, y2, y3, y4, y5, y6, y7) :: bs ->
      rise (y0 :: y1 :: y2 :: y3 :: y4 :: y5 :: y6 :: y7 :: ys) bs in

  let rec dive bs = function
   | x0 :: x1 :: x2 :: x3 :: x4 :: x5 :: x6 :: x7 :: xs ->
      dive ((f x0, f x1, f x2, f x3, f x4, f x5, f x6, f x7) :: bs) xs
   | xs ->
      rise (List.map f xs) bs in

  dive [] xs
