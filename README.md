<div style="width:100%;display:flex;justify-content:center">
    <img alt="Docker Pulls" src="https://img.shields.io/docker/pulls/nguyenkhacthanh/devcontainer?style=flat-square" />
    <img alt="Docker Stars" src="https://img.shields.io/docker/stars/nguyenkhacthanh/devcontainer?style=flat-square" />
    <img alt="Docker Image Size (tag)" src="https://img.shields.io/docker/image-size/nguyenkhacthanh/devcontainer/latest?arch=amd64&style=flat-square" />
</div>

# Devcontainer Setup

This repository provides a comprehensive development container setup, designed to offer a consistent and efficient development environment. It includes a pre-configured Ubuntu-based Docker image with essential tools, a custom Zsh setup, and a highly optimized Neovim configuration.

## Features

*   **Ubuntu 24.04 Base Image**: A robust and up-to-date operating system.
*   **Essential Development Tools**: Includes `git`, `clang`, `build-essential`, `pyenv` (for Python version management), `nvm` (for Node.js version management), `uv` (a fast Python package installer and resolver), `kubectl`, `helm`, `helmfile`, and `k9s` for Kubernetes development.
*   **Zsh with Oh My Zsh**: Enhanced shell experience with `oh-my-zsh`, `git`, `aws`, `helm`, `kubectl`, `yarn` plugins, `zsh-autosuggestions`, and `zsh-syntax-highlighting`.
*   **Highly Configured Neovim**: A powerful and efficient text editor setup with:
    *   **Lazy.nvim**: For fast and easy plugin management.
    *   **LSP Support**: Integrated Language Server Protocol for intelligent code completion, diagnostics, and more.
    *   **Treesitter**: For advanced syntax highlighting and structural code editing.
    *   **Telescope**: A highly extensible fuzzy finder for files, buffers, and more.
    *   **NvimTree**: A file explorer for Neovim.
    *   **ToggleTerm**: For integrated terminal sessions.
    *   **Git Integration**: `gitsigns.nvim` for Git status in the editor.
    *   **Theme**: `onedark.nvim` for a modern and comfortable coding experience.
    *   **Custom Keymaps**: Optimized keybindings for navigation, LSP functions, and buffer management.

## Getting Started

### Prerequisites

*   Docker

### Building the Devcontainer Image

To build the Docker image for the development container, run the following command:

```bash
./devcontainer build
```

This will create an image tagged `nguyenkhacthanh/devcontainer:latest`.

### Starting the Devcontainer

To start the development container in detached mode with necessary volumes mounted:

```bash
./devcontainer start
```

This command mounts your `~/.kube`, `~/.ssh`, `~/code`, and `~/Downloads` directories, as well as the Docker socket, into the container.

### Attaching to the Devcontainer

Once the container is running, you can attach to it using bash:

```bash
./devcontainer attach
```

### Stopping the Devcontainer

To stop the running container:

```bash
./devcontainer stop
```

### Removing the Devcontainer

To remove the container:

```bash
./devcontainer remove
```

## Neovim Configuration

The Neovim configuration is located in the `config/nvim` directory. It's managed by `lazy.nvim` and includes a wide array of plugins for various programming languages and development tasks. Key features include:

*   **LSP**: Configured for intelligent code features.
*   **Autocompletion**: Powered by `nvim-cmp`.
*   **File Tree**: `nvim-tree.lua` for easy file navigation.
*   **Status Line**: `lualine.nvim` with `bufferline.nvim` for an informative and aesthetic status line.

Feel free to explore the `config/nvim/lua` directory for detailed configurations of plugins and keymaps.
