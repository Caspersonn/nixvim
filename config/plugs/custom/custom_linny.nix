{pkgs, ...}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "linny";
      src = pkgs.fetchFromGitHub {
        owner = "linden-project";
        repo = "linny.vim";
        rev = "40673dc93aac5a33247fae631d9f27d348870c11";
        hash = "sha256-PKu/fPOV9pxwygWkSQRh2jJQWXFIMZFQFXddRRdBG+c=";
      };
    })
  ];

  extraConfigLua =
    # lua
    ''
      local f=io.open( os.getenv( "HOME" ) .. "/git/gh.caspersonn/lkasper-linny","r")

      if f~=nil then
        io.close(f)

        vim.g.linny_open_notebook_path = vim.env.HOME .. '/git/gh.caspersonn/lkasper-linny'

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
