# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Structure

This is a personal dotfiles repository containing configuration files for a complete development environment setup across multiple tools.

### Configuration Components
- `zsh/.zshrc` - Minimal Zsh configuration with tool integrations
- `git/.gitconfig` - Git configuration with sensible defaults  
- `nvim/.config/nvim/` - Complete Neovim setup with Lua configuration
- `ghostty/.config/ghostty/config` - Ghostty terminal emulator settings
- `oh-my-posh/.config/poshthemes/jims.omp.toml` - Custom terminal prompt theme

## Common Commands

### Installation/Symlink Management
The primary operation is symlinking configuration files to their proper locations:

```bash
# Complete dotfiles installation
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/dotfiles/git/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/nvim/.config/nvim ~/.config/nvim
ln -sf ~/dotfiles/ghostty/.config/ghostty ~/.config/ghostty
ln -sf ~/dotfiles/oh-my-posh/.config/poshthemes ~/.config/poshthemes
```

### Applying Changes
```bash
# Reload shell configuration
source ~/.zshrc

# Reload Neovim (within nvim)
:source $MYVIMRC
```

## Tool Configuration Overview

### Zsh Setup
Minimal configuration focusing on:
- **zoxide** - Smart directory navigation
- **oh-my-posh** - Terminal prompt theming  
- **zsh-autosuggestions** and **zsh-syntax-highlighting** - Shell enhancements
- **SDKMAN** - JVM language version management

### Neovim Architecture
Modular Lua configuration with:
- `init.lua` - Entry point loading config modules
- `config/options.lua` - Core Vim settings and options
- `config/keymaps.lua` - Custom key bindings  
- `config/lazy.lua` - Lazy.nvim plugin manager setup
- `plugins/` - Individual plugin configurations for LSP, completion, file navigation

### Git Configuration
Opinionated defaults:
- Rebase on pull, main as default branch
- Neovim as editor, auto color UI
- Simple push strategy

### Terminal Setup
Ghostty configuration with Kanagawa Dragon theme, GeistMono Nerd Font, and macOS-specific enhancements.

## Code Style Enforcement

### EditorConfig
The repository includes `.editorconfig` to ensure consistent formatting:
- Forces trailing newlines on all files (`insert_final_newline = true`)
- Trims trailing whitespace
- Enforces LF line endings and UTF-8 encoding
- Sets appropriate indentation for different file types

### File Creation Guidelines
When creating new files, always ensure they end with a trailing newline. The EditorConfig will enforce this automatically in supported editors.
