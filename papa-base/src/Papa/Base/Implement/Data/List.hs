{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Base.Implement.Data.List(
  lookup
, (++)
) where

import Data.Foldable(Foldable(foldr))
import Data.Eq(Eq((==)))
import Data.Semigroup(Semigroup((<>)))
import Data.Maybe(Maybe(Nothing, Just))

lookup ::
  (Eq a, Foldable f) =>
  a
  -> f (a, b)
  -> Maybe b
lookup a =
  foldr (\(x, y) b -> if x == a then Just y else b) Nothing

(++) ::
  Semigroup a =>
  a
  -> a
  -> a
(++) =
  (<>)
