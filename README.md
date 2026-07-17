<div align="center">

<img src="https://raw.githubusercontent.com/homarr-labs/dashboard-icons/150279bb788cf84fc94a8b79cfcd47857cac50e2/svg/nixos.svg" align="center" width="144px" height="144px"/>

# Sov's Nix Configuration

_My NixOS setup for Framework 13 (AMD Ryzen 7040) and eventually other equipment as I go_

</div>

## 💻 Framework 13

This repository contains a NixOS configuration tailored for the Framework 13 (AMD Ryzen 7040).

## ⚙️ Features

 - niri
 - noctalia v5
 - nautilus
 - zen browser with extensions:
    - Darkreader
    - Kagi search
      - You'll need to log in
    - Bitwarden
    - uBlock Origin
 - ly as your login screen
  - with auto login for your user

 ## 🔑 Keybinds

### Niri (Useful Ones)

| KeyBind | Action |
|---|---|
| Mod+Q | close window |
| Mod+F | fullscreen |
| Mod+O | toggle overview |
| Mod+R | switch preset column width |
| Mod+Shift+R | window fill the screen |

### Noctalia (Useful Ones)

| KeyBind | Action |
|---|---|
| Mod+Space | open app launcher |
| Mod+S | take a screenshot |
| Mod+V | show clipboard |
| Mod+Esc | show session |

### Open Apps

| KeyBind | Action |
|---|---|
| Mod+E | open nautilus |
| Mod+Shift+E | open zeditor |
| Mod+Shift+D | open discord |
| Mod+B | open zen browser |

### Function Keys

[Framework function keys](https://wiki.archlinux.org/title/Framework_Laptop_13#Function_keys)

Most are handled by noctalia such as volume up/down, media controls, brightness.
 
 # 🏃To Dos

  - Secrets
  - git needs to remember my name lol
  - more better noctalia settings
    - Maybe I can script out a converter, manually entering is not fun.
  - more zen settings I think matter
  - function keys for keyboard birghtness

# 📯 Shout Outs

 - Thank you [linusammon](https://github.com/linusammon/nixos-config) for showing me your nix repo this is based on and letting me pelt you with questions!
 - Thank you [1Solon](https://github.com/1Solon/framework-13-nixos) for the wonderful framework 13 base configs for me to read and use.

 # Useful Commands

  ## Switch after editing the config
  
 ```
 sudo nixos-rebuild switch --flake .#framework --show-trace
 ```

 ## Update the pacages in tack

 ```
 tack update
 ```
