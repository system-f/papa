{ supportedSystems ? ["x86_64-linux"]
, supportedCompilers ? [ "ghc802" "ghc822" "ghc843" ] 
, papaPackages ? [
    "papa-example"
    "papa"
    "papa-base"
    "papa-base-export"
    "papa-base-implement"
    "papa-bifunctors"
    "papa-bifunctors-export"
    "papa-bifunctors-implement"
    "papa-lens"
    "papa-lens-implement"
    "papa-lens-export"
    "papa-semigroupoids"
    "papa-semigroupoids-implement"
    "papa-semigroupoids-export"
    "papa-x"
    "papa-x-implement"
    "papa-x-export"
    ]
}:

with (import <nixpkgs/pkgs/top-level/release-lib.nix> { inherit supportedSystems; });

let
  pkgs = import <nixpkgs> {};

  configurations = 
    pkgs.lib.listToAttrs (
      pkgs.lib.concatMap (papaPackage: 
        pkgs.lib.concatMap (compiler: 
          pkgs.lib.concatMap (system: 
            [{name = "haskell-packages-" + compiler + "-" + papaPackage + "-" + system ; value = {inherit papaPackage compiler system;};}]
          ) supportedSystems
        ) supportedCompilers
      ) papaPackages
    );

  jobs =
      pkgs.lib.mapAttrs (name: configuration: 
          let
            papaPackage = configuration.papaPackage;
            compiler = configuration.compiler; 
            system = configuration.system; 
            pkgs = pkgsFor system;
            jailbreakLatest = p: if compiler == "ghc821" then pkgs.haskell.lib.doJailbreak p else p;
            haskellPackages = pkgs.haskell.packages.${compiler}.override { 
              overrides = self: super: (import ../. self);
            };
            pkg = haskellPackages.callPackage (../. + "/${papaPackage}/") {};
          in
            pkg
      ) configurations;
in
  jobs
