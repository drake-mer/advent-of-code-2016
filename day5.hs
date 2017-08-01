import Data.String
import qualified Data.Hash.MD5 as MD5

testInput = "abc"
puzzleInput = "cxdnnyjw"
prefix = "00000"

answer = map (!! 5) $ getResult $ getHashList puzzleInput

getResult :: [String] -> [String]
getResult = take 8 . filter (isPrefixOf prefix)

getHashList :: String -> [String]
getHashList input = map ( MD5.md5s . MD5.Str . (input ++) . show ) [0..]

isPrefixOf :: String -> String -> Bool
isPrefixOf (x:xs) (y:ys) 
    | x==y = isPrefixOf xs ys
    | otherwise = False
isPrefixOf (xs:_) [] = False
isPrefixOf [] _ = True

isPrefixOf' :: String -> String -> Bool
isPrefixOf' a b = a==take (length a) b

