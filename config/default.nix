{pkgs, ...}: let
  # Helper to determine if we're on Darwin
  isDarwin = pkgs.stdenv.isDarwin;
  isLinux = pkgs.stdenv.isLinux;

  # Common packages for all systems
  commonPackages = with pkgs; [
    ripgrep
    alejandra
    nixpkgs-fmt
    prettierd
    nixfmt-classic
    stylua
    python312Packages.flake8
    vimPlugins.vim-prettier
    python312Packages.autopep8
    yapf
    black
    isort
    hadolint
    shfmt
  ];

  # Linux-specific packages
  linuxPackages = with pkgs; [
    wl-clipboard # Wayland clipboard
    xdg-utils
  ];

  # Darwin-specific packages
  darwinPackages = with pkgs; [
    # macOS uses pbcopy/pbpaste for clipboard, which is built-in
  ];
in {
  extraPackages =
    commonPackages
    ++ (
      if isLinux
      then linuxPackages
      else []
    )
    ++ (
      if isDarwin
      then darwinPackages
      else []
    );
}
