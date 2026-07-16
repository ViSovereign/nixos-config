<div align="center">

<img src="https://raw.githubusercontent.com/homarr-labs/dashboard-icons/150279bb788cf84fc94a8b79cfcd47857cac50e2/svg/nixos.svg" align="center" width="144px" height="144px"/>

# Sov's Nix Configuration

_My NixOS setup for Framework 13 (AMD Ryzen 7040) and eventually other equipment as I go_

</div>

## 💻 Framework 13

This repository contains a NixOS configuration tailored for the Framework 13 (AMD Ryzen 7040).

## 📁 Files
_ files (that are not \[_settings|_themes\].nix) are not imported until I work them into the project.
```
.
├── default.nix
├── flake.nix
├── modules
│   ├── cli
│   │   ├── btop
│   │   │   ├── btop.nix
│   │   │   └── _themes.nix
│   │   ├── eza.nix
│   │   ├── fish.nix
│   │   ├── fzf.nix
│   │   ├── _gh.nix
│   │   ├── git.nix
│   │   ├── _gnupg.nix
│   │   ├── nh.nix
│   │   ├── nix-index.nix
│   │   ├── nix-ld.nix
│   │   ├── podman.nix
│   │   ├── starship.nix
│   │   ├── tack.nix
│   │   └── zoxide.nix
│   ├── gui
│   │   ├── discord
│   │   │   ├── discord.nix
│   │   │   └── _theme.nix
│   │   ├── firefox.nix
│   │   ├── fonts.nix
│   │   ├── gtk
│   │   │   ├── gtk.nix
│   │   │   └── _theme.nix
│   │   ├── kitty
│   │   │   ├── kitty.nix
│   │   │   └── _settings.nix
│   │   ├── ly.nix
│   │   ├── nautilus.nix
│   │   ├── niri
│   │   │   ├── niri.nix
│   │   │   └── _settings.nix
│   │   ├── noctalia
│   │   │   ├── noctalia.nix
│   │   │   ├── _palette copy.nix
│   │   │   ├── _palette.nix
│   │   │   ├── patches
│   │   │   │   ├── 0001-bar-add-click-through-option.patch
│   │   │   │   └── 0002-ui-add-button-borders-toggle.patch
│   │   │   └── _settings.nix
│   │   ├── qt
│   │   │   ├── _config.nix
│   │   │   ├── qt.nix
│   │   │   ├── _theme-config.nix
│   │   │   └── _theme-svg.nix
│   │   ├── qutebrowser
│   │   │   ├── _config.nix
│   │   │   └── qutebrowser.nix
│   │   ├── steam.nix
│   │   └── zeditor
│   │       ├── _keymap.nix
│   │       ├── _langs.nix
│   │       ├── _settings.nix
│   │       ├── _theme.nix
│   │       └── zeditor.nix
│   ├── hardware
│   │   ├── bluetooth.nix
│   │   ├── cpu
│   │   │   ├── amd.nix
│   │   │   └── intel.nix
│   │   ├── disk
│   │   │   ├── nvme.nix
│   │   │   ├── sata.nix
│   │   │   └── vmd.nix
│   │   ├── filesystems.nix
│   │   ├── fingerprint.nix
│   │   ├── firmware.nix
│   │   ├── gpu
│   │   │   ├── amd.nix
│   │   │   ├── _common.nix
│   │   │   └── intel.nix
│   │   ├── networking.nix
│   │   ├── power.nix
│   │   ├── qemu.nix
│   │   ├── thunderbolt.nix
│   │   ├── usb.nix
│   │   └── virtio.nix
│   ├── hosts
│   │   └── framework
│   │       ├── configuration.nix
│   │       └── _disko.nix
│   └── system
│       ├── boot.nix
│       ├── _custom.nix
│       ├── formatter.nix
│       ├── impermanence.nix
│       ├── lib.nix
│       ├── locale.nix
│       ├── nixpkgs.nix
│       ├── _openssh.nix
│       ├── settings.nix
│       ├── _sops.nix
│       ├── symlinks.nix
│       ├── theme.nix
│       ├── users.nix
│       └── xdg-dirs.nix
├── README.md
└── top.nix

21 directories, 83 files
```

# Features

 - niri
 - noctalia v5
 - nautilus
 - firefox with extensions:
    - dark reader
    - kagi search
    - bitwarden
 - ly as your login screen

 # Keybinds


 
 # To Dos

  - More firefox settings like:
    - Disabling AI
    - more search methods
    - better vert tabs out of the box
  - Secrets
  - git needs to remember my name lol
  - Intigrate some noctalia theming into some apps
  - F key keybinds

# Shout Outs

 - Thank you [linusammon](https://github.com/linusammon/nixos-config) for showing me your nix repo this is based off and letting me pelt you with questions about it!
 - Thank you [1Solon](https://github.com/1Solon/framework-13-nixos) for the wonderful framework 13 base configs for me to read and use.
