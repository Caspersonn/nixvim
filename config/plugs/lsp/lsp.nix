{
  lib,
  pkgs,
  ...
}: {
  plugins.lsp = {
    enable = true;
    inlayHints = true;
    keymaps = {
      diagnostic = {
        "<leader>E" = "open_float";
        "[" = "goto_prev";
        "]" = "goto_next";
        "<leader>do" = "setloclist";
      };
      lspBuf = {
        "K" = "hover";
        "gD" = "declaration";
        "gd" = "definition";
        "gr" = "references";
        "gI" = "implementation";
        "gy" = "type_definition";
        "<leader>ca" = "code_action";
        "<leader>cr" = "rename";
        "<leader>wl" = "list_workspace_folders";
        "<leader>wr" = "remove_workspace_folder";
        "<leader>wa" = "add_workspace_folder";
      };
    };
    preConfig = ''
      vim.diagnostic.config({
        virtual_text = false,
        severity_sort = true,
        float = {
          border = 'rounded',
          source = 'always',
        },
      })

      vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
        vim.lsp.handlers.hover,
        {border = 'rounded'}
      )

      vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
        vim.lsp.handlers.signature_help,
        {border = 'rounded'}
      )
    '';
    postConfig = ''
            vim.diagnostic.config({
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = "✘",
            [vim.diagnostic.severity.WARN]  = "▲",
            [vim.diagnostic.severity.HINT]  = "⚑",
          }
        },
        virtual_text = true,
        underline = true,
        update_in_insert = false,
      })
    '';
    servers = {
      pylsp = {
        # NOTE: Troubleshooting this!
        enable = false;
        settings.plugins = {
          black.enabled = true;
          flake8.enabled = true;
          isort.enabled = true;
          jedi.enabled = true;
          pycodestyle.enabled = true;
          pydocstyle.enabled = true;
          pyflakes.enabled = true;
          mccabe.enabled = true;
          rope.enabled = true;
          yapf.enabled = true;
        };
      };
      lua_ls.enable = false; # Lua
      cssls.enable = true; # CSS
      html.enable = true; # HTML
      pyright.enable = true; # Python
      marksman.enable = true; # Markdown
      nil_ls.enable = true; # Nix
      dockerls.enable = true; # Docker
      docker_compose_language_service.enable = true; # Docker compose
      bashls.enable = true; # Bash
      yamlls.enable = true; # YAML
      terraformls.enable = true; # Terraform
      nginx_language_server.enable = true; # Nginx
      ts_ls.enable = true;
    };
  };
}
