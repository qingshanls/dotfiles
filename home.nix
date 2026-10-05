{ config, pkgs, ... }:

{
  home.username = "qsls";
  home.homeDirectory = "/home/qsls";
  home.stateVersion = "24.11";

  # ===== 托管配置目录 =====
  xdg.configFile = {
    "alacritty".source = ./config/alacritty;
    "kitty".source = ./config/kitty;
    "fastfetch".source = ./config/fastfetch;
    "niri".source = ./config/niri;
    "helix".source = ./config/helix;
    "noctalia".source = ./config/noctalia;
  };

  # ===== 托管根目录文件 =====
  # home.file = {
  #   ".config/starship.toml".source = ./config/starship.toml;
  # };


  # ===== 安装软件包 =====
  home.packages = with pkgs; [
    # 示例：用 Nix 安装的软件
    # git
    # neovim
    # htop
    # ripgrep
    # fd
  ];

  programs.home-manager.enable = true;
}