{
  description = "dragonblade316's configuration files";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.05";
    
    # Home manager
    hm = {
      url = "github:nix-community/home-manager/release-23.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
		
		nix-colors.url = "github:misterio77/nix-colors";

    hyprland = {
      url = "github:hyprwm/Hyprland";
      # build with your own instance of nixpkgs
      #inputs.nixpkgs.follows = "nixpkgs";
    };

		stylix.url = "github:danth/stylix";


  };

  outputs = inputs: 
    let
      system = "x86_64-linux";

      pkgs = import inputs.nixpkgs {
        inherit system;
				config.allowUnfree = true;
			};

    in {
    	homeConfigurations = import ./home/profiles {inherit pkgs inputs system; };
			nixosConfigurations = import ./hosts {inherit inputs system pkgs;};

			packages.${system} = {
	    	inherit pkgs;
			};
    };
	
}
