pkgs: {
  enable = true;
  defaultEditor = true;
  extraPlugins = with pkgs.vimPlugins; [
    zoxide-vim
    fzfWrapper
  ];
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
        formatting.black.enable = true;
      };
    };
    notify.enable = true;
    # cmp.enable = true;
    nvim-colorizer.enable = true;
    neo-tree = {
      enable = true;
      enableGitStatus = true;
      enableModifiedMarkers = true;
    };
    rust-tools.enable = true;
    treesitter.enable = true;
    trouble.enable = true;
  };
  opts = {
    number = true; # Show line numbers
    relativenumber = true; # Show relative line numbers
    shiftwidth = 2; # Tab width should be 2
    termguicolors = true;
  };
  colorschemes.tokyonight = {
    settings = {
      transparent = true;
      style = "night";
    };
    enable = true;
  };
}
