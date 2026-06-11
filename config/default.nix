{pkgs, ...}: let

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
    wl-clipboard # Wayland clipboard
    xdg-utils
  ];

in {
  extraPackages =
    commonPackages;
}
