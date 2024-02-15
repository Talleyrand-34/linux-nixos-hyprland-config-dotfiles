{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    slack
    aws-sam-cli
    awscli2
    cargo-lambda
    gnumake
        #owntools
    qbittorrent
    nextcloud-client
    telegram-desktop
    logseq
    keepassxc
    anki
    librewolf
        dbeaver
    lutris
    filezilla
    vlc
    networkmanagerapplet
    rclone
    emacs
    grsync
    fd
    flatpak
    gnome.gnome-software
    photoqt
# support both 32- and 64-bit applications
    wineWowPackages.stable

    # support 32-bit only
    wine

    # support 64-bit only
    (wine.override { wineBuild = "wine64"; })

    # wine-staging (version with experimental features)
    wineWowPackages.staging

    # winetricks (all versions)
    winetricks

    # native wayland support (unstable)
    wineWowPackages.waylandFull
    obs-studio
    firefox
    chromium
  ];
}
