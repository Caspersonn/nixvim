{ ... }: {
  plugins = {
    treesitter = {
      enable = true;
      settings = {
        indent.enable = true;
        auto_install = false;
        disable = [
          "c"
        ];
        highlight = {
          enable = true;
        };
        ensure_installed = [
          "markdown"
          "lua"
          "vim"
          "vimdoc"
          "nix"
          "elixir"
          "eex"
          "heex"
        ];
      };
    };
    treesitter-textobjects = {
      enable = true;
    };
  };
}

