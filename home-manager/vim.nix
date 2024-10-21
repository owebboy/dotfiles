{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
  ];
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    vimdiffAlias = true;
    viAlias = true;
    vimAlias = true;

    #performance.combinePlugins.enable = true;
    # performance.byteCompileLua.enable = true;

    extraPlugins = with pkgs.vimPlugins; [
      zoxide-vim
      fzfWrapper
    ];
    plugins = {
      lightline = {
        enable = true;
        # settings.colorscheme = "catppuccin";
      };
      lsp.enable = true;
      lsp-format.enable = true;
      lsp-lines.enable = true;
      lsp-status.enable = true;
      lspsaga.enable = true;
      # lsp.inlayHints = true;
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
      none-ls = {
        enable = true;
        sources = {
          formatting.alejandra.enable = true;
          formatting.black.enable = true;
          formatting.prettier.enable = true;
        };
      };
      neo-tree = {
        enable = true;
        enableGitStatus = true;
        enableModifiedMarkers = true;
        closeIfLastWindow = true;
        extraOptions = {
          use_libuv_file_watcher = true;
        };
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
      emmet.enable = true;
      nix.enable = true;

      treesitter.enable = true;
      # treesitter.settings.highlight.enable = true;
      # treesitter.settings.indent.enable = true;

      treesitter-context.enable = true;
      treesitter-context.settings.enable = true;

      trouble.enable = true;
      tmux-navigator.enable = true;
      # yazi.enable = true;
      which-key.enable = true;
      mini.enable = true;
      # web-devicons.enable = true; # Enable icons (required for neo-tree and trouble)
      notify.enable = true;
      nvim-colorizer.enable = true;
      fzf-lua.enable = true;
      cmp = {
        enable = true;
        autoEnableSources = true;
        settings.sources = [
          {name = "nvim_lsp";}
          {name = "path";}
          {name = "buffer";}
          {name = "clippy";}
          {name = "cmdline";}
          {name = "cmdline-history";}
          {name = "fish";}
          {name = "npm";}
          {name = "nvim-lsp";}
          {name = "nvim-lsp-document-symbol";}
          {name = "nvim-lsp-signature-help";}
          {name = "nvim-lua";}
          {name = "nvim-utilsnips";}
          {name = "nvim-treesitter";}
        ];
      };
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
        transparent_background = true;
        flavour = "mocha";
        integrations = {
          mini = {
            enabled = true;
            indentscope_color = "";
          };
          notify = true;
          neotree = true;
          treesitter = true;
          noice = true;
          lsp_trouble = true;
          which_key = true;
          # fzf = true;
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

    extraConfigVim = ''
      let g:lightline = {'colorscheme': 'catppuccin'}
    '';
    extraConfigLua =
      /*
      lua
      */
      ''
              local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
              require("null-ls").setup({
            -- you can reuse a shared lspconfig on_attach callback here
            on_attach = function(client, bufnr)
                if client.supports_method("textDocument/formatting") then
                    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        group = augroup,
                        buffer = bufnr,
                        callback = function()
                            -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                            -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
                        -- vim.lsp.buf.formatting_sync()
                        vim.lsp.buf.format({async=false})
                        end,
                    })
                end
            end,
        })

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
  };
}
