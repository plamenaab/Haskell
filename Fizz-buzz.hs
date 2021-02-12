fizzBuzzGame :: [Int] -> [String]
fizzBuzzGame xs =
    [fizz x | x <- xs]

fizz :: Int -> String
fizz x
   | mod x 3  == 0  = "Fizz"
   | mod x 5  == 0  = "Buzz"
   | mod x 15 == 0  = "FizzBuzz"
   | otherwise      = show x
