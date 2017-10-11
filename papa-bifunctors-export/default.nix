{ mkDerivation, base, bifunctors, stdenv }:
mkDerivation {
  pname = "papa-bifunctors-export";
  version = "0.3.1";
  src = ./.;
  libraryHaskellDepends = [ base bifunctors ];
  homepage = "https://github.com/qfpl/papa";
  description = "export useful functions from `bifunctors`";
  license = stdenv.lib.licenses.bsd3;
}
