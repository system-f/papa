{ mkDerivation, base, directory, doctest, filepath, lens
, QuickCheck, stdenv, template-haskell
}:
mkDerivation {
  pname = "papa-lens-implement";
  version = "0.3.0";
  src = ./.;
  libraryHaskellDepends = [ base lens ];
  testHaskellDepends = [
    base directory doctest filepath QuickCheck template-haskell
  ];
  homepage = "https://github.com/qfpl/papa";
  description = "useful `lens` functions reimplemented";
  license = stdenv.lib.licenses.bsd3;
}
