{ mkDerivation, base, directory, doctest, filepath, lens
, QuickCheck, semigroupoids, semigroups, stdenv, template-haskell
}:
mkDerivation {
  pname = "papa-include";
  version = "0.1.0";
  src = ./.;
  libraryHaskellDepends = [ base lens semigroupoids semigroups ];
  testHaskellDepends = [
    base directory doctest filepath QuickCheck template-haskell
  ];
  homepage = "https://github.com/data61/papa-include";
  description = "Third party libraries";
  license = stdenv.lib.licenses.bsd3;
}
