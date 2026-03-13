{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Semigroupoids.Implement.Data.Semigroup.Foldable(
  maximum
, minimum
) where

import Control.Category((.))
import Data.Ord(Ord(max, min))
import Data.Semigroup.Foldable
import Data.Semigroup(Max(Max, getMax), Min(Min, getMin))

maximum ::
  (Ord a, Foldable1 f) =>
  f a
  -> a
maximum =
  getMax . foldMap1 Max

minimum ::
  (Ord a, Foldable1 f) =>
  f a
  -> a
minimum =
  getMin . foldMap1 Min
