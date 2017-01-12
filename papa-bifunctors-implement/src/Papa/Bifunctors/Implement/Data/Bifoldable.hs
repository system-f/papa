{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Bifunctors.Implement.Data.Bifoldable( 
  biconcat
, biconcatMap
) where

import Data.Bifoldable(Bifoldable(bifold, bifoldMap))
import Data.Monoid(Monoid)

biconcat ::
  (Bifoldable p, Monoid m) =>
  p m m
  -> m
biconcat =
  bifold

biconcatMap ::
  (Bifoldable p, Monoid m) =>
  (a -> m)
  -> (b -> m)
  -> p a b
  -> m
biconcatMap =
  bifoldMap

