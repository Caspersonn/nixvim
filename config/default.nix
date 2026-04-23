{pkgs, ...}: let
  # Helper to determine if we're on Darwin
  isDarwin = pkgs.stdenv.isDarwin;
  isLinux = pkgs.stdenv.isLinux;

  # Common packages for all systems
  commonPackages = with pkgs; [
    ripgrep
    sc-im
    alejandra
    nixpkgs-fmt
    prettierd
    nixfmt-classic
    stylua
    python312Packages.flake8
    vimPlugins.vim-prettier
    vimPlugins.teamtype
    python312Packages.autopep8
    yapf
    black
    isort
    hadolint
    shfmt
    yamlfmt
    nil
    typescript-language-server
    typescript
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
