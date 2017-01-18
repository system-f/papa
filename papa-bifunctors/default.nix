{ mkDerivation, base, directory, doctest, filepath
, papa-bifunctors-export, papa-bifunctors-implement, QuickCheck
, stdenv, template-haskell
}:
mkDerivation {
  pname = "papa-bifunctors";
  version = "0.2.0";
  src = ./.;
  libraryHaskellDepends = [
    base papa-bifunctors-export papa-bifunctors-implement
  ];
  testHaskellDepends = [
    base directory doctest filepath QuickCheck template-haskell
  ];
  homepage = "https://github.com/data61/papa-bifunctors";
  description = "Prelude with only useful functions";
  license = stdenv.lib.licenses.bsd3;
}
