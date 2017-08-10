{ mkDerivation, base, directory, doctest, filepath, papa-x-export
, papa-x-implement, QuickCheck, stdenv, template-haskell
}:
mkDerivation {
  pname = "papa-x";
  version = "0.3.0";
  src = ./.;
  libraryHaskellDepends = [ base papa-x-export papa-x-implement ];
  testHaskellDepends = [
    base directory doctest filepath QuickCheck template-haskell
  ];
  homepage = "https://github.com/qfpl/papa";
  description = "Prelude with only useful functions";
  license = stdenv.lib.licenses.bsd3;
}
