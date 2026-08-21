{ ... }: {
  plugins.bufferline = {
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
}
