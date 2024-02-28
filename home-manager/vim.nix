{
  enable = true;
  plugins = {
    emmet.enable = true;
    lightline.enable = true;
    lsp.enable = true;
    lsp.servers = {
      bashls.enable = true;
      clangd.enable = true;
      cssls.enable = true;
      eslint.enable = true;
      html.enable = true;
      jsonls.enable = true;
      pylsp.enable = true;
      tailwindcss.enable = true;
      tsserver.enable = true;
    };
    nix.enable = true;
    none-ls = {
      enable = true;
      sources = {
        formatting.alejandra.enable = true;
        formatting.prettier = {
          disableTsServerFormatter = true;
          enable = true;
        };
        formatting.black.enable = true;
      };
    };
    notify.enable = true;
    nvim-cmp.enable = true;
    nvim-colorizer.enable = true;
    neo-tree = {
      enable = true;
      enableGitStatus = true;
      enableModifiedMarkers = true;
    };
    rust-tools.enable = true;
    treesitter.enable = true;
  };
  colorschemes.gruvbox.enable = true;
  options = {
    number = true; # Show line numbers
    relativenumber = true; # Show relative line numbers
    shiftwidth = 2; # Tab width should be 2
  };
}
