{ mkDerivation, base, directory, doctest, filepath
, papa-x-export, papa-x-implement
, QuickCheck, stdenv, template-haskell
}:
mkDerivation {
  pname = "papa-x";
  version = "0.2.0";
  src = ./.;
  libraryHaskellDepends = [
    base papa-x-export papa-x-implement
  ];
  testHaskellDepends = [
    base directory doctest filepath QuickCheck template-haskell
  ];
  homepage = "https://github.com/data61/papa";
  description = "Prelude with only useful functions";
  license = stdenv.lib.licenses.bsd3;
}
