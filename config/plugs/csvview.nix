{
  plugins.csvview = {
    enable = true;
    autoLoad = true;
    settings = {
      parser = {
        async_chunksize = 30;
      };
      view = {
        display_mode = "border";
        spacing = 4;
        header_lnum = 1;
      };
    };
  };
}
