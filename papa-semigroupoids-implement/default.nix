{ mkDerivation, base, directory, doctest, filepath, QuickCheck
, semigroups, semigroupoids, stdenv, template-haskell
}:
mkDerivation {
  pname = "papa-semigroupoids-implement";
  version = "0.2.0";
  src = ./.;
  libraryHaskellDepends = [ base semigroups semigroupoids ];
  testHaskellDepends = [
    base directory doctest filepath QuickCheck template-haskell
  ];
  homepage = "https://github.com/data61/papa-semigroupoids-implement";
  description = "useful `bifunctors` functions reimplemented";
  license = stdenv.lib.licenses.bsd3;
}
