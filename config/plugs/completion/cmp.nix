{ lib, ... }:
{
  plugins.cmp-nvim-lsp.enable = true;
  plugins.cmp-buffer.enable = false;
  plugins.cmp-path.enable = false;
  plugins.cmp-treesitter.enable = false;
  plugins = {
    #lspkind.enable = true;

    cmp-nvim-lsp-signature-help.enable = true;
    cmp = {
      enable = true;
      settings.sources = [
        {name = "nvim_lsp";}
        {name = "nvim_lsp_signature_help";}
      ];
      settings.mapping = {
        "<Tab>" = "cmp.mapping.select_next_item()";
        "<S-Tab>" = "cmp.mapping.select_prev_item()";
        "<C-j>" = "cmp.mapping.scroll_docs(4)";
        "<C-k>" = "cmp.mapping.scroll_docs(-4)";
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-Esc>" = "cmp.mapping.close()";
        "<CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = true })";
        "<Up>" = "cmp.mapping.select_prev_item()";
        "<Down>" = "cmp.mapping.select_next_item()";
        "<Left>" = "cmp.mapping.close()";
        "<Right>" = "cmp.mapping.confirm({ select = true })";
      };
    };

    #cmp = {
    #  enable = true;
    #  settings = {
    #    autoEnableSources = true;
    #    performance = {
    #      debounce = 150;
    #    };
    #    sources = [
    #      {name = "path";}
    #      {
    #        name = "nvim_lsp";
    #        keywordLength = 1;
    #      }
    #      {
    #        name = "buffer";
    #        keywordLength = 3;
    #      }
    #    ];

    #    snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";
    #    formatting = {
    #      fields = [
    #        "menu"
    #        "abbr"
    #        "kind"
    #      ];
    #      format = lib.mkForce ''
    #      function(entry, item)
    #        local menu_icon = {
    #          nvim_lsp = '[LSP]',
    #          luasnip = '[SNIP]',
    #          buffer = '[BUF]',
    #          path = '[PATH]',
    #        }

    #        item.menu = menu_icon[entry.source.name]
    #        return item
    #      end
    #      '';
    #    };

    #    mapping = lib.mkForce {
    #      "<Up>" = "cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select})";
    #      "<Down>" = "cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select})";

    #      "<C-p>" = "cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select})";
    #      "<C-n>" = "cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select})";

    #      "<C-u>" = "cmp.mapping.scroll_docs(-4)";
    #      "<C-d>" = "cmp.mapping.scroll_docs(4)";

    #      "<C-e>" = "cmp.mapping.abort()";
    #      "<C-y>" = "cmp.mapping.confirm({select = true})";
    #      "<CR>" = "cmp.mapping.confirm({select = false})";

    #      "<C-f>" = ''
    #      cmp.mapping(
    #        function(fallback)
    #          if luasnip.jumpable(1) then
    #            luasnip.jump(1)
    #          else
    #            fallback()
    #          end
    #        end,
    #        { "i", "s" }
    #      )
    #      '';

    #      "<C-b>" = ''
    #      cmp.mapping(
    #        function(fallback)
    #          if luasnip.jumpable(-1) then
    #            luasnip.jump(-1)
    #          else
    #            fallback()
    #          end
    #        end,
    #        { "i", "s" }
    #      )
    #      '';

    #      "<Tab>" = ''
    #      cmp.mapping(
    #        function(fallback)
    #          local col = vim.fn.col('.') - 1

    #          if cmp.visible() then
    #            cmp.select_next_item(select_opts)
    #          elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
    #            fallback()
    #          else
    #            cmp.complete()
    #          end
    #        end,
    #        { "i", "s" }
    #      )
    #      '';

    #      "<S-Tab>" = ''
    #      cmp.mapping(
    #        function(fallback)
    #          if cmp.visible() then
    #            cmp.select_prev_item(select_opts)
    #          else
    #            fallback()
    #          end
    #        end,
    #        { "i", "s" }
    #      )
    #      '';
    #    };
    #    window = {
    #      completion = {
    #        border = "rounded";
    #        winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None";
    #        zindex = 1001;
    #        scrolloff = 0;
    #        colOffset = 0;
    #        sidePadding = 1;
    #        scrollbar = true;
    #      };
    #      documentation = {
    #        border = "rounded";
    #        winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None";
    #        zindex = 1001;
    #        maxHeight = 20;
    #      };
    #    };
    #  };
    #};
    lsp-format.enable = false;
  };


  extraConfigLua = ''
    local cmp_enabled = true
    vim.api.nvim_create_user_command("ToggleAutoComplete", function()
      if cmp_enabled then
        require("cmp").setup.buffer({ enabled = false })
        require("notify")("Disabled Autocomplete", "info")
        cmp_enabled = false
      else
        require("cmp").setup.buffer({ enabled = true })
        require("notify")("Enabled Autocomplete", "info")
        cmp_enabled = true
      end
    end, {})
  '';

  keymaps = [
    {
      key = "<Leader>na";
      action = "<cmd> ToggleAutoComplete <CR>";
      mode = "n";
      options.desc = "Toggle CMP Autocomplete";
    }
  ];
}
