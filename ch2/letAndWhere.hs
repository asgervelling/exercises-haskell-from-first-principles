-- The expression that looks like the following in the REPL
-- let x = 5; y = 6 in x * y
-- can be written in a file as

mult1     = x * y
  where x = 5
        y = 6


-- Practice by changing these let expressions
-- to use where clauses

-- 1. let x = 3; y = 1000 in x * 3 + y

ex1       = x * 3 + y
  where x = 3
        y = 1000


-- 2. let y = 10; x = 10 * 5 + y in x * 5

ex2       = x * 5
  where y = 10
        x = 10 * 5 + y


-- 3. let x = 7; y = negate x; z = y * 10 in z / x + y

ex3       = z / x + y
  where x = 7
        y = negate x
        z = y * 10


{- 
Check your solution.
First, `ghci letAndWhere.hs`, then

let x = 3; y = 1000 in x * 3 + y
ex1

let y = 10; x = 10 * 5 + y in x * 5
ex2

let x = 7; y = negate x; z = y * 10 in z / x + y
ex3
-}