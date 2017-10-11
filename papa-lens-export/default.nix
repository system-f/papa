{ mkDerivation, base, lens, stdenv }:
mkDerivation {
  pname = "papa-lens-export";
  version = "0.3.1";
  src = ./.;
  libraryHaskellDepends = [ base lens ];
  homepage = "https://github.com/qfpl/papa";
  description = "export useful functions from `lens`";
  license = stdenv.lib.licenses.bsd3;
}
