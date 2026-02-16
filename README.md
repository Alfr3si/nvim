# 🐣 Neovim Configuration 🐤

# Description

This is my personal Neovim configuration, designed to be fast and efficient.

# Plugins

- [lazy.nvim ](https://github.com/folke/lazy.nvim)
- [colorscheme](https://github.com/craftzdog/solarized-osaka.nvim)
- [colorizer](https://github.com/catgoose/nvim-colorizer.lua)
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [mini.icons](https://github.com/echasnovski/mini.icons)
- [render-markdown](https://github.com/MeanderingProgrammer/render-markdown.nvim)
- [snacks](https://github.com/folke/snacks.nvim)
- [treesiter](https://github.com/nvim-treesitter/nvim-treesitter)
- [filemanager](https://github.com/stevearc/oil.nvim?tab=readme-ov-file#requirements)
- [conform](https://github.com/stevearc/conform.nvim)
- [mason](https://github.com/mason-org/mason.nvim)
- [lspconfig](https://github.com/neovim/nvim-lspconfig)
- [autotag](https://github.com/windwp/nvim-ts-autotag)
- [blink.cmp](https://github.com/saghen/blink.cmp)
- [luasnip](https://github.com/L3MON4D3/LuaSnip)
- [vim-dadbod](https://github.com/tpope/vim-dadbod)
- [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- [harpoon](https://github.com/ThePrimeagen/harpoon)
- [kulala](https://github.com/mistweaverco/kulala.nvim)
- [live-preview](https://github.com/brianhuster/live-preview.nvim)
- [mason](https://github.com/mason-org/mason.nvim)
- [minty](https://github.com/nvzone/minty)
- [obsidian](https://github.com/epwalsh/obsidian.nvim)
- [marker-groups](https://github.com/jameswolensky/marker-groups.nvim)
- [which-key](https://github.com/folke/which-key.nvim)
- [obsidian](https://github.com/obsidian-nvim/obsidian.nvim)
- [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [fidget](https://github.com/j-hui/fidget.nvim)
- [codeium](https://github.com/Exafunction/windsurf.nvim)
- [avante](https://github.com/yetone/avante.nvim)


# How to install

## Requirements

- neovim >= v0.11
- git
- unzip
- tar
- curl
- xclip or wl-clipboard
- fd or fd-find
- ripgrep
- nodejs
- npm
- Nerd Font 😎
- lazygit
- a C compiler for nvim-treesitter.
  - debian (build-essential)
  - arch (base-devel)
  - void (base-devel)
  - fedora ("Development Tools")
- imagemagick
- a terminal that support true color and undercurl:
  - kitty
  - ghostty
  - wezterm
  - alacritty
  - iterm2

## For WSL

for wsl2 you needed install win32yank for clipboard  
you used:
  ```
    winget install equalsraf.win32yank
  ```
and write this command:
```bash
# example of the command --> replace "TuUsuario" with your username
sudo ln -s /mnt/c/Users/TuUsuario/AppData/Local/Microsoft/WinGet/Links/win32yank.exe /usr/local/bin/win32yank.exe
```

## Make a backup of your current Neovim files:

```bash
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

## Clone the repository

    https://github.com/Alfr3si/nvim.git ~/.config/nvim

## Remove the .git folder, so you can add it to your own repo later

    rm -rf ~/.config/nvim/.git

## Start Neovim

    nvim
