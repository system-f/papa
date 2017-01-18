{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Base.Export.Data.List.NonEmpty(
  module P
) where

import Data.List.NonEmpty as P(
    NonEmpty((:|))
  , scanl
  , scanr
  , scanl1
  , scanr1
  , inits
  , tails
  , iterate
  , repeat
  , unfold
  , insert
  , some1
  , group
  , groupBy
  , groupWith
  , groupAllWith
  , group1
  , groupBy1
  , groupWith1
  , groupAllWith1
  , nonEmpty
  , xor
  )
