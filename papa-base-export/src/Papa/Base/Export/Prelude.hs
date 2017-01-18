{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Base.Export.Prelude(
  module Prelude
) where

import Prelude as Prelude(
--  (!!)                       Papa.Prelude.Lens.Data.List
    Monad
  , encodeFloat
--, map                        Papa.Core.Data.Functor
--, scanr                      Papa.Prelude.Semigroups.Data.List
  , ($)
  , Monoid 
--, enumFrom
--, mapM                       Papa.Core.Data.Traversable
--, scanr1
--, ($!) 
--, enumFromThen
--, mapM_                      Papa.Core.Data.Foldable
--, seq
  , (&&)
  , Num 
--, enumFromThenTo
--, mappend                    Papa.Prelude.Semigroups.Data.List
--, sequence                   Papa.Core.Data.Traversable
  , (*)
  , Ord 
--, enumFromTo
  , max 
  , sequenceA
  , (**)
  , Ordering(
      LT
    , EQ
    , GT
    )
--, error 
--, maxBound
--, sequence_                  Papa.Core.Data.Foldable
--, (*>)                       Papa.Prelude.Semigroupoids.Data.Functor.Bind
  , Rational
--, errorWithoutStackTrace
--, maximum                    Papa.Prelude.Semigroups.Data.List
  , show
  , (+) 
--, Read 
  , even 
  , maybe 
--, showChar
--, (++)                       Papa.Prelude.Semigroups.Data.List
--, ReadS 
  , exp 
--, mconcat                    Papa.Core.Data.Monoid
--, showList
  , (-) 
  , Real 
  , exponent
  , mempty 
  , showParen
--, (.)                        Papa.Prelude.Semigroupoids.Data.Semigroupoid
  , RealFloat
--, fail 
  , min 
--, showString
  , (/) 
--, RealFrac
  , filter 
--, minBound
  , shows
  , (/=) 
--, flip                       Papa.Core.Data.Functor
--, minimum                    Papa.Prelude.Semigroups.Data.List
  , showsPrec
  , (<) 
  , Show 
  , floatDigits
  , mod 
  , significand
  , (<$) 
  , ShowS 
  , floatRadix
  , negate 
  , signum
  , (<$>)
--, String 
  , floatRange
  , not 
  , sin
--, (<*)                       Papa.Prelude.Semigroupoids.Data.Functor.Bind
  , Traversable
  , floor 
  , notElem 
  , sinh
  , (<*>)
  , fmap 
  , null 
--, snd                        Papa.Prelude.Lens.Data.Tuple
  , (<=)
  , Word 
  , foldMap 
  , odd 
  , span
--, (=<<)                      Papa.Prelude.Semigroupoids.Data.Functor.Bind
  , (^)
  , foldl
--, or 
  , splitAt
  , (==) 
  , (^^) 
--, foldl1                     Papa.Prelude.Semigroups.Data.List 
  , otherwise
  , sqrt
  , (>) 
  , abs 
  , foldr 
  , pi 
  , subtract
  , (>=) 
  , acos 
--, foldr1                     Papa.Prelude.Semigroups.Data.List
--, pred 
--, succ
--, (>>)                       Papa.Prelude.Semigroupoids.Data.Functor.Apply
  , acosh 
--, fromEnum
--, print 
  , sum
--, (>>=)                      Papa.Prelude.Semigroupoids.Data.Functor.Bind
  , all 
  , fromInteger
  , product 
--, tail                       Papa.Prelude.Lens.Data.List
  , Applicative
  , and 
  , fromIntegral
  , properFraction
  , take
  , Bool(
      False
    , True
    ) 
  , any 
  , fromRational
  , pure 
  , takeWhile
--, Bounded 
  , appendFile
--, fst                        Papa.Prelude.Lens.Data.Tuple
  , putChar 
  , tan
  , Char 
--, asTypeOf
  , gcd 
  , putStr 
  , tanh
  , Double 
  , asin 
  , getChar 
  , putStrLn
--, toEnum
  , asinh 
  , getContents
  , quot 
  , toInteger
  , Either(
      Left
    , Right
    ) 
  , atan 
  , getLine 
  , quotRem 
  , toRational
  , Enum 
  , atan2 
--, head                       Papa.Prelude.Lens.Data.List 
--, read 
  , traverse
  , Eq 
  , atanh 
--, id                         Papa.Core.Control.Category
  , readFile
  , truncate
  , break 
--, init                       Papa.Prelude.Lens.Data.List
  , readIO 
  , uncurry
  , FilePath
  , ceiling 
  , interact
--, readList
--, undefined
  , Float 
  , compare 
  , ioError 
--, readLn 
  , unlines
  , Floating
--, concat                     Papa.Prelude.Semigroupoids.Data.Functor.Bind
  , isDenormalized
--, readParen
  , until
  , Foldable
--, concatMap                  Papa.Prelude.Semigroupoids.Data.Functor.Bind
  , isIEEE 
--, reads 
  , unwords
  , Fractional
--, const                      Papa.Core.Control.Applicative
  , isInfinite
--, readsPrec
--, unzip                      Papa.Core.Data.Functor
  , Functor
  , cos 
  , isNaN 
  , realToFrac
  , unzip3
  , cosh 
  , isNegativeZero
  , recip 
--, userError
  , IO 
  , curry 
--, iterate 
  , rem 
  , words
  , IOError 
  , cycle 
--, last                       Papa.Prelude.Lens.Data.List
--, repeat 
  , writeFile
  , Int 
  , decodeFloat
  , lcm 
  , replicate
  , zip
  , Integer 
--, div 
--, length 
--, return                     Papa.Core.Control.Applicative
  , zip3
  , Integral
  , divMod
--, lex 
--, reverse                    Papa.Core.Data.List
  , zipWith
  , drop 
  , lines 
  , round 
  , zipWith3
  , dropWhile
  , log 
  , scaleFloat
  , (||)
  , either 
  , logBase 
--, scanl                      Papa.Prelude.Semigroups.Data.List
  , Maybe(
      Nothing
    , Just
    ) 
  , elem 
--, lookup                     Papa.Core.Data.List
--, scanl1
 ) 
