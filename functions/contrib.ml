let tupled_map f xs =

  let rec rise ys = function
   | [] ->
      ys
   | (y0, y1, y2, y3, y4, y5, y6, y7) :: bs ->
      rise (y0 :: y1 :: y2 :: y3 :: y4 :: y5 :: y6 :: y7 :: ys) bs in

  let rec dive bs = function
   | x0 :: x1 :: x2 :: x3 :: x4 :: x5 :: x6 :: x7 :: xs ->
      let y0 = f x0 in
      let y1 = f x1 in
      let y2 = f x2 in
      let y3 = f x3 in
      let y4 = f x4 in
      let y5 = f x5 in
      let y6 = f x6 in
      let y7 = f x7 in
      dive ((y0, y1, y2, y3, y4, y5, y6, y7) :: bs) xs
   | xs ->
      rise (List.map f xs) bs in

  dive [] xs
