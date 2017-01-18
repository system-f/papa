{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Include.Data.Functor.Bind(
  concat
, concatMap
, (>>=)
, (=<<)
, Bind
) where

import Data.Functor.Bind(Bind((>>-)), (-<<), join)

concat ::
  Bind f =>
  f (f a)
  -> f a
concat =
  join

concatMap ::
  Bind f =>
  (a -> f b)
  -> f a
  -> f b
concatMap =
  (-<<)

(>>=) ::
  Bind f =>
  f a
  -> (a -> f b)
  -> f b
(>>=) =
  (>>-)

infixl 1 >>=

(=<<) ::
  Bind f =>
  (a -> f b)
  -> f a
  -> f b
(=<<) =
  (-<<)

infixr 1 =<<

