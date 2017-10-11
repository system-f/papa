{ mkDerivation, base, stdenv }:
mkDerivation {
  pname = "papa-x-export";
  version = "0.3.1";
  src = ./.;
  libraryHaskellDepends = [ base ];
  homepage = "https://github.com/qfpl/papa";
  description = "export useful functions";
  license = stdenv.lib.licenses.bsd3;
}
