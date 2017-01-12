{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Base.Export.Data.Either(
  module P
) where

import Data.Either as P(
    Either(Left, Right)
  , either
  , isLeft
  , isRight
  , partitionEithers
  )

