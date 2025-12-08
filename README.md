# My Dotfiles

## Overview

This repository contains personal configuration files (dotfiles) managed with GNU Stow.

## Configurations Included

- Shell
  - .bashrc, fish, starship configuration under ~/.config/fish
- Editor
  - .vimrc and core Vim configuration
- Tools
  - Espanso (base YAML), Fastfetch customization
- Applications
  - VS Code extensions list

## Getting Started

Assumes the repository is cloned into your home directory.

### Prerequisites (Arch Linux)

Install GNU Stow:

```bash
sudo pacman -S stow
```

### Step 1 — Clone (shallow)

Navigate to your home directory and clone a shallow copy:

```bash
cd ~
git clone --depth 1 [Your-Repository-URL] ~/.dotfile
cd ~/.dotfile
```

Replace [Your-Repository-URL] with your repo HTTPS or SSH URL.

### Step 2 — Verify Git Status

Because of --depth 1, some git operations behave differently. Confirm branch and status:

```bash
git status
```

### Step 3 — Deploy with Stow

- Full deployment (new system):

```bash
stow .
```

(The dot deploys all packages/subdirectories.)

- Adopt existing files (move local files into the repo and symlink):

```bash
stow --adopt .
```

Warning: --adopt moves existing files from your home into the repository and then creates symlinks. If you did not intend to modify tracked files in the repo, review the moved files in the repo and use git restore or other recovery steps as needed (for example: `git restore` or restore from the moved copy).

## Notes

- The repository manages dotfiles (files beginning with a dot) and corresponding config folders under ~/.config where applicable.
- Use stow per-package if you prefer more control: `stow vim` or `stow bash`.
