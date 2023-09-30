{
  inputs,
  system,
  pkgs,
  ...
}:

with inputs;

let 

    imports = [
    #  hyprland.nixosModules.${system}.hm
    ];
    sharedModules = [
      ../.
      ../shell
      ../editors/neovim
			#inputs.hyprland.homeManagerModules.default
			#inputs.nix-colors.homeManagerModules.default
			inputs.stylix.homeManagerModules.stylix
    ];

    homeImports = {
      dragonblade316 = [./rog] ++ sharedModules ++ imports;
    };

		inherit (inputs.nix-colors) colors;

    mkHome = {conf}: (
			hm.lib.homeManagerConfiguration {
			inherit pkgs;
			modules = [conf] ++ sharedModules ++ imports;
		});


in {
  dragonblade316 = mkHome { conf = ./rog; };
  	

}
