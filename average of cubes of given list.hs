import Data.List 
sumList :: (Num a) => [a] -> a
sumList = foldl (+) 0

averageList :: [Int] -> Double
averageList xs =  fromIntegral (sumList(xs)) / fromIntegral(lengthList(xs))

lengthList :: [a] -> Int
lengthList [] = 0
lengthList (x:xs) = 1 + length  xs

averageCubeOdd= (averageList) . (filter odd) . (map(^3))
