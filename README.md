# Fish Shell and Starship Prompt Installation

This guide provides step-by-step instructions to install and configure Fish shell, Starship prompt, and Nerd Fonts on a Linux system as a one line code

## Prerequisites
- A Linux-based operating system
- `sudo` privileges
- An active internet connection

---

## Installation Steps

### 1. Install Fish Shell
Fish is a smart and user-friendly command-line shell for Linux.

```sh
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install fish -y
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s $(which fish)
```

After running these commands, Fish shell will be installed and set as the default shell.

**Confirmation Message:**
```
The fish have been fished, starting starting
```

### 2. Install Starship Prompt
Starship is a minimal, fast, and customizable shell prompt.

```sh
sudo sh -c "$(curl -fsSL https://starship.rs/install.sh)" -y -f
echo "starship init fish | source" >> ~/.config/fish/config.fish
```

This installs Starship and configures it to start automatically with Fish.

**Confirmation Message:**
```
Starchip launch, adding font
```

### 3. Install Nerd Font
Nerd Fonts are required to display certain icons and symbols in the terminal prompt.

```sh
starship preset nerd-font-symbols -o ~/.config/starship.toml
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip \
&& cd ~/.local/share/fonts \
&& unzip JetBrainsMono.zip \
&& rm JetBrainsMono.zip \
&& fc-cache -fv
```

This will download, install, and refresh the system font cache for the Nerd Font.

**Confirmation Message:**
```
System ready, rebooting...
```

### 4. Reboot the System
Finally, reboot the system to apply all changes.

```sh
sudo reboot now
```

---

## Verification
After rebooting, open a terminal and check:

- Fish shell: Run `echo $SHELL` (should output `/usr/bin/fish` or similar)
- Starship prompt: Ensure the terminal prompt has changed
- Fonts: Confirm special symbols are displayed correctly

---

## Troubleshooting
- If Fish is not set as the default shell, rerun:
  ```sh
  chsh -s $(which fish)
  ```
- If Starship does not load, manually source the config:
  ```sh
  source ~/.config/fish/config.fish
  ```
- If fonts are not displaying correctly, ensure your terminal is using JetBrainsMono Nerd Font in the settings.

---

Enjoy your new terminal setup! 🚀

