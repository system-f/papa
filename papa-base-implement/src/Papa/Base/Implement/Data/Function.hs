{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Base.Implement.Data.Function(
  flip
) where

import Data.Functor(Functor(fmap))

flip ::
  Functor f =>
  f (a -> b)
  -> a
  -> f b
flip f a =
  fmap (\k -> k a) f
