{pkgs, ...}: {
  home.packages = with pkgs; [
    discord
		gtkcord4
		steam
  ];
}
