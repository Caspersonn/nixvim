{pkgs, ...}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "linny";
      src = pkgs.fetchFromGitHub {
        owner = "linden-project";
        repo = "linny.vim";
        rev = "4979b429b206414e002be3af9f17a63d938c81e1";
        hash = "sha256-JEw5IWdT3wBtXyK3yNWTo26/3YiKTfI6HTxHtHcDW88=";
      };
    })
  ];

  extraConfigLua =
    # lua
    ''
      local f=io.open( os.getenv( "HOME" ) .. "/git/personal/lkasper-linny","r")

      if f~=nil then
        io.close(f)

        vim.g.linny_open_notebook_path = vim.env.HOME .. '/git/personal/lkasper-linny'

        vim.g.linny_menu_display_docs_count = 1
        vim.g.linny_menu_display_taxo_count = 1
        vim.g.linnycfg_setup_autocommands = 1

        vim.cmd [[
          let g:linny_wikitags_register = {}
        ]]
        vim.fn['linny#Init']()
      end
    '';
}
