# easy-nixpkgs

A simple CLI package installer from nixpkgs, without delving into configuration.nix

## Features
- **install** packages
- **remove** packages
- **list** installed packages
- **search** in nixpkgs
- **auto-backup** before changes

## Usage
```bash
# install packages
sudo nixpkgs install firefox vim git

# remove packages
sudo nixpkgs remove firefox

# list installed packages
nixpkgs list

# search for packages in nixpkgs
nixpkgs search python
