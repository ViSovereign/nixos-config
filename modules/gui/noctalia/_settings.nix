config: with config.theme; {
  shell = {
    button_borders = false;
    corner_radius_scale = 0.70000001043081284;
    font_family = fonts.sans;

    launch_apps_as_systemd_services = true;
    niri_overview_type_to_launch_enabled = true;

    polkit_agent = true;
    screen_time_enabled = true;
    telemetry_enabled = true;
    settings_show_advanced = true;
    setup_wizard_enabled = false;

    screenshot.directory = "/home/b/Pictures/screenshots";

    panel = {
      borders = false;
      floating_offset = 5;
      open_near_click_control_center = true;
      control_center_placement = "floating";
      session_placement = "floating";
      session_position = "center";
      window-rule = {
        open-fullscreen = false;
        geometry-corner-radius = 10;
        clip-to-geometry = true;
      };
      transparency_mode = "soft";
    };

    launcher.categories = false;

    greeter_sync = {
      auto_sync = true;
    };
  };

  control_center = {
    sidebar = "compact";
    sidebar_section = "compact";

    shortcuts = [
      { type = "wifi"; }
      { type = "bluetooth"; }
      { type = "audio"; }
      { type = "mic_mute"; }
      { type = "system"; }
      { type = "caffeine"; }
    ];
  };

  idle = {
    behavior_order = [
      "lock"
      "screen-off"
      "lock-and-suspend"
    ];

    behavior = {
      lock = {
        action = "lock";
        enabled = true;
        timeout = 120.0;
      };

      screen-off = {
        action = "screen_off";
        enabled = true;
        timeout = 300.0;
      };

      lock_and_suspend = {
        action = "lock_and_suspend";
        enable = true;
        timeout = 600;
      };
    };
  };

  lockscreen = {
    blurred_desktop = true;
    blur_intensity = 0.3;
    tint_intensity = 0.0;
  };

  location.auto_locate = true;
  nightlight.enabled = true;

  theme = {
    mode = "dark";
    source = "wallpaper";
    wallpaper_scheme = "soft";
    pure_black_dark = true;
  };

  bar = {
      default = {
        reserve_space = true;
        hover_highlight = true;
        background_opacity = 0.50;
        scale = 1.0;
        thickness = 30;
        font_weight = "bold";
        layer = "top";
        position = "bottom";
        capsule_radius = 6;
        margin_edge = 0;
        margin_ends = 0;
        padding = 10;
        radius = 0;
        concave_edge_corners = true;
        radius_bottom_left = 0;
        radius_bottom_right = 0;
        radius_top_left = 10;
        radius_top_right = 10;
        widget_spacing = 10;
        start = [ "group:g2" "group:g1" ];
        center = [ "cpu" "taskbar" "ram" ];
        end = [ "audio_visualizer" "date" "clock" ];
        capsule_group = [
          {
            enabled = true;
            fill = "surface_variant";
            id = "g1";
            members = [ "wallhaven" "todo" "notes" ];
            opacity = 1.0;
            padding = 6.0;
            radius = 6.0;
          }
          {
            enabled = true;
            fill = "surface_variant";
            id = "g2";
            members = [ "battery" "network" "bluetooth" ];
            opacity = 1.0;
            padding = 6.0;
            radius = 6.0;
          }
        ];
      };
    };

  widget = {
    clock = {
      capsule = true;
      capsule_fill = "primary";
      color = "on_primary";
      format = "{:%I:%M}";
    };

    date = {
      format = "{:%a}";
    };

    battery = {
      color = "primary";
      display_mode = "graphic";
      show_label = false;
    };

    weather = {
      show_temperature = false;
      unit = "imperial";
    };

    tray.drawer = true;
    network.show_label = false;
    volume.show_label = false;

    taskbar = {
      scale = 1.0;
      group_by_workspace = true;
      hide_empty_workspaces = true;
      inactive_opacity = 0.8;
      show_active_indicator = true;
      workspace_group_capsule = true;
      empty_color = "tertiary";
      occupied_color = "tertiary";
    };

    wallpaper.default.path = "/home/b/Projects/nixos-config/modules/static/wallpaper.PNG";
    wallpaper.last.path = "/home/b/Projects/nixos-config/modules/static/wallpaper.PNG";
    wallpaper.monitors.eDP-1.path = "/home/b/Projects/nixos-config/modules/static/wallpaper.PNG";

  };

  plugin_settings = {
    "noctalia/wallhaven".api_key = "$(cat ${config.sops.secrets.wallhaven_api.path})";
  };
}
