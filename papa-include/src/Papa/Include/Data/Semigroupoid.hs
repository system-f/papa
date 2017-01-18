{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Include.Data.Semigroupoid(
  (.)
, Semigroupoid
) where

import Data.Semigroupoid(Semigroupoid(o))

(.) ::
  Semigroupoid cat =>
  cat b c
  -> cat a b
  -> cat a c
(.) =
  o

infixr 9 .

