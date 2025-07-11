# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Structure

This is a personal dotfiles repository containing shell configuration files for development environment setup.

### Key Files
- `zsh/.zshrc` - Main Zsh configuration with aliases, PATH exports, and tool integrations

## Environment Setup

The .zshrc file configures several development tools:
- **asdf** - Version manager for multiple languages
- **zoxide** - Smart directory navigation
- **oh-my-posh** - Terminal prompt theming
- **zsh-autosuggestions** and **zsh-syntax-highlighting** - Shell enhancements
- **Docker** - Container platform with completions
- **SDKMAN** - SDK manager for JVM languages

## Key Environment Variables
- `ENABLE_BACKGROUND_TASKS=1` - Enables background task processing
- `MFP_EMAIL=jim.strawn@myfitnesspal.com` - Work email configuration
- Custom PATH includes Claude Code CLI and SDKMAN

## Common Commands

### Installation/Symlink Management
Since this is a dotfiles repository, the primary operation is symlinking configuration files to their proper locations in the home directory:

```bash
# Typical dotfiles installation pattern
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc
```

### Sourcing Changes
After modifying .zshrc:
```bash
source ~/.zshrc
```

## MyFitnessPal Integration
The configuration includes references to MyFitnessPal development environment:
- Sources shell scripts from `~/Development/mfp/onboarding/`
- Includes work email configuration