let () =
  Instrumented.Functions.measure
    "naive" Instrumented.Functions.Naive.map
