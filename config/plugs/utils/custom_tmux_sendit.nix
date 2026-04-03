{pkgs, ...}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "tmux-sendit";
      src = pkgs.fetchFromGitHub {
        owner = "mipmip";
        repo = "tmux-sendit.nvim";
        rev = "834e66f3";
        hash = "sha256-bn3VbvWqchhNVwI/a/oH7EZMRi8hq0JyXtNhPE41nxE=";
      };
    })
  ];
}
