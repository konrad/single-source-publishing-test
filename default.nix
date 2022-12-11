let
  # pkgs = import <nixpkgs> {};
  # pkgs = import (builtins.fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-20.09.tar.gz") {};
  # pkgs = import (builtins.fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz") {};
  pkgs = import (builtins.fetchTarball("channel:nixos-22.05")) {};
  # pkgs = import (builtins.fetchTarball("channel:nixos-unstable")) {};

in
pkgs.mkShell {
    name = "simpleEnv";
    buildInputs = with pkgs; [
      python310Packages.mkdocs
    ];
   shellHook = ''
      '';
  }
