{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Base.Export.Control.Monad(
  module P
) where

import Control.Monad as P(
    Functor(fmap)
  , Monad((>>=))
  , MonadPlus(mzero, mplus)
  , forever
  , void
  , msum
  , mfilter
  , filterM
  , foldM
  , foldM_
  , replicateM
  , replicateM_
  , guard
  , when
  , unless
  , (<$!>)
  )

