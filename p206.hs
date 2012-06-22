lowerLimit=319421985
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]
problem206' n
  | n > 4392487859 = False
  | patMatch (digs(n^2)) = True
  | otherwise = nextStep
  where nextStep = problem206' ( succ(n) )
patMatch d
  | (d !! 0 == 1) && (d !! 2 == 2) && (d !! 4 == 3) && (d !! 6 == 4) && (d !! 8 == 5) && (d !! 10 == 6) && (d !! 12 == 7) && (d !! 14 == 8) && (d !! 16 == 9) && (d !! 18 == 0) = True
  | otherwise = False
