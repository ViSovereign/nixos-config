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

Most are handled by noctalia such as volume up/down, media controls, brightness, screenshots.

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
  - git needs to remember my name lol
  - function keys for keyboard brightness
  - setup defualt open apps

 # Useful Nix Related Commands

  ## Switch after saving the config
  
```
sudo nixos-rebuild switch --flake .#framework --show-trace
```
or
```
nh os switch
```

## Update the packages in tack

```
tack update <package>
```
or
```
tack update
```

## Setup the fingerprint reader

```
fprintd-enroll
```

# 📯 Shout Outs

 - Thank you [linusammon](https://github.com/linusammon/nixos-config) for showing me your nix repo this is based on and letting me pelt you with questions!
 - Thank you [1Solon](https://github.com/1Solon/framework-13-nixos) for the wonderful framework 13 base configs for me to read and use.
