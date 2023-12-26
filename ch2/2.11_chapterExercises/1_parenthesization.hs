{-
Parenthesization
Given what we know about the precedence of (*), (+), and (^), how
can we parenthesize the following expressions more explicitly with-
out changing their results? Put together an answer you think is cor-
rect, then test in the GHCi REPL.

  -- We want to make this more explicit
  2 + 2 * 3 - 3

  -- this will produce the same result
  2 + (2 * 3) - 3

Attempt the above on the following expressions.
-}

correct1      = 2 + 2 * 3 - 1
moreExplicit1 = 2 + (2 * 3) - 1

correct2      = (^) 10 $ 1 + 1    -- Evaluates 1 + 1 first, ^ is right associative, so it's 10^2
moreExplicit2 = 10 ^ (1 + 1)

correct3      = 2 ^ 2 * 4 ^ 5 + 1 -- (Operator, precedence, associativity):
                                  -- (^, 8, right), (*, 7, left), (+, 6, left).
                                  -- Evaluation:
                                  -- 2 ^ 2 * 4 ^ 5 + 1
                                  -- 4 * 4 ^ 5 + 1
                                  -- 4 * 1024 + 1
                                  -- 4096 + 1
                                  -- 4097
moreExplicit3 = (((2 ^ 2) * (4 ^ 5)) + 1)