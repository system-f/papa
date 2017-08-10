{ mkDerivation, base, directory, doctest, filepath, QuickCheck
, semigroupoids, semigroups, stdenv, template-haskell
}:
mkDerivation {
  pname = "papa-semigroupoids-implement";
  version = "0.3.0";
  src = ./.;
  libraryHaskellDepends = [ base semigroupoids semigroups ];
  testHaskellDepends = [
    base directory doctest filepath QuickCheck template-haskell
  ];
  homepage = "https://github.com/qfpl/papa";
  description = "useful `semigroupoids` functions reimplemented";
  license = stdenv.lib.licenses.bsd3;
}
