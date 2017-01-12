{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Base.Export.Data.Functor(
  module P
) where

import Data.Functor as P(
    Functor(fmap, (<$))
  , ($>)
  , (<$>)
  , void
  )
