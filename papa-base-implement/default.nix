{ mkDerivation, base, directory, doctest, filepath, QuickCheck
, semigroups, stdenv, template-haskell
}:
mkDerivation {
  pname = "papa-base-implement";
  version = "0.2.0";
  src = ./.;
  libraryHaskellDepends = [ base semigroups ];
  testHaskellDepends = [
    base directory doctest filepath QuickCheck template-haskell
  ];
  homepage = "https://github.com/data61/papa-base-implement";
  description = "Useful base functions reimplemented";
  license = stdenv.lib.licenses.bsd3;
}
