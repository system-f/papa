{ mkDerivation, base, directory, doctest, filepath, QuickCheck
, semigroups, stdenv, template-haskell
}:
mkDerivation {
  pname = "papa-base-export";
  version = "0.3.0";
  src = ./.;
  libraryHaskellDepends = [ base semigroups ];
  testHaskellDepends = [
    base directory doctest filepath QuickCheck template-haskell
  ];
  homepage = "https://github.com/qfpl/papa";
  description = "Prelude with only useful functions";
  license = stdenv.lib.licenses.bsd3;
}
