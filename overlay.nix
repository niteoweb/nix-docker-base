_: pkgs: {
  # lib stuff can be in the top-level
  buildCLIImage = pkgs.callPackage ./lib/buildCLIImage.nix {};

  # docker images must be lower-cased
  docker-nixpkgs = rec {

    bash = pkgs.callPackage ./bash {};
    busybox = pkgs.callPackage ./busybox {};
    curl = pkgs.callPackage ./curl {};
    docker-compose = pkgs.callPackage ./docker-compose {};
    kubectl = pkgs.callPackage ./kubectl {};
    kubernetes-helm = pkgs.callPackage ./kubernetes-helm {};
    nix = pkgs.callPackage ./nix {};
    nix-unstable = nix.override {
      nix = pkgs.nixUnstable;
    };

  };
}
