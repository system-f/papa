{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Lens.Implement.Data.Collapse(
  collapse0
, collapse1
, collapse2
, map0
, map1
, map2
, mapMaybe
, catMaybes
) where

import Control.Category((.))
import Control.Lens(AsEmpty(_Empty), Cons, cons, Getting, folded, foldrOf, ( # ))
import Data.Monoid(Endo)
import Data.Foldable(Foldable(foldr))
import Data.Functor(Functor(fmap))

collapse0 ::
 (Cons r r a a, AsEmpty r) =>
 Getting (Endo r) s a
 -> s
 -> r
collapse0 x =
  foldrOf x cons (_Empty # ())

collapse1 ::
  (Cons r r a a, AsEmpty r) =>
  Getting (Endo r) (Compose f g b) a
  -> f (g b)
  -> r
collapse1 x =
  collapse0 x . Compose

collapse2 ::
  (Cons r r a a, AsEmpty r) =>
  Getting (Endo r) (Compose (Compose f g) h b) a
  -> f (g (h b))
  -> r
collapse2 x =
  collapse1 x . Compose

map0 ::
  (Cons r r a a, AsEmpty r, Functor f) =>
  Getting (Endo r) (f c) a
  -> (b -> c)
  -> f b
  -> r
map0 x f =
  collapse0 x . fmap f

map1 ::
  (Cons r r a a, AsEmpty r, Functor f) =>
  Getting (Endo r) (Compose f g c) a
  -> (b -> g c)
  -> f b
  -> r
map1 x f =
  collapse1 x . fmap f

map2 ::
  (Cons r r a a, AsEmpty r, Functor f) =>
  Getting (Endo r) (Compose (Compose f g) h c) a
  -> (b -> g (h c))
  -> f b
  -> r
map2 x f =
  collapse2 x . fmap f

----

mapMaybe ::
  (Cons r r c c, AsEmpty r, Foldable f, Functor f, Foldable g) =>
  (b -> g c)
  -> f b
  -> r
mapMaybe = 
  map1 folded

catMaybes ::
  (Cons r r b b, AsEmpty r, Foldable f, Foldable g) =>
  f (g b)
  -> r
catMaybes =
  collapse1 folded
  
-- not exported

newtype Compose f g a =
  Compose (f (g a))

instance (Foldable f, Foldable g) => Foldable (Compose f g) where
  foldr f z (Compose x) =
    foldr (\a b -> foldr f b a) z x
