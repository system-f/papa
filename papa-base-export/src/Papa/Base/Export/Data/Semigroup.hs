{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Base.Export.Data.Semigroup(
    Semigroup((<>), sconcat, stimes)
  , stimesMonoid
  , stimesIdempotent
  , stimesIdempotentMonoid
  , mtimesDefault
  , Min(getMin)
  , Max(getMax)
  , First(getFirst)
  , Last(getLast)
  , WrappedMonoid(unwrapMonoid)
  , Monoid(mempty, mappend)
  , Dual(getDual)
  , Endo(appEndo)
  , All(getAll)
  , Any(getAny)
  , Sum(getSum)
  , Product(getProduct)
  , Option(getOption)
  , option
  , diff
  , cycle1
  , WrappedMonoid(unwrapMonoid)
  , Arg(Arg)
  , ArgMin
  , ArgMax
) where

import Data.Semigroup (
    Semigroup((<>), sconcat, stimes)
  , stimesMonoid
  , stimesIdempotent
  , stimesIdempotentMonoid
  , mtimesDefault
  , Min(getMin)
  , Max(getMax)
  , First(getFirst)
  , Last(getLast)
  , WrappedMonoid(unwrapMonoid)
  , Monoid(mempty, mappend)
  , Dual(getDual)
  , Endo(appEndo)
  , All(getAll)
  , Any(getAny)
  , Sum(getSum)
  , Product(getProduct)
  , Option(getOption)
  , option
  , diff
  , cycle1
  , WrappedMonoid(unwrapMonoid)
  , Arg(Arg)
  , ArgMin
  , ArgMax
  )

