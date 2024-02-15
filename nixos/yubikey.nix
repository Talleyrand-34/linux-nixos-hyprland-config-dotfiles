{ pkgs, ...}:

{
  services.udev.packages = [ pkgs.yubikey-personalization ];

  programs.gnupg.agent = {
    enable = false;
    enableSSHSupport = false;
  };

  # FIXME Don't forget to create an authorization mapping file for your user (https://nixos.wiki/wiki/Yubikey#pam_u2f)
  security.pam.u2f = {
    enable = false;
    cue = false;
    control = "sufficient";
  };

  security.pam.services = {
    greetd.u2fAuth = false;
    sudo.u2fAuth = false;
    swaylock.u2fAuth = false;
  };
}
