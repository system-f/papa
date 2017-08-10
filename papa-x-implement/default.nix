{ mkDerivation, base, directory, doctest, filepath, QuickCheck
, stdenv, template-haskell
}:
mkDerivation {
  pname = "papa-x-implement";
  version = "0.3.0";
  src = ./.;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [
    base directory doctest filepath QuickCheck template-haskell
  ];
  homepage = "https://github.com/qfpl/papa";
  description = "useful functions reimplemented";
  license = stdenv.lib.licenses.bsd3;
}
