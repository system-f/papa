{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Base.Implement.Data.Bool(
  if'
, (?.)
, (.?)
, (?<>)
, (<>?)
, (?<*>)
, (<*>?)
, (<||>)
, (<&&>)
) where

import Control.Applicative(Applicative(pure))
import Control.Category(Category(id))
import Control.Monad(Monad)
import Data.Bool(Bool(False, True), not)
import Data.Monoid

if' ::
  Bool
  -> a
  -> a
  -> a
if' True t _ =
  t
if' False _ f =
  f

(?.) ::
  Category c =>
  c a a
  -> Bool
  -> c a a
f ?. False =
  f
_ ?. True =
  id

(.?) ::
  Category c =>
  c a a
  -> Bool
  -> c a a
(.?) x y =
  (?.) x (not y)

(?<>) ::
  Monoid a =>
  a
  -> Bool
  -> a
f ?<> False =
  f
_ ?<> True =
  mempty

(<>?) ::
  Monoid a =>
  a
  -> Bool
  -> a
(<>?)  x y =
  (?<>) x (not y)

(?<*>) ::
  Applicative f =>
  (a -> f a)
  -> Bool
  -> a
  -> f a
f ?<*> False =
  f
_ ?<*> True =
  pure

(<*>?) ::
  Applicative f =>
  (a -> f a)
  -> Bool
  -> a
  -> f a
(<*>?) x y =
  (?<*>) x (not y)

(<||>) ::
  Monad m =>
  m Bool ->
  m Bool ->
  m Bool
p <||> q =
  do p' <- p
     if p'
       then
         pure True
       else
         q

(<&&>) ::
  Monad m =>
  m Bool ->
  m Bool ->
  m Bool
p <&&> q =
  do p' <- p
     if p'
       then
         q
       else
         pure False
