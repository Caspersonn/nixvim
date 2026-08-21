
{ pkgs, ...}: {
  plugins.conform-nvim = {
    enable = true;
    settings = {
      notify_on_error = true;

      formatters_by_ft = {
        sh = [
          "shellcheck"
          "shfmt"
        ];
        python = [
          "isort"
          "black"
        ];
        docker = ["hadolint"];
        css = ["prettier"];
        html = ["prettier"];
        json = ["prettier"];
        lua = ["stylua"];
        nix = ["alejandra"];
        hcl = ["hclfmt"];
        sql = ["sqlformat"];
        terraform = ["tofu_fmt"];
        tf = ["tofu_fmt"];
        yaml = [
          "prettier"
          "yamlfmt"
        ];
      };
    };
  };
}
