{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Base.Export.Control.Monad(
    Functor(fmap)
  , Monad((>>=), return, (>>))
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
) where

import Control.Monad (
    Functor(fmap)
  , Monad((>>=), return, (>>))
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
