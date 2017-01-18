with import <nixpkgs> { };

let
  ghcWithPapa =
    (haskellPackages.override {
       overrides = self: super: import ./. self;
    }).ghcWithPackages (p: [ p.papa ]);
in
runCommand "papa-shell" {
  buildInputs = [ ghcWithPapa ];
} ""
