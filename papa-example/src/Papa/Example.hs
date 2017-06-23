module Papa.Example where

import Papa

-- |
--
-- >>> headExample
-- (Nothing,Just 1)
headExample ::
  (
    Maybe a
  , Maybe Int
  )
headExample =
  (head [], head [1,2,3])

-- |
--
-- >>> tailExample
-- (Nothing,Just [2,3])
tailExample ::
  (
    Maybe [a]
  , Maybe [Int]
  )
tailExample =
  (
    tail []
  , tail [1,2,3]
  )

-- |
--
-- >>> lastExample
-- (Nothing,Just 3)
lastExample ::
  (
    Maybe a
  , Maybe Int
  )
lastExample =
  (
    last []
  , last [1,2,3]
  )

-- |
--
-- >>> initExample
-- (Nothing,Just [1,2])
initExample ::
  (
    Maybe [a]
  , Maybe [Int]
  )
initExample =
  (
    init []
  , init [1,2,3]
  )

-- |
--
-- >>> indexExample
-- (Nothing,Just 'b',Nothing,Just 'a',Nothing,Nothing,Just 'c',Just 17)
indexExample :: 
  (
    Maybe a
  , Maybe Char
  , Maybe Char
  , Maybe Char
  , Maybe b
  , Maybe Char
  , Maybe Char
  , Maybe Int
  )
indexExample =
  (
    [] !! 1
  , ['a', 'b', 'c'] !! 1
  , ['a', 'b', 'c'] !! 5
  , Just 'a' !! ()
  , Nothing !! ()
  , ('a', 'b', 'c') !! 5
  , ('a', 'b', 'c') !! 2
  , (+10) !! 7
  )
