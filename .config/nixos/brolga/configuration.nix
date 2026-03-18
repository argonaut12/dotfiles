{ pkgs, ... }:

{
  imports = [
    ./packages/system.nix
    ./packages/halleyre.nix
  ];

  wsl.enable = true;
  wsl.defaultUser = "argonaut12";
  wsl.startMenuLaunchers = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

  networking.hostName = "brolga";

  fonts.packages = with pkgs; [ overpass ];

  users = {
    mutableUsers = false;
    users.argonaut12 = {
      hashedPassword = "$6$OVnGspO5SDmHrOU9$/3v4LDkh4mEIHB2/HQknqgD.xdX00yqYl5zPE2lX/6JNYapL0QZU5n9mqphX2oVG4A/tF482TZLPiQjAtXJwG1";
      isNormalUser = true;
      extraGroups = [ "wheel" ];
    };
  };

  # Read the docs!
  system.stateVersion = "24.11";
}
