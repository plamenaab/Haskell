productList :: [Int] -> Int
productList [] = 1
productList (x:xs) = x * productList xs

sumsq:: Integral a => a -> a
sumsq n = sum[n^2|n<-[1..n]]

squareall:: [Integer]->[Integer]
squareall = map (\x -> x^2)

mygcd :: Int -> Int -> Int
mygcd 0 0 = error "Both arguments x and y can't be zero"
mygcd x 0 = 0
mygcd 0 y = 0
mygcd x y
 | y == 0 = x
 | y /= 0 = gcd y (mod x y)

prime :: Integral a => a -> Bool
prime n = n > 1 && (all (\p -> gcd n p == 1)  (takeWhile (\p -> p^2 <= n) [2..]))

perfect :: Integral a => a -> Bool
perfect n = n == sum [p | p <- [1..n-1], (mod n p) == 0]