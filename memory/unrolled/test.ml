let () =
  Instrumented.Functions.measure
    "unrolled" Instrumented.Functions.Unrolled.map
