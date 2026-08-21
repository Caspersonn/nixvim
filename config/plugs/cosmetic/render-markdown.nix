
{ pkgs, ... }: {
  plugins.render-markdown = {
    enable = true;
    settings.checkbox.custom = {
      moved = {
        raw = "[>]";
        rendered = "󰒊 ";
        highlight = "RenderMarkdownMoved";
        scope_highlight = "RenderMarkdownMovedScope";
      };
    };
  };

  extraConfigLua = ''
    local function weekly_task_highlights()
      vim.api.nvim_set_hl(0, "RenderMarkdownMoved", {})
      vim.api.nvim_set_hl(0, "RenderMarkdownMovedScope", { italic = true })
    end
    weekly_task_highlights()
    vim.api.nvim_create_autocmd("ColorScheme", {
      group = vim.api.nvim_create_augroup("WeeklyTaskHighlights", { clear = true }),
      callback = weekly_task_highlights,
    })
  '';
}
