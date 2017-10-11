{ mkDerivation, base, stdenv }:
mkDerivation {
  pname = "papa-x-implement";
  version = "0.3.1";
  src = ./.;
  libraryHaskellDepends = [ base ];
  homepage = "https://github.com/qfpl/papa";
  description = "useful functions reimplemented";
  license = stdenv.lib.licenses.bsd3;
}
