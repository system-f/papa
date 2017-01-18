{ mkDerivation, base, bifunctors, directory, doctest, filepath
, QuickCheck, stdenv, template-haskell
}:
mkDerivation {
  pname = "papa-bifunctors-implement";
  version = "0.2.0";
  src = ./.;
  libraryHaskellDepends = [ base bifunctors ];
  testHaskellDepends = [
    base directory doctest filepath QuickCheck template-haskell
  ];
  homepage = "https://github.com/data61/papa-bifunctors-implement";
  description = "useful `bifunctors` functions reimplemented";
  license = stdenv.lib.licenses.bsd3;
}
