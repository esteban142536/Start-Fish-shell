# Install fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install fish -y
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s $(which fish)

echo "The fish have been fished, starting starting"

# Install starship
sudo sh -c "$(curl -fsSL https://starship.rs/install.sh)" -y -f
echo "starship init fish | source" >> ~/.config/fish/config.fish
echo "Starchip launch, adding font"

# Install nerd fond
starship preset nerd-font-symbols -o ~/.config/starship.toml
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip \
&& cd ~/.local/share/fonts \
&& unzip JetBrainsMono.zip \
&& rm JetBrainsMono.zip \
&& fc-cache -fv

echo "System ready, rebooting..."
sudo reboot now
