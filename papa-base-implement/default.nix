{ mkDerivation, base, directory, doctest, filepath
, papa-base-export, QuickCheck, semigroups, stdenv
, template-haskell
}:
mkDerivation {
  pname = "papa-base-implement";
  version = "0.3.0";
  src = ./.;
  libraryHaskellDepends = [ base papa-base-export semigroups ];
  testHaskellDepends = [
    base directory doctest filepath QuickCheck template-haskell
  ];
  homepage = "https://github.com/qfpl/papa";
  description = "Useful base functions reimplemented";
  license = stdenv.lib.licenses.bsd3;
}
