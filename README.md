# BosEriko's Neovim

## Install Neovim
```sh
brew install neovim
```

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

## Update
To avoid errors, try to update as much as possible.
### Neovim (Inside Terminal)
```
brew upgrade neovim
```
### Treesitter (Inside Neovim)
```
:TSUpdate
```

## Note
Make sure you have [node](https://nodejs.org/en/) installed, I recommend a node manager like [fnm](https://github.com/Schniz/fnm).

## Enable Repeated Keys (macOS)
Enable repeated keys to avoid pop up on key hold with the following:
```sh
defaults write -g ApplePressAndHoldEnabled -bool false
```
*Note: Restart to make it take effect*
