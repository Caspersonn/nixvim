
{ pkgs, ... }: {
  plugins.lint = {
    enable = true;
    lintersByFt = {
      yaml = ["yamllint"];
      dockerfile = ["trivy"];
      terraform = ["trivy"];
      tf = ["opentofu_validate"];
      #text = ["vale"];
      #json = ["jsonlint"];
      #bash = ["shellcheck"];
      #go = ["golangci-lint"];
      #python = ["flake8"];
      #haskell = ["hlint"];
      #lua = ["selene"];
    };
    linters = {
      hadolint = {
        cmd = "${pkgs.hadolint}/bin/hadolint";
      };
    };
  };
}
