{ mkDerivation, base, semigroups, stdenv }:
mkDerivation {
  pname = "papa-base-export";
  version = "0.3.1";
  src = ./.;
  libraryHaskellDepends = [ base semigroups ];
  homepage = "https://github.com/qfpl/papa";
  description = "Prelude with only useful functions";
  license = stdenv.lib.licenses.bsd3;
}
