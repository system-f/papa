{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Base.Export.Data.Monoid(
  module P  
) where

import Data.Monoid as P(
    Monoid(mempty, mappend)
  , Dual(getDual)
  , Endo(appEndo)
  , All(getAll)
  , Any(getAny)
  , Sum(getSum)
  , Product(getProduct)
  )
