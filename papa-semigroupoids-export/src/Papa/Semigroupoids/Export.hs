{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Semigroupoids.Export( 
  Bifunctor(bimap, first, second), Biapply((<<.>>), (.>>), (<<.)), (<<$>>), (<<..>>), bilift2, bilift3,
  Alt((<!>)),
  Apply((<.>), (.>), (<.)), (<..>), liftF2, liftF3, WrappedApplicative(unwrapApplicative), MaybeApply(runMaybeApply),
  Bind((>>-), join), (-<<), (-<-), (->-), apDefault, returning,
  BindTrans(liftB),
  Extend(duplicated, extended),
  Plus(zero),
  Groupoid(inv),
  Bifoldable1(bifold1, bifoldMap1), bitraverse1_, bifor1_, bisequenceA1_, bifoldMapDefault1,
  Bitraversable1(bitraverse1, bisequence1), bifoldMap1Default,
  Foldable1(fold1, foldMap1), intercalate1, intercalateMap1, traverse1_, for1_, sequenceA1_, foldMapDefault1, asum1,
  Traversable1(traverse1, sequence1), foldMap1Default,
  Semigroupoid(o), WrappedCategory(unwrapCategory), Semi(getSemi),
  Ob(semiid),
  Static(runStatic)
) where

import Data.Bifunctor.Apply (Bifunctor(bimap, first, second), Biapply((<<.>>), (.>>), (<<.)), (<<$>>), (<<..>>), bilift2, bilift3)
import Data.Functor.Alt (Alt((<!>)))
import Data.Functor.Apply (Apply((<.>), (.>), (<.)), (<..>), liftF2, liftF3, WrappedApplicative(unwrapApplicative), MaybeApply(runMaybeApply))
import Data.Functor.Bind (Bind((>>-), join), (-<<), (-<-), (->-), apDefault, returning)
import Data.Functor.Bind.Trans (BindTrans(liftB))
import Data.Functor.Extend (Extend(duplicated, extended))
import Data.Functor.Plus (Plus(zero))
import Data.Groupoid (Groupoid(inv))
import Data.Semigroup.Bifoldable (Bifoldable1(bifold1, bifoldMap1), bitraverse1_, bifor1_, bisequenceA1_, bifoldMapDefault1)
import Data.Semigroup.Bitraversable (Bitraversable1(bitraverse1, bisequence1), bifoldMap1Default)
import Data.Semigroup.Foldable (Foldable1(fold1, foldMap1), intercalate1, intercalateMap1, traverse1_, for1_, sequenceA1_, foldMapDefault1, asum1)
import Data.Semigroup.Traversable (Traversable1(traverse1, sequence1), foldMap1Default)
import Data.Semigroupoid (Semigroupoid(o), WrappedCategory(unwrapCategory), Semi(getSemi))
import Data.Semigroupoid.Ob (Ob(semiid))
import Data.Semigroupoid.Static (Static(runStatic))
