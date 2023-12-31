{config, pkgs, ...}: 
let
	#wallpaper = ./wallpapers/sans.png;
	wallpaper = ./wallpapers/cat_bunnies.png;


in {  
	stylix = {
		image = wallpaper;
		polarity = "dark";
		#autoEnable = true;
		opacity.terminal = 0.5;

		cursor = {
			package = pkgs.catppuccin-cursors;
			name = "macchiatoDark";
		};

		fonts = {
          serif = {
              package = pkgs.nerdfonts;
              name = "FiraCode Nerd Font Mono";
          };
          sansSerif = {
              package = pkgs.nerdfonts;
              name = "FiraCode Nerd Font Mono";
          };
          monospace = {
              package = pkgs.nerdfonts;
              name = "FiraCode Nerd Font Mono";
          };
          sizes = {
              desktop = 12;
              applications = 15;
              terminal = 15;
              popups = 12;
          };
      };
	};

	stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-macchiato.yaml";


	#wallpaper stuff
	home = {
		file.".config/hypr/hyprpaper.conf".text = ''
				preload = ${wallpaper}
				wallpaper = HDMI-A-1, ${wallpaper} 
				wallpaper = eDP-1, ${wallpaper}
				wallpaper = DP-3, ${wallpaper}
			'';
		
		packages = with pkgs; [
			hyprpaper
		];
	};
}
