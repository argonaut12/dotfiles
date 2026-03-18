{ pkgs, ... }:

{
  users.users.argonaut12.packages = with pkgs; [
    # terminal
    radare2

    # ui
    nautilus # stupid ass gtk filechooser (check out termchooser sometime to utilise yazi)
    (catppuccin-gtk.override { variant = "mocha"; })
    gitkraken

    # language servers
    clang-tools
    rust-analyzer
    typescript-language-server
  ];
}
