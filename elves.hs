initDataModel n = [1..n]

-- filterElves :: [a] -> [a] -> [a]
filterElves theHead (x:y:xs) = filterElves (x:theHead) xs
filterElves theHead [x] = case theHead of [] -> x
                                           _ ->  filterElves [] (x:(reverse theHead))
filterElves theHead [] = filterElves [] (reverse theHead)

