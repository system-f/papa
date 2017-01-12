{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Lens.Implement.Data.Tuple(
  fst
, snd
) where

import Control.Lens(Field1, Field2, _1, _2, (^.))

fst ::
  Field1 s s b b =>
  s
  -> b
fst =
  (^. _1)

snd ::
  Field2 s s b b =>
  s
  -> b
snd =
  (^. _2)
  