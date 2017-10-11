{ mkDerivation, base, papa-base-export, semigroups, stdenv }:
mkDerivation {
  pname = "papa-base-implement";
  version = "0.3.1";
  src = ./.;
  libraryHaskellDepends = [ base papa-base-export semigroups ];
  homepage = "https://github.com/qfpl/papa";
  description = "Useful base functions reimplemented";
  license = stdenv.lib.licenses.bsd3;
}
