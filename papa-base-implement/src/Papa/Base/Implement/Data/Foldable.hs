{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Base.Implement.Data.Foldable(
  mapM_
, forM_
, sequence_
) where

import Control.Applicative(Applicative)
import Data.Foldable(Foldable, traverse_, sequenceA_)

mapM_ ::
  (Foldable t, Applicative f) =>
  (a -> f b)
  -> t a
  -> f ()
mapM_ =
  traverse_

forM_ ::
  (Foldable t, Applicative m) =>
  t a
  -> (a -> m b)
  -> m ()
forM_ a f =
  mapM_ f a
  
sequence_ ::
  (Foldable t, Applicative f) =>
  t (f a)
  -> f ()
sequence_ =
  sequenceA_
