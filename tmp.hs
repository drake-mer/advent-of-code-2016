import qualified Data.Maybe as Mb
to3tuple :: [Int] -> (Int,Int,Int)
to3tuple (x:y:z:_) = (x,y,z)
to3tuple _ = Nothing

type Triangle = (Int, Int, Int)
data_3 :: IO [Triangle]
data_3 = do
  content <- readFile "input_day_3.txt"
  let triangleRep = lines content
  let triangleAsLists = map read words triangleRep
  let triangleAsTuples = map to3tuple
  return (triangleAsTuples)

