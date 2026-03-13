{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Base.Implement.Data.Functor(
  map
) where

import Data.Functor(Functor(fmap))

map ::
  Functor f =>
  (a -> b)
  -> f a
  -> f b
map =
  fmap
