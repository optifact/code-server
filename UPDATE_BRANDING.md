# Update Branding

## Prerequisites

```bash
# Build dependencies for vscode
echo 'deb [trusted=yes] https://repo.goreleaser.com/apt/ /' | sudo tee /etc/apt/sources.list.d/goreleaser.list
sudo apt update
sudo apt install nfpm

sudo apt-get install -y build-essential g++ libx11-dev libxkbfile-dev libsecret-1-dev libkrb5-dev python-is-python3 jq quilt rsync unzip

# Node v22.15.1
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
source ~/.bashrc
nvm install 22.15.1
nvm use 22.15.1
```

## Init

```bash
git submodule update --init
quilt push -a
npm install
./update-branding.sh
```

## Build deb package

```bash
npm run build
VERSION=0.0.1 NAME=Zodeve npm run build:vscode
npm run release
npm run release:standalone
npm run package
```

## Install deb package

```bash
sudo dpkg -i ./release-packages/code-server_0.0.1_amd64.deb
```

## Run code-server

```bash
PASSWORD=123456 code-server --disable-telemetry --disable-update-check --disable-getting-started-override --app-name Zodeve --host 0.0.0.0
```
