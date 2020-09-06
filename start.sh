mkdir -p ~/.config/nixpkgs
ln -s overlays ~/.config/nixpkgs/overlays
ln -s config.nix ~/.config/nixpkgs/config.nix

# https://nixos.org/manual/nixpkgs/stable/#sec-building-environment
nix-env -iA nixpkgs.zypehPkgs

# Emacs
nix-env -iA nixkpgs.emacsGcc
