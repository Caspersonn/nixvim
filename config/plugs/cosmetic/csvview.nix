{
  plugins.csvview = {
    enable = true;
    lazyLoad = {
      enable = true;
      settings = {
        ft = "csv";
        cmd = "CsvViewEnable";
      };
    };
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

  autoCmd = [
    {
      event = ["BufEnter"];
      pattern = ["*.csv"];
      command = "CsvViewEnable";
    }
  ];
}
