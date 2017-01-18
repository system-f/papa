{ mkDerivation, base, directory, doctest, filepath
, papa-semigroupoids-export, papa-semigroupoids-implement
, QuickCheck, stdenv, template-haskell
}:
mkDerivation {
  pname = "papa-semigroupoids";
  version = "0.2.0";
  src = ./.;
  libraryHaskellDepends = [
    base papa-semigroupoids-export papa-semigroupoids-implement
  ];
  testHaskellDepends = [
    base directory doctest filepath QuickCheck template-haskell
  ];
  homepage = "https://github.com/data61/papa-semigroupoids";
  description = "Prelude with only useful functions";
  license = stdenv.lib.licenses.bsd3;
}
