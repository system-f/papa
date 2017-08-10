{ mkDerivation, base, directory, doctest, filepath
, papa-lens-export, papa-lens-implement, QuickCheck, stdenv
, template-haskell
}:
mkDerivation {
  pname = "papa-lens";
  version = "0.3.0";
  src = ./.;
  libraryHaskellDepends = [
    base papa-lens-export papa-lens-implement
  ];
  testHaskellDepends = [
    base directory doctest filepath QuickCheck template-haskell
  ];
  homepage = "https://github.com/qfpl/papa";
  description = "Prelude with only useful functions";
  license = stdenv.lib.licenses.bsd3;
}
