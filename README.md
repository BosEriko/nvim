# BosEriko's nvim
## Install the config

Make sure to remove or move your current `nvim` directory

```sh
git clone https://github.com/BosEriko/nvim.git ~/.config/nvim
```

## Get healthy
Open `nvim` and enter the following:

```
:checkhealth
```

You'll probably notice you don't have support for copy/paste also that python and node haven't been setup

So let's fix that

First we'll fix copy/paste

- On mac `pbcopy` should be builtin

- On Ubuntu

  ```sh
  sudo apt install xsel # for X11
  sudo apt install wl-clipboard # for wayland
  ```

Next we need to install python support (node is optional)

- Neovim python support

  ```sh
  pip install pynvim
  ```

- Neovim node support

  ```sh
  npm i -g neovim
  ```

We will also need `ripgrep` for Telescope to work:

- Ripgrep

  ```sh
  sudo apt install ripgrep
  ```

## Symlink (Windows)
Make sure the links inside [symlink.lua](lua/config/settings/symlink.lua) are always correct! Symlinking are done this way because we're using WSL2 and cross platform symlinking is tricky.

## Setup Copilot
Run the command below inside Neovim to authenticate your Copilot

  ```sh
  :Copilot setup
  ```

---

**NOTE** make sure you have [node](https://nodejs.org/en/) installed, I recommend a node manager like [fnm](https://github.com/Schniz/fnm).
