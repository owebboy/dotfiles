pkgs: {
  enable = true;
  defaultEditor = true;
  vimdiffAlias = true;

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
    noice = {
      enable = true;
      presets.bottom_search = true;
      cmdline.format = {
        cmdline = {icon = ">";};
        search_down = {icon = "🔍⌄";};
        search_up = {icon = "🔍⌃";};
        filter = {icon = "$";};
        lua = {icon = "☾";};
        help = {icon = "?";};
      };
      format = {
        level = {
          icons = {
            error = "✖";
            warn = "▼";
            info = "●";
          };
        };
      };
      popupmenu = {
        kindIcons = false;
      };
      extraOptions = {
        inc_rename.cmdline.format.IncRename = {icon = "⟳";};
      };
    };
    rust-tools.enable = true;
    treesitter.enable = true;
    trouble.enable = true;

    web-devicons.enable = true; # Enable icons (required for neo-tree and trouble)
  };
  opts = {
    number = true; # Show line numbers
    relativenumber = true; # Show relative line numbers
    shiftwidth = 2; # Tab width should be 2
    termguicolors = true;
  };
  colorschemes.catppuccin = {
    settings = {
      transparent = true;
    flavour = "mocha";
  integrations = {
    cmp = true;
    gitsigns = true;
    mini = {
      enabled = true;
      indentscope_color = "";
    };
    notify = false;
    nvimtree = true;
    treesitter = true;
  };
  styles = {
    booleans = [
      "bold"
      "italic"
    ];
    conditionals = [
      "bold"
    ];
  };
  term_colors = true;
    };
    enable = true;
  };

  extraConfigLua =
    /*
    lua
    */
    ''
      -- Noice recommended config
      require("noice").setup({
      lsp = {
      	override = {
      		["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      		["vim.lsp.util.stylize_markdown"] = true,
      		["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
      	},
      },
      })
    '';
}
