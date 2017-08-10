{ mkDerivation, base, bifunctors, directory, doctest, filepath
, QuickCheck, stdenv, template-haskell
}:
mkDerivation {
  pname = "papa-bifunctors-export";
  version = "0.3.0";
  src = ./.;
  libraryHaskellDepends = [ base bifunctors ];
  testHaskellDepends = [
    base directory doctest filepath QuickCheck template-haskell
  ];
  homepage = "https://github.com/qfpl/papa";
  description = "export useful functions from `bifunctors`";
  license = stdenv.lib.licenses.bsd3;
}
