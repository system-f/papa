{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Base.Export.Data.Foldable(
  module P
) where

import Data.Foldable as P(
    Foldable(fold, foldMap, foldr, foldr', foldl, foldl', toList, null, elem, sum, product)
  , foldrM
  , foldlM
  , traverse_
  , for_
  , sequenceA_
  , asum
  , and
  , or
  , any
  , all
  , notElem
  , find
  )
