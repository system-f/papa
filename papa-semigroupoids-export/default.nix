{ mkDerivation, base, directory, doctest, filepath, QuickCheck
, semigroupoids, stdenv, template-haskell
}:
mkDerivation {
  pname = "papa-semigroupoids-export";
  version = "0.2.0";
  src = ./.;
  libraryHaskellDepends = [ base semigroupoids ];
  testHaskellDepends = [
    base directory doctest filepath QuickCheck template-haskell
  ];
  homepage = "https://github.com/data61/papa-semigroupoids-export";
  description = "export useful functions from `semigroupoids`";
  license = stdenv.lib.licenses.bsd3;
}
