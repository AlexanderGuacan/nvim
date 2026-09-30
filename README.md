# Neovim Configuration

My personal Neovim configuration, focused on providing a modern development environment with LSP support, autocompletion, formatting, Git integration, and syntax highlighting.

## Prerequisites

This configuration requires **Neovim 0.12 or later**.

### Terminal and Font

- [WezTerm](https://wezfurlong.org/wezterm/)
- [JetBrains Mono Nerd Font](https://www.nerdfonts.com/font-downloads)

### Windows

On Windows, this configuration is intended to run inside **WSL**.

Therefore, the installation steps below are the same for both Linux and Windows: on Windows, execute all commands from your WSL environment.

---

## Installation

### 1. Install Homebrew

Homebrew is used to install Neovim and the external tools required by the configuration.

Follow the official installation instructions:

https://brew.sh/

On Linux/WSL:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

After installing Homebrew, follow the **Next steps** provided by the installer to add Homebrew to your `PATH`.

---

### 2. Install Node.js

Node.js is required by some of the tools used by the configuration.

Node.js is installed using [nvm](https://github.com/nvm-sh/nvm), rather than through a system package manager.

Install `nvm`:

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.8/install.sh | bash
```

Then load `nvm`:

```bash
\. "$HOME/.nvm/nvm.sh"
```

Install Node.js 24:

```bash
nvm install 24
```

Enable `pnpm` through Corepack:

```bash
corepack enable pnpm
```

---

### 3. Install external dependencies

Install the tools required by the configuration with Homebrew:

```bash
brew install tree-sitter-cli ripgrep fd
```

Install additional system utilities with `apt`:

```bash
sudo apt install build-essential xclip unzip python3-venv
```

---

### 4. Install Neovim

Install Neovim with Homebrew:

```bash
brew install neovim
```

Verify the installed version:

```bash
nvim --version
```

The installed version must be **0.12 or later**.

---

### 5. Clone the configuration

Clone this repository into Neovim's configuration directory:

```bash
git clone https://github.com/AlexanderGuacan/nvim.git ~/.config/nvim
```

Then start Neovim:

```bash
nvim
```

The first startup will install the configured plugins through `lazy.nvim`.

---

## Automatic dependency installation

Some dependencies are installed automatically by the configuration.

### LSP

LSP servers are managed through [Mason](https://github.com/mason-org/mason.nvim).

The configured LSP servers are installed automatically.

### Treesitter

Treesitter parsers are configured to install automatically.

No manual parser installation should be required.

### Formatters

Formatters are managed by [conform.nvim](https://github.com/stevearc/conform.nvim).

Currently, formatters are **not installed automatically**.

To determine which formatters are required, check:

```text
lua/plugins/formatter.lua
```

Then install the required formatter through Mason:

```vim
:MasonInstall <formatter_name>
```

For example:

```vim
:MasonInstall stylua
```

---

## Configuration structure

The configuration is organized into two main areas: `config` and `plugins`.

```text
.
├── after/
│   └── plugin/
│       └── treesitter.lua
├── init.lua
├── lazy-lock.json
└── lua/
    ├── config/
    │   ├── globals.lua
    │   ├── keymaps.lua
    │   ├── lazy.lua
    │   └── options.lua
    └── plugins/
        ├── autocomplete.lua
        ├── autopairs.lua
        ├── colorschemes.lua
        ├── formatter.lua
        ├── git.lua
        ├── icons.lua
        ├── lspconfig.lua
        ├── snacks.lua
        ├── statusline.lua
        └── treesitter.lua
```

### `lua/config`

Contains the general Neovim configuration:

- `globals.lua` — global variables and constants.
- `keymaps.lua` — custom key mappings.
- `lazy.lua` — `lazy.nvim` bootstrap and plugin manager configuration.
- `options.lua` — Neovim options.

### `lua/plugins`

Contains the plugin specifications used by `lazy.nvim`.

Each file groups the configuration for a specific area of the editor:

- `autocomplete.lua` — autocompletion.
- `autopairs.lua` — automatic pairs.
- `colorschemes.lua` — colorscheme configuration.
- `formatter.lua` — code formatting with `conform.nvim`.
- `git.lua` — Git integration.
- `icons.lua` — icons.
- `lspconfig.lua` — LSP configuration.
- `snacks.lua` — Snacks configuration.
- `statusline.lua` — statusline configuration.
- `treesitter.lua` — Treesitter configuration.

### `after/plugin`

Contains configuration that needs to be loaded after the corresponding plugins.

Currently, it contains additional Treesitter configuration.

### `lazy-lock.json`

Contains the exact plugin versions currently used by this configuration.

This file is generated and maintained by `lazy.nvim` to keep plugin versions reproducible.
