{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Base.Implement.Control.Applicative(
  const
) where

import Control.Applicative(Applicative(pure))

const ::
  Applicative f =>
  a
  -> f a
const =
  pure

