{
  description = "owebboy's nix config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-24.05-darwin";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixpkgs-firefox-darwin.url = "github:bandithedoge/nixpkgs-firefox-darwin";

    nixvim = {
      url = "github:nix-community/nixvim/nixos-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-darwin = {
      url = "github:lnl7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    fenix = {
      url = "github:nix-community/fenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nix-darwin,
    home-manager,
    fenix,
    ...
  } @ inputs: let
    system = "aarch64-darwin"; # or "x86_64-darwin" if you're on Intel
  in {
    packages.${system}.default = fenix.packages.${system}.minimal.toolchain;
    darwinConfigurations."Olivers-MacBook-Air" = nix-darwin.lib.darwinSystem {
      inherit system;
      modules = [
        ./darwin-configuration.nix
        home-manager.darwinModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.oliver = import ./home.nix;
          home-manager.extraSpecialArgs = {inherit inputs;};
        }
      ];
      specialArgs = {inherit inputs;};
    };
  };
}
