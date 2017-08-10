import qualified Data.List.Split as Split

test1 = "abba[mnop]qrst"
test2 = "abcd[bddb]xyyx"
test3 = "aaaa[qwer]tyui"
test4 = "ioxxoj[asdfgh]zxcvbn"


splitBrackets :: String -> ([String], [String])
splitBrackets foo = splitBrackets' (Split.split (Split.oneOf "[]") foo) [] []

splitBrackets' :: [String] -> [String] -> [String] -> ([String],[String])
splitBrackets' (x:xs) betweenBrackets outsideBrackets
    | x=="[" = splitBrackets' (drop 2 xs) ((head xs):betweenBrackets) outsideBrackets
    | otherwise = splitBrackets' xs (betweenBrackets) (x:outsideBrackets)
splitBrackets' [] foo bar = (foo, bar)


matchPalindrom :: String -> Bool
matchPalindrom (w:x:y:z:xs)
    | x==y && w==z && x/=z = True
    | otherwise = matchPalindrom (x:y:z:xs)
matchPalindrom (x:y:z:[]) = False

filterList :: [String] -> [String]
filterList = filter filterFunction

filterFunction :: String -> Bool
filterFunction test = (not $ any matchPalindrom bar) && (any (matchPalindrom) foo)
    where (bar, foo) = splitBrackets test
testData = lines <$> readFile "input_day_7.txt"

result :: IO Int
result = length . filterList <$> testData
