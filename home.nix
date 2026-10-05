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
    # "niri".source = ./config/niri;
    "helix".source = ./config/helix;
  };

  # ===== 托管根目录文件 =====
  home.file = {
    ".config/niri/config.kdl".source = ./config/niri/config.kdl;
    ".config/niri/cfg".source = ./config/niri/cfg;
  };


  # ===== 安装软件包 =====
  home.packages = with pkgs; [
  
    ];

  programs.home-manager.enable = true;
}