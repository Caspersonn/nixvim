{
  plugins = {
    neo-tree = {
      enable = true;
      settings = {
        sources = [
          "filesystem"
          "buffers"
          "git_status"
          "document_symbols"
        ];
        add_blank_line_at_top = false;

        filesystem = {
          bind_to_cwd = false;
          follow_current_file = {
            enabled = true;
          };
          filtered_items = {
            visible = true;
          };
        };

        default_component_configs = {
          indent = {
            with_expanders = true;
            expander_collapsed = "󰅂";
            expander_expanded = "󰅀";
            expander_highlight = "NeoTreeExpander";
          };
          name = {
            use_git_status_colors = false;
          };
          git_status = {
            highlight = false;
            symbols = {
              added = "󰐕";
              modified = "󰏫";
              deleted = "󰍵";
              renamed = "󰑕";
              staged = "󰩍";
              conflict = "󰩌 ";
              ignored = " ";

              untracked = "󰞋";
              unstaged = "󰄱";
            };

            #              symbols = {
            #              added = " ";
            #              conflict = "󰩌 ";
            #              deleted = "󱂥";
            #              ignored = " ";
            #              modified = " ";
            #              renamed = "󰑕";
            #              staged = "󰩍";
            #              unstaged = "";
            #              untracked = "✗";
            #            };
          };
        };
      };
    };

    which-key = {
      enable = true;
    };

    gitsigns = {
      enable = true;
    };

    fugitive = {
      enable = true;
    };

    todo-comments = {
      enable = true;
    };

    bufferline = {
      enable = true;
      settings.options = {
        buffer_close_icon = null;
        close_icon = null;
        always_show_bufferline = true;
        separator_style = "thin";
        show_buffer_close_icons = false;
        diagnostics = "nvim_lsp";
        offsets = [
          {filetype = "neo-tree";}
          {text = "File Explorer";}
          {highlight = "Directory";}
          {text_align = "center";}
          {separator = true;}
        ];
      };
    };

    treesitter = {
      enable = true;
      settings = {
        indent.enable = true;
        auto_install = true;
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

    # NOTE: This is annoying using the corne keyboard
    nvim-autopairs.enable = false;

    #indent-blankline = {
    #  enable = true;
    #  settings = {
    #    whitespace = {
    #      highlight = {
    #        "Function";
    #        };
    #        remove_blankline_trail = true;
    #      };

    #      indent = {
    #        char = "│";
    #      };
    #      scope = {
    #        show_end = false;
    #        show_exact_scope = true;
    #        show_start = false;
    #      };
    #    };
    #  };

    telescope.enable = true;

    notify = {
      enable = true;
      settings = {
        render = "minimal";
      };
    };

    colorizer.settings = {
      enable = true;
      userDefaultOptions.names = false;
      filetypes = [
        "css"
        "scss"
      ];
    };

    image.enable = true;
    noice.enable = true;
    web-devicons.enable = true;
  };
}
