let
  flakePath = "/home/dragonblade316/Programming/nixos_config/";
    
in {
  home.shellAliases = {
    server = "ssh dragonblade317@192.168.0.199";
    nixconf = "nvim ${flakePath}"; #sudo -E -s nvim /etc/nixos/configuration.nix";
    nixrebuild = "sudo nixos-rebuild switch --flake ${flakePath}#rog"; #sudo nixos-rebuild switch";
    homerebuild = "home-manager switch --flake ${flakePath}";
		nixp = "cd ${flakePath}"

  };
}
