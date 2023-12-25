-- Write one function that can accept one argument and work for
-- all the following expressions. Be sure to name the function.

-- 3.14 * (5 * 5)
-- 3.14 * (10 * 10)
-- 3.14 * (2 * 2)
-- 3.14 * (4 * 4)

square x = x * x
circleArea x = pi * square x


main = do
  putStrLn (show (circleArea 5))
  putStrLn (show (circleArea 10))
  putStrLn (show (circleArea 2))
  putStrLn (show (circleArea 4))