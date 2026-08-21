
{ pkgs, ... }: {
  plugins.neo-tree = {
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
        };
      };
    };
  };
}
