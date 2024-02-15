{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    upx
    git
    lazygit
    license-generator
    git-ignore
    pass-git-helper
    just
    xh
    tgpt
    # mcfly # terminal history
    zellij
    progress
    noti
    topgrade
    ripgrep
    rewrk
    wrk2
    procs
    tealdeer
    # skim #fzf better alternative in rust
    monolith
    aria
    # macchina #neofetch alternative in rust
    sd
    ouch
    duf
    du-dust
    fd
    jq
    gh
    trash-cli
    zoxide
    tokei
    fzf
    bat
    mdcat
    pandoc
    lsd
    gping
    viu
    tre-command
    felix-fm
    chafa

    cmatrix
    pipes-rs
    rsclock
    cava
    figlet
    #mine
     #terminal utilities
    btop
    vim
    ripgrep
    zellij
    parallel
    atuin
    gitui
    ncdu
    wget
    curl
    bat
    php
    thefuck
    wavemon
    bottom
    zoxide
    browsh
    fd
    delta
    tokei
    kondo
    mprocs
    pkg-config
    tor
    nmap
    tor-browser-bundle-bin
    iftop
    lazygit
    gnupg
    parallel
    xsel
    distrobox
    zip
    unzip
    tree
    p7zip
    _7zz
    ranger
    curl
    appimage-run
    parallel
    acpi    
    wget
    btrfs-progs
       emacs
    neovim
    grsync
    fd
    flatpak
    gnome.gnome-software
  ];
}
