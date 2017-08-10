{ mkDerivation, base, directory, doctest, filepath
, papa-base-export, papa-base-implement, QuickCheck, stdenv
, template-haskell
}:
mkDerivation {
  pname = "papa-base";
  version = "0.3.0";
  src = ./.;
  libraryHaskellDepends = [
    base papa-base-export papa-base-implement
  ];
  testHaskellDepends = [
    base directory doctest filepath QuickCheck template-haskell
  ];
  homepage = "https://github.com/qfpl/papa";
  description = "Prelude with only useful functions";
  license = stdenv.lib.licenses.bsd3;
}
