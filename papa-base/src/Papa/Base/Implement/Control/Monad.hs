{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Base.Implement.Control.Monad(
  anyM
, allM
, findM
) where

import Data.Bool(Bool(False, True))
import Data.Maybe(Maybe(Nothing, Just))
import Control.Monad(Monad(return))

anyM ::
  Monad m =>
  (a -> m Bool)
  -> [a]
  -> m Bool
anyM _ []     =
  return False
anyM f (a:as) =
  do z <- f a
     if z
       then return True
       else anyM f as

allM ::
  Monad m =>
  (a -> m Bool)
  -> [a]
  -> m Bool
allM _ []     =
  return True
allM f (a:as) =
  do z <- f a
     if z
       then allM f as
       else return False

-- | Find an element satisfying a predicate
findM ::
  Monad m =>
  (a -> m Bool)
  -> [a]
  -> m (Maybe a)
findM _ [] =
  return Nothing
findM f (x:xs) =
  do b <- f x
     if b
       then
         return (Just x)
       else
         findM f xs
