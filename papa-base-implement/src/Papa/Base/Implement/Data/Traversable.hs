{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Base.Implement.Data.Traversable(
  mapM
, forM
, sequence
) where

import Control.Applicative(Applicative)
import Data.Traversable(Traversable(traverse, sequenceA))

mapM ::
  (Traversable t, Applicative f) =>
  (a -> f b)
  -> t a
  -> f (t b)
mapM =
  traverse

forM ::
  (Traversable t, Applicative f) =>
  t a
  -> (a -> f b)
  -> f (t b)
forM a f =
  traverse f a

sequence ::
  (Traversable t, Applicative f) =>
  t (f a)
  -> f (t a)
sequence =
  sequenceA
