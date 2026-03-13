{-# OPTIONS_GHC -Wall #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Base.Export.Data.Either(
    Either(Left, Right)
  , either
  , isLeft
  , isRight
  , partitionEithers
) where

import Data.Either (
    Either(Left, Right)
  , either
  , isLeft
  , isRight
  , partitionEithers
  )
