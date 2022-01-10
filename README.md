# Steps to bootstrap

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```bash
xcode-select --install
```

2. Clone repo into new hidden directory.

```bash
# Use SSH (if set up)...
git clone git@github.com:youkoucoding/public-dotfiles.git

# ...or use HTTPS and switch remotes later.
git clone https://github.com/youkoucoding/public-dotfiles.git
```

3. Create symlinks in the Home directory to the real files in the repo.

```bash
ln -s ~/.public-dotfiles/ ~/
```

4. Install Homebrew, followed by the software listed in the Brewfile.

```bash
# These could also be in an install script.

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Then pass in the Brewfile location...
brew bundle --file ~/.dotfiles/Brewfile

# ...or move to the directory first.
cd ~/.dotfiles && brew bundle
```
