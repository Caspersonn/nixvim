{
  extraConfigLua = ''
    local contract = vim.fn.expand("~/.config/lkasper-hyprland/current/nvim.lua")

    local function desktop_theme()
      local ok, data = pcall(dofile, contract)
      if ok and type(data) == "table" then
        return data
      end
      return nil
    end

    local function apply(data)
      local background = "dark"
      local scheme = "retrobox"
      if data then
        if data.background == "light" or data.background == "dark" then
          background = data.background
        end
        if type(data.colorscheme) == "string" and data.colorscheme ~= "" then
          scheme = data.colorscheme
        end
      end
      if vim.o.background ~= background then
        vim.o.background = background
      end
      pcall(vim.cmd.colorscheme, scheme)
    end

    apply(desktop_theme())

    local function watch()
      local handle = vim.uv.new_fs_event()
      if not handle then
        return
      end
      local target = vim.fn.resolve(vim.fn.expand("~/.config/lkasper-hyprland/current"))
      if target == "" then
        return
      end
      handle:start(target, {}, function()
        vim.schedule(function()
          apply(desktop_theme())
        end)
      end)
    end

    pcall(watch)

    vim.api.nvim_create_user_command("ThemeReload", function()
      apply(desktop_theme())
    end, { desc = "Re-read the desktop light/dark contract" })
  '';
}
