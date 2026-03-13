{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Base.Export.Data.Monoid(
    Monoid(mempty, mappend)
  , Dual(getDual)
  , Endo(appEndo)
  , All(getAll)
  , Any(getAny)
  , Sum(getSum)
  , Product(getProduct)
) where

import Data.Monoid (
    Monoid(mempty, mappend)
  , Dual(getDual)
  , Endo(appEndo)
  , All(getAll)
  , Any(getAny)
  , Sum(getSum)
  , Product(getProduct)
  )
