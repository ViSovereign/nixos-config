<div align="center">

<img src="https://raw.githubusercontent.com/homarr-labs/dashboard-icons/150279bb788cf84fc94a8b79cfcd47857cac50e2/svg/nixos.svg" align="center" width="144px" height="144px"/>

# Sov's Nix Configuration

_My NixOS setup for Framework 13 (AMD Ryzen 7040) and eventually other equipment as I go_

</div>

## 💻 Framework 13

This repository contains a NixOS configuration tailored for the Framework 13 (AMD Ryzen 7040).

## ⚙️ Features

<p>
  <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/niri.svg" alt="icon" width="30px"; vertical-align: left;">
    niri
</p>

<p>
  <img src="https://docs.noctalia.dev/_astro/noctalia-logo.BwXc-yKG.svg" alt="icon" width="30px"; vertical-align: left;">
    noctalia v5 + noctalia greeter
</p>

<p>
  <img src="https://cdn.jsdelivr.net/gh/selfhst/icons/svg/zed-light.svg" alt="icon" width="30px"; vertical-align: left;">
    zeditor
</p>

<p>
  <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/zen-browser-dark.svg" alt="icon" width="30px"; vertical-align: left;">
    zen browser with extenstions!
</p>

<p>
  <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/discord.svg" alt="icon" width="30px"; vertical-align: left;">
    discord
</p>

<p>
  <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/steam.svg" alt="icon" width="30px"; vertical-align: left;">
    steam
</p>

<p>
  <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/podman.svg" alt="icon" width="30px"; vertical-align: left;">
    podman
</p>

### Browser Extensions

- Darkreader
- Kagi search
- Bitwarden
- uBlock Origin

 ## 🔑 Keybinds

### Niri (Useful Ones)

| KeyBind | Action |
|---|---|
| Mod+Slash | show hotkeys |
| Mod+Q | close window |
| Mod+F | fullscreen |
| Mod+O | toggle overview |
| Mod+R | switch preset column width |
| Mod+Shift+R | window fill the screen |
| Mod+Shift+P | power off monitors |

### Noctalia (Useful Ones)

| KeyBind | Action |
|---|---|
| Mod+Space | open app launcher |
| Mod+Comma | open settings |
| Mod+S | take a screenshot |
| Mod+V | show clipboard |
| Mod+Esc | show session |

### Open Apps

| KeyBind | Action |
|---|---|
| Mod+X | open kitty |
| Mod+E | open nautilus |
| Mod+Shift+E | open zeditor |
| Mod+Shift+D | open discord |
| Mod+B | open zen browser |

### Function Keys

[Framework function keys](https://wiki.archlinux.org/title/Framework_Laptop_13#Function_keys)

> [!NOTE]
> Most are handled by noctalia such as volume up/down, media controls, brightness, screenshots.

### Shell Aliases
```
  ls = "eza";
  ll = "eza -l";
  la = "eza -a";
  lla = "eza -la";
  lt = "eza --tree";
 ```
 
 # 🏃To Dos

  - Secrets
  - disko with encryption
  - mullvad vpn
  - remove noctalia-greeter

# Live Disk Setup!
> [!NOTE]
> Identify your target disk using `lsblk` (e.g. `/dev/nvme0n1`), and run:

```bash
sudo mount -o remount,size=28G /nix/.rw-store
sudo mount -o remount,size=28G /

sudo NIX_CONFIG="extra-experimental-features = nix-command flakes pipe-operators" \
  nix run github:nix-community/disko/latest#disko-install -- \
  --write-efi-boot-entries \
  --flake github:ViSovereign/nixos-config/disko#framework \
  --disk main /dev/nvme0n1
```
or
```bash
sudo mount -o remount,size=28G /nix/.rw-store
sudo mount -o remount,size=28G /

sudo NIX_CONFIG="
extra-experimental-features = nix-command flakes pipe-operators
extra-substituters = https://noctalia.cachix.org
extra-trusted-public-keys = noctalia.cachix.org-1:pCOR47nnMEo5thcxNDtzWpOxNFQsBRglJzxWPp3dkU4=
" \
  nix run github:nix-community/disko/latest#disko-install -- \
  --write-efi-boot-entries \
  --flake github:ViSovereign/nixos-config/disko#framework \
  --disk main /dev/nvme0n1 \
  --option extra-substituters "https://noctalia.cachix.org" \
  --option extra-trusted-public-keys "noctalia.cachix.org-1:pCOR47nnMEo5thcxNDtzWpOxNFQsBRglJzxWPp3dkU4="
```

No errors? `reboot`

```bash
git clone -b disko https://github.com/ViSovereign/nixos-config.git ~/Projects/nixos-config
```

 # Useful Nix Related Commands
Switch to new config using ```/nixos-config/modules/cli/nh.nix```
```
nh os switch
```
Update tack packages
```
tack update <package>
```
Setup the fingerprint reader
```
fprintd-enroll
```

# 📯 Shout Outs

 - Thank you [linusammon](https://github.com/linusammon/nixos-config) for showing me your nix repo this is based on and letting me pelt you with questions!
 - Thank you [1Solon](https://github.com/1Solon/framework-13-nixos) for the wonderful framework 13 base configs for me to read and use.
