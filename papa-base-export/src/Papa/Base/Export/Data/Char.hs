{-# LANGUAGE NoImplicitPrelude #-}

module Papa.Base.Export.Data.Char(
  module P
) where

import Data.Char as P(
    Char
  , isControl
  , isSpace
  , isLower
  , isUpper
  , isAlpha
  , isAlphaNum
  , isPrint
  , isDigit
  , isOctDigit
  , isHexDigit
  , isLetter
  , isMark
  , isNumber
  , isPunctuation
  , isSymbol
  , isSeparator
  , isAscii
  , isLatin1
  , isAsciiUpper
  , isAsciiLower
  , GeneralCategory(UppercaseLetter, LowercaseLetter, TitlecaseLetter, ModifierLetter, OtherLetter, NonSpacingMark, SpacingCombiningMark, EnclosingMark, DecimalNumber, LetterNumber, OtherNumber, ConnectorPunctuation, DashPunctuation, OpenPunctuation, ClosePunctuation, InitialQuote, FinalQuote, OtherPunctuation, MathSymbol, CurrencySymbol, ModifierSymbol, OtherSymbol, Space, LineSeparator, ParagraphSeparator, Control, Format, Surrogate, PrivateUse, NotAssigned)
  , toUpper
  , toLower
  , toTitle
  , ord
  , chr
  )

