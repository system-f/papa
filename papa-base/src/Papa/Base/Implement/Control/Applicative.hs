{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Base.Implement.Control.Applicative(
  const
, replicateA
, replicateA_
) where

import Control.Applicative(Applicative(pure), liftA2, (*>))
import Control.Monad (replicateM, replicateM_)

import Papa.Base.Export.Prelude (Int, Maybe, IO, (-), (<=), otherwise)

const ::
  Applicative f =>
  a
  -> f a
const =
  pure

replicateA        :: (Applicative f) => Int -> f a -> f [a]
{-# INLINABLE replicateA #-}
{-# SPECIALISE replicateA :: Int -> IO a -> IO [a] #-}
{-# SPECIALISE replicateA :: Int -> Maybe a -> Maybe [a] #-}
replicateA cnt0 f =
    loop cnt0
  where
    loop cnt
        | cnt <= 0  = pure []
        | otherwise = liftA2 (:) f (loop (cnt - 1))

replicateA_       :: (Applicative f) => Int -> f a -> f ()
{-# INLINABLE replicateA_ #-}
{-# SPECIALISE replicateA_ :: Int -> IO a -> IO () #-}
{-# SPECIALISE replicateA_ :: Int -> Maybe a -> Maybe () #-}
replicateA_ cnt0 f =
    loop cnt0
  where
    loop cnt
        | cnt <= 0  = pure ()
        | otherwise = f *> loop (cnt - 1)
