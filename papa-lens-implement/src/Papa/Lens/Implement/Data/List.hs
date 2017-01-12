{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Lens.Implement.Data.List where

import Control.Lens(Cons, Snoc, Ixed, Index, IxValue, (^?), ix, _head, _tail, _last, _init)
import Data.Maybe(Maybe)

head ::
  Cons s s a a =>
  s
  -> Maybe a
head =
  (^? _head)

tail ::
  Cons s s a a =>
  s
  -> Maybe s
tail =
  (^? _tail)

last ::
  Snoc s s a a =>
  s
  -> Maybe a
last =
  (^? _last)

init ::
  Snoc s s a a =>
  s
  -> Maybe s
init =
  (^? _init)

(!!) ::
  Ixed s =>
  s
  -> Index s
  -> Maybe (IxValue s)
q !! n =
  q ^? ix n

infixl 9 !!

