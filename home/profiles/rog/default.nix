{
    imports = [
      ../../programs/git.nix
      ../../programs/misc.nix
      ../../themeing.nix
      ../../wayland/hypr
			../../wayland/waybar.nix
			#../../wayland/swaylock.nix
			../../terminals/kitty.nix
			../../programs/mako.nix
			# ../../editors/vscode
			#../../editors/intellij-idea
			../../programs/3d.nix
			../../programs/art.nix
			../../programs/comms.nix
			../../programs/games.nix
			../../programs/misc.nix
    ];

    wayland.windowManager.hyprland.enableNvidiaPatches = true;
}
