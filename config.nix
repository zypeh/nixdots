{ pkgs, ... }:

{
    # https://nixos.org/manual/nixpkgs/stable/#sec-building-environment
    packageOverrides = pkg: with pkgs; {
        zypehPkgs = pkgs.buildEnv {
            name = "home-zypeh-pkgs";
            paths = [
                bat
                exa
                fish
            ];
            packages = with pkgs; [
                nixpkgs.emacsGcc
            ];
            pathsToLink = [ "/share" "/bin" ];
            extraOutputsToInstall = [ "man" "doc" ]; 
        };
    };
}
