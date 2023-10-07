{pkgs, ...}: {

	#eventually all of this will probably be moved to other files as the config grows but for now this is a dumping ground
	home.packages = with pkgs; [
		libreoffice
		obsidian
		via #probably will not work until I reset udev rules
		vlc
		gparted
		wdisplays
		gnome.nautilus
		brave
	];
}
