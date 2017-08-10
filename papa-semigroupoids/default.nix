{ mkDerivation, base, directory, doctest, filepath
, papa-semigroupoids-export, papa-semigroupoids-implement
, QuickCheck, stdenv, template-haskell
}:
mkDerivation {
  pname = "papa-semigroupoids";
  version = "0.3.0";
  src = ./.;
  libraryHaskellDepends = [
    base papa-semigroupoids-export papa-semigroupoids-implement
  ];
  testHaskellDepends = [
    base directory doctest filepath QuickCheck template-haskell
  ];
  homepage = "https://github.com/qfpl/papa";
  description = "Prelude with only useful functions";
  license = stdenv.lib.licenses.bsd3;
}
