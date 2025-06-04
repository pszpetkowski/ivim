# ivim

`ivim` is a personal Neovim configuration powered by [lazy.nvim](https://github.com/folke/lazy.nvim). It provides a curated set of plugins for programming and daily editing while remaining fairly small.  The setup automatically installs the plugin manager on first launch and chooses a light or dark theme based on your system preference.

## Features

- **Dashboard** on startup with shortcuts to common actions
- **Catppuccin** color scheme with automatic dark/light switching
- **Bufferline** tabs and **lualine** statusline
- **nvim-tree** file explorer and **telescope** fuzzy finder
- **LSP** support via **mason.nvim** and **nvim-lspconfig**
- **nvim-cmp** for autocompletion
- **Treesitter** syntax highlighting
- **Conform.nvim** formatter integration
- **Toggleterm** terminal management
- **TODO comments** and **which-key** hints

## Installation

1. Install Neovim 0.11 or later.
2. Clone this repository into `~/.config/ivim`:

   ```bash
   git clone https://github.com/pszpetkowski/ivim.git ~/.config/ivim
   ```

3. Add an `ivim` script to your `~/.local/bin` directory:

   ```bash
   mkdir -p ~/.local/bin
   cat <<'EOF' > ~/.local/bin/ivim
#!/bin/sh
export NVIM_APPNAME="${NVIM_APPNAME:-"ivim"}"
exec -a "$NVIM_APPNAME" nvim "$@"
EOF
   chmod u+x ~/.local/bin/ivim
   ```

4. Start ivim using the `ivim` command. The configuration will download **lazy.nvim** and install the declared plugins automatically. You can run `:Lazy` to manage plugins or `:Lazy sync` to update them.

## Usage

Most key mappings are discoverable via **which-key**—press `<leader>` in normal mode to view available commands. The color scheme adapts automatically to your desktop's appearance when the `org.freedesktop.portal.Settings` DBus interface is present.

