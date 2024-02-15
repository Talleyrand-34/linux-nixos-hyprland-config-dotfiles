{ pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.asada = {
    isNormalUser = true;
    description = "asada";
    extraGroups = [ "networkmanager" "input" "wheel" "video" "audio" "tss" ];
    shell = pkgs.fish;
    packages = with pkgs; [
      spotify
      youtube-music
      discord
      tdesktop
      vscode
      brave
    ];
  };

  # Change runtime directory size
  services.logind.extraConfig = "RuntimeDirectorySize=8G";
}
