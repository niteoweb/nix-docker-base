let
  sources = import ./sources.nix;
  pkgs = import sources.nixpkgs {
    config = {};
    overlays = [ (import ../overlay.nix) ];
  };
in {
  inherit pkgs;
}
