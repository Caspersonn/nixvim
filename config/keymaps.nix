{...}: {
  globals.mapleader = ",";
  keymaps = [
    {
      key = "<esc>";
      action = ":noh<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Clear search";
      };
    }

    # Custom keybinds
    # NOTE: Not use it often but keep it just in case
    # Update Treesitter Parsers
    # {
    #   key = "<Leader>tu";
    #   action = "<cmd>TSUpdate<CR>";
    #   mode = "n";
    #   options.desc = "Update Treesitter Parsers";
    # }

    # TODO: Condition to use it only in nix filetypes
    # Format nix with alejandra
    {
      key = "<Leader>xa";
      action = ":%!alejandra -qq<CR>";
      mode = "n";
      options.desc = "Format with Alejandra";
    }

    {
      key = "<Leader>xa";
      action = ":%!alejandra -qq<CR>";
      mode = "n";
      options.desc = "Format with Alejandra";
    }


    # Notify dismiss all
    {
      key = "<Leader>nn";
      action = ''<cmd>lua require("notify").dismiss({ silent = true, pending = true })<cr>'';
      mode = "n";
      options.desc = "Dismiss All Notifications";
    }

    # On demand conform format
    {
      key = "<leader>xf";
      action = ''<cmd>lua require("conform").format({ async = true })<CR>'';
      mode = "n";
      options = {
        silent = true;
        desc = "Execute conform format";
      };
    }

    # Line numbers
    {
      key = "<leader>nl";
      action = "<cmd>lua ToggleLinesAndDiagnostics()<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Toggle lines and LSP messages";
      };
    }

    #AddPythonShebang
    {
      key = "<leader>xp";
      action = "<cmd>lua AddPythonShebang()<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Add Python shebang";
      };
    }

    #AddBASHShebang
    {
      key = "<leader>xs";
      action = "<cmd>lua AddBashShebang()<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Add BASH shebang";
      };
    }

    # Lspsaga outline
    {
      key = "<leader>xo";
      action = "<cmd>Lspsaga outline<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Lspsaga outline";
      };
    }

    # Git
    {
      key = "<leader>gs";
      action = "<cmd>Telescope git_status<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Git status";
      };
    }
    {
      key = "<leader>gw";
      action = "<cmd>Gwrite<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Stage the current file";
      };
    }
    {
      key = "<leader>gc";
      action = "<cmd>Git commit<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Commit changes";
      };
    }
    {
      key = "<leader>gp";
      action = "<cmd>Git push<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Push changes";
      };
    }
    {
      key = "<leader>gl";
      action = "<cmd>Git pull<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Pull changes";
      };
    }
    {
      key = "<leader>gb";
      action = "<cmd>Gitsigns blame<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Blame for the current file";
      };
    }
    {
      key = "<leader>gd";
      action = "<cmd>Gdiffsplit<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Diff against HEAD";
      };
    }

    # FIXME: GBrowse
    {
      key = "<leader>go";
      action = "<cmd>GBrowse<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Browse repository in Git's web UI";
      };
    }

    # Buffer tabs
    {
      key = "<leader>b";
      action = "<cmd> enew <CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "New buffer";
      };
    }

    {
      key = "<tab>";
      action = "<cmd> BufferLineCycleNext <CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Next buffer";
      };
    }

    {
      key = "<S-tab>";
      action = "<cmd> BufferLineCyclePrev <CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Previous buffer";
      };
    }
    {
      key = "<leader>X";
      action = ":bd <CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Delete buffer";
      };
    }
    {
      key = "<leader>tp";
      action = "<cmd> BufferLineTogglePin <CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Pin buffer";
      };
    }

    # Window movement
    {
      key = "<C-j>";
      action = "<C-w>j";
      mode = "n";
      options.desc = "Move down";
    }

    {
      key = "<C-k>";
      action = "<C-w>k";
      mode = "n";
      options.desc = "Move up";
    }

    {
      key = "<C-h>";
      action = "<C-w>h";
      mode = "n";
      options.desc = "Move left";
    }

    {
      key = "<C-l>";
      action = "<C-w>l";
      mode = "n";
      options.desc = "Move right";
    }
    # Terminal
    {
      key = "<Leader>sn";
      action = "<cmd> tabnew | terminal <CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "New tab terminal";
      };
    }

    {
      key = "<Leader>sh";
      action = "<cmd> ToggleTerm direction=horizontal <CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Horizontal terminal";
      };
    }

    {
      key = "<Leader>sv";
      action = "<cmd>ToggleTerm direction=vertical size=60 <CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Vertical terminal";
      };
    }

    {
      key = "<Leader>sf";
      action = "<cmd> ToggleTerm direction=float <CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Floating terminal";
      };
    }

    # Tree
    {
      key = "<Leader>e";
      action = "<cmd> Neotree toggle <CR>";
      mode = "n";
      options.desc = "Toggle tree";
    }

    # Telescope stuff
    {
      key = "<Leader>tf";
      action = "<cmd> Telescope fd <CR>";
      mode = "n";
      options.desc = "Find files";
    }

    {
      key = "<Leader>tr";
      action = "<cmd> Telescope oldfiles <CR>";
      mode = "n";
      options.desc = "Find recents";
    }

    {
      key = "<Leader>tg";
      action = "<cmd> Telescope live_grep <CR>";
      mode = "n";
      options.desc = "Telescope live grep";
    }

    {
      key = "<Leader>tm";
      action = "<cmd> Telescope notify <CR>";
      mode = "n";
      options.desc = "Recent notifications";
    }

    {
      key = "<Leader>tq";
      action = "<cmd> TodoQuickFix <CR>";
      mode = "n";
      options.desc = "TodoQuickFix";
    }

    {
      key = "<Leader>tt";
      action = "<cmd> TodoTelescope <CR>";
      mode = "n";
      options.desc = "TODO telescope";
    }
    {
      key = "<Leader>cp";
      action = "<cmd>let @+ = expand('%:p')<CR>";
      mode = "n";
      options.desc = "Copy current file path";
    }
  ];

  plugins.which-key = {
    enable = true;
    settings = {
      icons = {
        breadcrumb = "»";
        group = "+";
        separator = ""; # ➜
      };
      win = {
        border = "rounded";
        padding = [
          1
          1
        ];
        # FIXME: width.max and width.min? margin?
        # height = [
        #   2
        #   10
        # ];
        # width = [
        #   20
        #   50
        # ];
      };

      spec = [
        {
          __unkeyed-1 = "<Leader>e";
          group = "Toggle Neotree";
          icon = "";
        }

        {
          __unkeyed-1 = "<Leader>b";
          desc = "New buffer";
          icon = "";
        }

        {
          __unkeyed-1 = "<Leader>X";
          desc = "Delete buffer";
          icon = "";
        }

        {
          __unkeyed-1 = "<Leader>s";
          group = "Terminal";
          icon = " ";
        }

        {
          __unkeyed-1 = "<Leader>g";
          group = "Git";
          icon = "";
        }

        {
          __unkeyed-1 = "<Leader>n";
          group = "Focus";
          icon = "󰜺";
        }

        {
          __unkeyed-1 = "<Leader>t";
          group = "Telescope";
          icon = "󰭎";
        }
        {
          __unkeyed-1 = "<Leader>c";
          group = "Copy";
          #icon = "";
        }

        {
          __unkeyed-1 = "<Leader>l";
          group = "LSP";
          icon = "";
        }

        {
          __unkeyed-1 = "<Leader>x";
          group = "Utils";
          icon = "";
        }
      ];
    };
  };

  extraConfigLua = ''
           -- Enable keybind to back to Normal mode from terminal
              vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })
              -- set modifiable on
              vim.cmd([[
          augroup TerminalSettings
            autocmd!
            autocmd TermOpen * setlocal modifiable
          augroup END
        ]])

            -- Toggle Lines and Diagnostics
    function ToggleLinesAndDiagnostics()
      if vim.g._lines_and_diagnostics_visible == nil then
        vim.g._lines_and_diagnostics_visible = true
      end

      if vim.g._lines_and_diagnostics_visible then
        -- Hide line numbers and diagnostics
        vim.opt.number = false
        vim.opt.relativenumber = false
        vim.diagnostic.hide()
        --vim.cmd("IBLDisable")
        vim.notify("Line numbers and diagnostics hidden", "info")
      else
        -- Show line numbers and diagnostics
        vim.opt.number = true
        vim.opt.relativenumber = true
        vim.diagnostic.show()
        --vim.cmd("IBLEnable")
        vim.notify("Line numbers and diagnostics shown", "info")
      end

      vim.g._lines_and_diagnostics_visible = not vim.g._lines_and_diagnostics_visible
    end

       -- Function to insert the shebang line
       function AddPythonShebang()
         if vim.bo.filetype == 'python' then
             vim.api.nvim_buf_set_lines(0, 0, 0, false, { '#!/usr/bin/env python3' })
           end
       end

       function AddBashShebang()
         if vim.bo.filetype == 'sh' or vim.bo.filetype == 'bash' then
           vim.api.nvim_buf_set_lines(0, 0, 0, false, { '#!/usr/bin/env bash' })
         end
       end

           local function heading_level(line)
             local hashes = line:match("^(#+)%s+")
             return hashes and #hashes or nil
           end

           local function section_base_title(line)
             local title = line:match("^##%s+(.+)$")
             if not title then
               return nil
             end

             title = title:gsub("%s*%(%d+/%d+ completed%)%s*$", "")
             return title
           end

           local function parse_task_line(line)
             local indent, state = line:match("^(%s*)[-*+] %[(.)%]")
             if not indent then
               return nil
             end

             -- Only standard Markdown task states
             if state ~= " " and state ~= "x" and state ~= "X" then
               return nil
             end

             return {
               indent = #indent,
               state = state,
             }
           end

           local function is_leaf_task(lines, idx, section_end)
             local current = parse_task_line(lines[idx])
             if not current then
               return false
             end

             for j = idx + 1, section_end do
               local lvl = heading_level(lines[j])
               if lvl and lvl <= 2 then
                 break
               end

               local next_task = parse_task_line(lines[j])
               if next_task then
                 if next_task.indent <= current.indent then
                   -- sibling or parent-level task: current task has no child tasks
                   break
                 else
                   -- deeper task under current => current is a parent container
                   return false
                 end
               end
             end

             return true
           end

           local function find_section_end(lines, start_idx)
             for i = start_idx + 1, #lines do
               local lvl = heading_level(lines[i])
               if lvl and lvl <= 2 then
                 return i - 1
               end
             end
             return #lines
           end

           local function count_tasks_in_section(lines, start_idx)
             local done = 0
             local total = 0
             local section_end = find_section_end(lines, start_idx)

             for i = start_idx + 1, section_end do
               local task = parse_task_line(lines[i])
               if task and is_leaf_task(lines, i, section_end) then
                 total = total + 1
                 if task.state == "x" or task.state == "X" then
                   done = done + 1
                 end
               end
             end

             return done, total
           end

           local function update_week_trackers(bufnr)
             bufnr = bufnr or vim.api.nvim_get_current_buf()

             if vim.b[bufnr].week_tracker_updating then
               return
             end

             local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
             local changed = false

             vim.b[bufnr].week_tracker_updating = true

             for i, line in ipairs(lines) do
               local title = section_base_title(line)

               if title == "Carry-over" or title == "Committed this week" or title == "Commited this week" then
                 local canonical = (title == "Carry-over") and "Carry-over" or "Committed this week"
                 local done, total = count_tasks_in_section(lines, i)
                 local new_line = string.format("## %s (%d/%d completed)", canonical, done, total)

                 if lines[i] ~= new_line then
                   lines[i] = new_line
                   changed = true
                 end
               end
             end

             if changed then
               vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, lines)
             end

             vim.b[bufnr].week_tracker_updating = false
           end
           local function insert_week_heading(offset_weeks)
             offset_weeks = offset_weeks or 0

             local now = os.time() + (offset_weeks * 7 * 24 * 60 * 60)

             local iso_year = vim.fn.strftime("%G", now)
             local iso_week = vim.fn.strftime("%V", now)
             local weekday = tonumber(vim.fn.strftime("%u", now)) -- 1 = Monday, 7 = Sunday

             local monday = now - ((weekday - 1) * 24 * 60 * 60)
             local sunday = monday + (6 * 24 * 60 * 60)

             local template = {
               string.format(
                 "# %s-W%s (%s > %s)",
                 iso_year,
                 iso_week,
                 vim.fn.strftime("%Y-%m-%d", monday),
                 vim.fn.strftime("%Y-%m-%d", sunday)
               ),
               "",
               "## Carry-over (0/0 completed)",
               "",
               "## Committed this week (0/0 completed)",
               "",
             }

             vim.api.nvim_put(template, "l", true, true)
             update_week_trackers(0)
           end

           vim.keymap.set("n", "<leader>ww", function()
             insert_week_heading(0)
           end, { desc = "Insert current ISO week heading" })

           vim.keymap.set("n", "<leader>wn", function()
             insert_week_heading(1)
           end, { desc = "Insert next ISO week heading" })

           vim.api.nvim_create_user_command("WeekHeading", function(opts)
             local offset = tonumber(opts.args) or 0
             insert_week_heading(offset)
           end, { nargs = "?" })

           vim.api.nvim_create_user_command("WeekTrackerRefresh", function()
             update_week_trackers(0)
           end, { desc = "Refresh weekly progress trackers" })

           local week_tracker_group = vim.api.nvim_create_augroup("WeekPlanningTracker", { clear = true })

           vim.api.nvim_create_autocmd({ "BufEnter", "InsertLeave", "TextChanged", "TextChangedI", "BufWritePost" }, {
             group = week_tracker_group,
             pattern = "*.md",
             callback = function(args)
               update_week_trackers(args.buf)
             end,
           })
  '';
}
