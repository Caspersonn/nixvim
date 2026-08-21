
{ pkgs, ... }: {
  plugins.luasnip = {
    enable = true;
    lazyLoad = {
      enable = true;
      settings = {
        event = ["InsertEnter"];
      };
    };
  };
}
