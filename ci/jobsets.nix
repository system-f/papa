{ nixpkgs, declInput }: let pkgs = import nixpkgs {}; in {
  jobsets = pkgs.runCommand "spec.json" {} ''
    cat <<EOF
    ${builtins.toXML declInput}
    EOF
    cat > $out <<EOF
    {
        "papa": {
            "enabled": 1,
            "hidden": false,
            "description": "Papa",
            "nixexprinput": "papa",
            "nixexprpath": "./ci/ci.nix",
            "checkinterval": 300,
            "schedulingshares": 1,
            "enableemail": false,
            "emailoverride": "",
            "keepnr": 5,
            "inputs": {
                "papa": { "type": "git", "value": "https://github.com/qfpl/papa.git master", "emailresponsible": false },
                "nixpkgs": { "type": "git", "value": "https://github.com/NixOS/nixpkgs.git release-17.09", "emailresponsible": false }
            }
        }
    }
    EOF
  '';
}
