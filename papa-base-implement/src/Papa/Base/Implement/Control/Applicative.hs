{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Base.Implement.Control.Applicative(
  const
, replicateA
, replicateA_
) where

import Control.Applicative(Applicative(pure))
import Control.Monad (replicateM, replicateM_)

import Papa.Base.Export.Prelude (Int)

const ::
  Applicative f =>
  a
  -> f a
const =
  pure

replicateA :: Applicative f => Int -> f a -> f [a]
replicateA = replicateM

replicateA_ :: Applicative f => Int -> f a -> f () 
replicateA_= replicateM_
