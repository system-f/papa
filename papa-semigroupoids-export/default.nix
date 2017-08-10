{ mkDerivation, base, directory, doctest, filepath, QuickCheck
, semigroupoids, stdenv, template-haskell
}:
mkDerivation {
  pname = "papa-semigroupoids-export";
  version = "0.3.0";
  src = ./.;
  libraryHaskellDepends = [ base semigroupoids ];
  testHaskellDepends = [
    base directory doctest filepath QuickCheck template-haskell
  ];
  homepage = "https://github.com/qfpl/papa";
  description = "export useful functions from `semigroupoids`";
  license = stdenv.lib.licenses.bsd3;
}
