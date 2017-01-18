{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Include.Data.List(
  maximum
, minimum
, (++)
, mappend
, foldr1
, foldl1
, foldl1'
, scanr
, scanl
, Semigroup
, Ord
, NonEmpty((:|))
) where
  
import Data.List.NonEmpty(NonEmpty((:|)), scanr, scanl)
import Data.Foldable(foldr, foldl, foldl')
import Data.Ord(Ord, max, min)
import Data.Semigroup(Semigroup((<>)))

maximum ::
  Ord a =>
  NonEmpty a
  -> a
maximum (h :| t) =
  foldr max h t

minimum ::
  Ord a =>
  NonEmpty a
  -> a
minimum (h :| t) =
  foldr min h t

(++) ::
  Semigroup a =>
  a
  -> a
  -> a
(++) =
  (<>)

infixr 5 ++
  
mappend ::
  Semigroup a =>
  a
  -> a
  -> a
mappend =
  (<>)

foldr1 ::
  (a -> a -> a)
  -> NonEmpty a
  -> a
foldr1 f (h :| t) =
  foldr f h t

foldl1 ::
  (a -> a -> a)
  -> NonEmpty a
  -> a
foldl1 f (h :| t) =
  foldl f h t

foldl1' ::
  (a -> a -> a)
  -> NonEmpty a
  -> a
foldl1' f (h :| t) =
  foldl' f h t
