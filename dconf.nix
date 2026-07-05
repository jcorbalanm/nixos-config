# Generated via dconf2nix: https://github.com/nix-commmunity/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "apps/seahorse/listing" = {
      keyrings-selected = [ "gnupg://" ];
    };

    "com/github/johnfactotum/Foliate/library" = {
      view-mode = "grid";
    };

    "com/github/johnfactotum/Foliate/viewer" = {
      fold-sidebar = true;
    };

    "com/github/johnfactotum/Foliate/viewer/view" = {
      gap = mkDouble "4.999999999999999e-2";
      hyphenate = true;
      justify = true;
      max-block-size = mkUint32 1800;
      max-column-count = mkUint32 2;
      max-inline-size = mkUint32 1200;
      override-font = false;
      theme = "default";
    };

    "com/raggesilver/BlackBox" = {
      command-as-login-shell = false;
      context-aware-header-bar = true;
      fill-tabs = true;
      font = "MartianMono Nerd Font 12";
      pretty = true;
      remember-window-size = true;
      scrollback-lines = mkUint32 5000;
      show-headerbar = true;
      show-menu-button = true;
      terminal-padding = mkTuple [ (mkUint32 10) (mkUint32 10) (mkUint32 10) (mkUint32 10) ];
      theme-bold-is-bright = false;
      theme-dark = "Adwaita Dark";
      theme-light = "Adwaita";
      working-directory-mode = mkUint32 0;
    };

    "com/toolstack/Folio" = {
      disable-hidden-trash = false;
      enable-3-pane = false;
      enable-autosave = true;
      long-note-names = false;
      long-notebook-names = false;
      note-font = "Sans 13";
      note-font-monospace = "MonaspiceNe Nerd Font Mono Light 13";
      note-max-width = -1;
      notes-dir = "/home/jcorbalan/Syncthing/Apps/folio";
      show-line-numbers = true;
      trash-dir = "/home/jcorbalan/Syncthing/Apps/folio";
    };

    "org/gnome/Connections" = {
      first-run = false;
    };

    "org/gnome/Console" = {
      font-scale = mkDouble "1.4000000000000004";
      theme = "auto";
    };

    "org/gnome/Geary" = {
      migrated-config = true;
    };

    "org/gnome/Loupe" = {
      show-properties = true;
    };

    "org/gnome/Totem" = {
      active-plugins = [ "open-directory" "variable-rate" "movie-properties" "skipto" "autoload-subtitles" "recent" "screensaver" "screenshot" "apple-trailers" "rotation" "mpris" "save-file" "vimeo" ];
      subtitle-encoding = "UTF-8";
      subtitle-font = "Sans Bold 11";
    };

    "org/gnome/Weather" = {
      locations = [ (mkVariant (mkTuple [ (mkUint32 2) (mkVariant (mkTuple [ "Alicante" "LEAL" true [ (mkTuple [ (mkDouble "0.6681702094873982") (mkDouble "-9.599310885968814e-3") ]) ] [ (mkTuple [ (mkDouble "0.6693337681398254") (mkDouble "-8.435752233541753e-3") ]) ] ])) ])) ];
    };

    "org/gnome/calculator" = {
      accuracy = 9;
      angle-units = "degrees";
      base = 10;
      button-mode = "basic";
      number-format = "automatic";
      show-thousands = false;
      show-zeroes = false;
      source-currency = "";
      source-units = "degree";
      target-currency = "";
      target-units = "radian";
      word-size = 64;
    };

    "org/gnome/calendar" = {
      active-view = "week";
      week-view-zoom-level = mkDouble "1.0";
    };

    "org/gnome/cheese" = {
      burst-delay = 1000;
      camera = "Integrated Camera (V4L2)";
      photo-x-resolution = 1280;
      photo-y-resolution = 720;
      video-x-resolution = 1280;
      video-y-resolution = 720;
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [ "Utilities" "YaST" "Pardus" ];
    };

    "org/gnome/desktop/app-folders/folders/Pardus" = {
      categories = [ "X-Pardus-Apps" ];
      name = "X-Pardus-Apps.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [ "gnome-abrt.desktop" "gnome-system-log.desktop" "nm-connection-editor.desktop" "org.gnome.baobab.desktop" "org.gnome.Connections.desktop" "org.gnome.DejaDup.desktop" "org.gnome.Dictionary.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.Evince.desktop" "org.gnome.FileRoller.desktop" "org.gnome.fonts.desktop" "org.gnome.Loupe.desktop" "org.gnome.seahorse.Application.desktop" "org.gnome.tweaks.desktop" "org.gnome.Usage.desktop" "vinagre.desktop" ];
      categories = [ "X-GNOME-Utilities" ];
      name = "X-GNOME-Utilities.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/YaST" = {
      categories = [ "X-SuSE-YaST" ];
      name = "suse-yast.directory";
      translate = true;
    };

    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///home/jcorbalan/Imágenes/Fondos de pantalla/2025/kali-blur-base.png";
      picture-uri-dark = "file:///home/jcorbalan/Imágenes/Fondos de pantalla/2025/kali-blur-base.png";
      primary-color = "#000000000000";
      secondary-color = "#000000000000";
    };

    "org/gnome/desktop/calendar" = {
      show-weekdate = false;
    };

    "org/gnome/desktop/datetime" = {
      automatic-timezone = false;
    };

    "org/gnome/desktop/input-sources" = {
      mru-sources = [ (mkTuple [ "xkb" "us" ]) ];
      show-all-sources = false;
      sources = [ (mkTuple [ "xkb" "es" ]) ];
      xkb-options = [ "terminate:ctrl_alt_bksp" ];
    };

    "org/gnome/desktop/interface" = {
      accent-color = "blue";
      clock-show-date = true;
      clock-show-seconds = true;
      clock-show-weekday = true;
      color-scheme = "default";
      cursor-theme = "Bibata-Modern-Ice";
      enable-animations = true;
      enable-hot-corners = false;
      gtk-enable-primary-paste = false;
      gtk-theme = "Adwaita";
      icon-theme = "Colloid";
      show-battery-percentage = true;
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "org-gnome-console" "org-gnome-tweaks" "gnome-power-panel" "org-gnome-baobab" "firefox" "spotify" "codium" "org-gnome-characters" "com-raggesilver-blackbox" "writer" "org-gnome-nautilus" "org-gnome-maps" "org-gnome-calendar" "org-gnome-fileroller" "org-gnome-texteditor" "org-gnome-settings" "org-gnome-totem" "com-obsproject-studio" "org-qbittorrent-qbittorrent" "dbeaver" "gimp" "org-keepassxc-keepassxc" "thunderbird" "org-gnome-systemmonitor" "uget-gtk" "filezilla" "mpv" "vesktop" "org-gnome-evince" "impress" "motrix" "vlc" "teams-for-linux" "draw" "texstudio" "virtualbox" "steam" "zen" "zen-beta" ];
      show-banners = true;
    };

    "org/gnome/desktop/notifications/application/codium" = {
      application-id = "codium.desktop";
    };

    "org/gnome/desktop/notifications/application/com-obsproject-studio" = {
      application-id = "com.obsproject.Studio.desktop";
    };

    "org/gnome/desktop/notifications/application/com-raggesilver-blackbox" = {
      application-id = "com.raggesilver.BlackBox.desktop";
    };

    "org/gnome/desktop/notifications/application/dbeaver" = {
      application-id = "dbeaver.desktop";
    };

    "org/gnome/desktop/notifications/application/draw" = {
      application-id = "draw.desktop";
    };

    "org/gnome/desktop/notifications/application/filezilla" = {
      application-id = "filezilla.desktop";
    };

    "org/gnome/desktop/notifications/application/firefox" = {
      application-id = "firefox.desktop";
    };

    "org/gnome/desktop/notifications/application/gimp" = {
      application-id = "gimp.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-power-panel" = {
      application-id = "gnome-power-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-printers-panel" = {
      application-id = "gnome-printers-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/impress" = {
      application-id = "impress.desktop";
    };

    "org/gnome/desktop/notifications/application/motrix" = {
      application-id = "motrix.desktop";
    };

    "org/gnome/desktop/notifications/application/mpv" = {
      application-id = "mpv.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-baobab" = {
      application-id = "org.gnome.baobab.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-calendar" = {
      application-id = "org.gnome.Calendar.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-characters" = {
      application-id = "org.gnome.Characters.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-console" = {
      application-id = "org.gnome.Console.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-evince" = {
      application-id = "org.gnome.Evince.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-fileroller" = {
      application-id = "org.gnome.FileRoller.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-maps" = {
      application-id = "org.gnome.Maps.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-nautilus" = {
      application-id = "org.gnome.Nautilus.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-papers" = {
      application-id = "org.gnome.Papers.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-settings" = {
      application-id = "org.gnome.Settings.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-systemmonitor" = {
      application-id = "org.gnome.SystemMonitor.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-texteditor" = {
      application-id = "org.gnome.TextEditor.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-totem" = {
      application-id = "org.gnome.Totem.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-tweaks" = {
      application-id = "org.gnome.tweaks.desktop";
    };

    "org/gnome/desktop/notifications/application/org-keepassxc-keepassxc" = {
      application-id = "org.keepassxc.KeePassXC.desktop";
    };

    "org/gnome/desktop/notifications/application/org-qbittorrent-qbittorrent" = {
      application-id = "org.qbittorrent.qBittorrent.desktop";
    };

    "org/gnome/desktop/notifications/application/spotify" = {
      application-id = "spotify.desktop";
    };

    "org/gnome/desktop/notifications/application/steam" = {
      application-id = "steam.desktop";
    };

    "org/gnome/desktop/notifications/application/teams-for-linux" = {
      application-id = "teams-for-linux.desktop";
    };

    "org/gnome/desktop/notifications/application/texstudio" = {
      application-id = "texstudio.desktop";
    };

    "org/gnome/desktop/notifications/application/thunderbird" = {
      application-id = "thunderbird.desktop";
    };

    "org/gnome/desktop/notifications/application/uget-gtk" = {
      application-id = "uget-gtk.desktop";
    };

    "org/gnome/desktop/notifications/application/vesktop" = {
      application-id = "vesktop.desktop";
    };

    "org/gnome/desktop/notifications/application/virtualbox" = {
      application-id = "virtualbox.desktop";
    };

    "org/gnome/desktop/notifications/application/vlc" = {
      application-id = "vlc.desktop";
    };

    "org/gnome/desktop/notifications/application/writer" = {
      application-id = "writer.desktop";
    };

    "org/gnome/desktop/notifications/application/zen-beta" = {
      application-id = "zen-beta.desktop";
    };

    "org/gnome/desktop/notifications/application/zen" = {
      application-id = "zen.desktop";
    };

    "org/gnome/desktop/peripherals/keyboard" = {
      numlock-state = true;
    };

    "org/gnome/desktop/peripherals/mouse" = {
      natural-scroll = false;
    };

    "org/gnome/desktop/peripherals/pointingstick" = {
      accel-profile = "flat";
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      click-method = "areas";
      natural-scroll = true;
      speed = mkDouble "0.2727272727272727";
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/privacy" = {
      old-files-age = mkUint32 30;
      recent-files-max-age = -1;
    };

    "org/gnome/desktop/screensaver" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///home/jcorbalan/Syncthing/Fotos/Fondos de pantalla/2025/fondo.png";
      primary-color = "#000000000000";
      secondary-color = "#000000000000";
    };

    "org/gnome/desktop/search-providers" = {
      enabled = [ "org.gnome.Weather.desktop" ];
      sort-order = [ "org.gnome.Contacts.desktop" "org.gnome.Documents.desktop" "org.gnome.Nautilus.desktop" ];
    };

    "org/gnome/desktop/session" = {
      idle-delay = mkUint32 600;
    };

    "org/gnome/desktop/sound" = {
      event-sounds = true;
      theme-name = "__custom";
    };

    "org/gnome/desktop/wm/preferences" = {
      button-layout = "appmenu:minimize,maximize,close";
      focus-mode = "sloppy";
    };

    "org/gnome/enter_tex" = {
      settings-migration-done = true;
    };

    "org/gnome/enter_tex/preferences/ui" = {
      bottom-panel-visible = true;
      edit-toolbar-visible = true;
      main-toolbar-visible = true;
      show-build-badboxes = true;
      show-build-warnings = true;
      side-panel-component = "symbols";
      side-panel-visible = false;
    };

    "org/gnome/epiphany" = {
      ask-for-default = false;
    };

    "org/gnome/evince/default" = {
      continuous = true;
      dual-page = false;
      dual-page-odd-left = false;
      enable-spellchecking = true;
      fullscreen = false;
      inverted-colors = false;
      show-sidebar = true;
      sidebar-page = "thumbnails";
      sidebar-size = 148;
      sizing-mode = "automatic";
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/evolution-data-server/calendar" = {
      reminders-past = [];
    };

    "org/gnome/file-roller/dialogs/extract" = {
      recreate-folders = true;
      skip-newer = false;
    };

    "org/gnome/file-roller/file-selector" = {
      show-hidden = false;
    };

    "org/gnome/file-roller/listing" = {
      list-mode = "as-folder";
      show-path = false;
      sort-method = "name";
      sort-type = "descending";
    };

    "org/gnome/gnome-system-monitor" = {
      cpu-smooth-graph = true;
      cpu-stacked-area-chart = false;
      current-tab = "resources";
      graph-data-points = 300;
      logarithmic-scale = false;
      network-in-bits = false;
      network-total-in-bits = false;
      resources-memory-in-iec = false;
      show-dependencies = false;
      show-whose-processes = "user";
      smooth-refresh = true;
      update-interval = 1500;
    };

    "org/gnome/gnome-system-monitor/disksview" = {
      col-available-width = 101;
      col-device-width = 479;
      col-directory-width = 334;
      col-total-width = 80;
      col-type-width = 67;
      col-used-width = 324;
      columns-order = [ "used" "device" "directory" "total" "available" "type" "free" ];
      sort-col = "device";
      sort-order = 0;
    };

    "org/gnome/gnome-system-monitor/disktreenew" = {
      col-4-visible = true;
      col-4-width = 95;
      col-6-visible = true;
      col-6-width = 0;
    };

    "org/gnome/gnome-system-monitor/proctree" = {
      col-0-visible = true;
      col-0-width = 188;
      col-1-visible = true;
      col-14-visible = true;
      col-14-width = 120;
      col-2-visible = true;
      col-2-width = 106;
      col-20-visible = true;
      col-20-width = 72;
      col-21-visible = true;
      col-21-width = 88;
      col-24-visible = true;
      col-24-width = 138;
      col-25-visible = true;
      col-25-width = 388;
      col-26-visible = false;
      col-26-width = 0;
      col-9-visible = true;
      col-9-width = 80;
      columns-order = [ 0 1 2 3 4 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 ];
      sort-col = 1;
      sort-order = 0;
    };

    "org/gnome/maps" = {
      map-type = "MapsVectorSource";
      transportation-type = "pedestrian";
    };

    "org/gnome/mutter" = {
      center-new-windows = true;
      dynamic-workspaces = true;
      edge-tiling = true;
    };

    "org/gnome/nautilus/icon-view" = {
      default-zoom-level = "extra-large";
    };

    "org/gnome/nautilus/list-view" = {
      default-column-order = [ "name" "size" "type" "owner" "group" "permissions" "date_modified" "date_accessed" "date_created" "recency" "detailed_type" ];
      default-visible-columns = [ "name" "size" "date_modified" "detailed_type" ];
      default-zoom-level = "large";
      use-tree-view = true;
    };

    "org/gnome/nautilus/preferences" = {
      date-time-format = "simple";
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      recursive-search = "always";
      search-filter-time-type = "last_modified";
      show-create-link = true;
      show-delete-permanently = true;
      show-directory-item-counts = "always";
      show-image-thumbnails = "always";
    };

    "org/gnome/papers/default" = {
      annot-color = "yellow";
      continuous = true;
      dual-page = false;
      dual-page-odd-left = true;
      enable-spellchecking = false;
      fullscreen = false;
      inverted-colors = false;
      show-sidebar = false;
      sidebar-page = "thumbnails";
      sizing-mode = "free";
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = true;
      night-light-schedule-automatic = false;
      night-light-schedule-from = mkDouble "19.0";
      night-light-schedule-to = mkDouble "9.0";
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Super>t";
      command = "blackbox";
      name = "Terminal";
    };

    "org/gnome/settings-daemon/plugins/power" = {
      sleep-inactive-ac-type = "nothing";
      sleep-inactive-battery-timeout = 1200;
      power-button-action = "suspend";
    };

    "org/gnome/shell" = {
      disable-user-extensions = false;
      disabled-extensions = [ "light-style@gnome-shell-extensions.gcampax.github.com" "luminus-desktop@dikasp.gitlab" "gnome-clipboard@b00f.github.io" "apps-menu@gnome-shell-extensions.gcampax.github.com" "auto-move-windows@gnome-shell-extensions.gcampax.github.com" "sound-output-device-chooser@kgshank.net" "system-monitor@gnome-shell-extensions.gcampax.github.com" "window-list@gnome-shell-extensions.gcampax.github.com" "windowsNavigator@gnome-shell-extensions.gcampax.github.com" "workspace-indicator@gnome-shell-extensions.gcampax.github.com" "logowidget@github.com.howbea" "wiggle@mechtifs" ];
      enabled-extensions = [ "drive-menu@gnome-shell-extensions.gcampax.github.com" "ding@rastersoft.com" "luminus-shell-y@dikasp.gitlab" "appindicatorsupport@rgcjonas.gmail.com" "blur-my-shell@aunetx" "clipboard-indicator@tudmotu.com" "custom-accent-colors@demiskp" "nightthemeswitcher@romainvigier.fr" "gsconnect@andyholmes.github.io" "pomodoro@arun.codito.in" "caffeine@patapon.info" "Vitals@CoreCoding.com" "gtk4-ding@smedius.gitlab.com" "status-icons@gnome-shell-extensions.gcampax.github.com" "top-bar-organizer@julian.gse.jsts.xyz" "just-perfection-desktop@just-perfection" "tiling-assistant@leleat-on-github"];
      favorite-apps = [ "zen-beta.desktop" "thunderbird.desktop" "org.gnome.Nautilus.desktop" "codium.desktop" "spotify.desktop" "steam.desktop" "firefox.desktop" "com.github.johnfactotum.Foliate.desktop" "obsidian.desktop" ];
      last-selected-power-profile = "power-saver";
      welcome-dialog-last-shown-version = "46.2";
    };

    "org/gnome/shell/app-switcher" = {
      current-workspace-only = true;
    };

    "org/gnome/shell/extensions/blur-my-shell" = {
      settings-version = 2;
    };

    "org/gnome/shell/extensions/blur-my-shell/appfolder" = {
      brightness = mkDouble "0.6";
      sigma = 30;
    };

    "org/gnome/shell/extensions/blur-my-shell/dash-to-dock" = {
      blur = true;
      brightness = mkDouble "0.6";
      sigma = 30;
      static-blur = true;
      style-dash-to-dock = 0;
    };

    "org/gnome/shell/extensions/blur-my-shell/panel" = {
      brightness = mkDouble "0.6";
      sigma = 30;
    };

    "org/gnome/shell/extensions/blur-my-shell/window-list" = {
      brightness = mkDouble "0.6";
      sigma = 30;
    };

    "org/gnome/shell/extensions/caffeine" = {
      enable-fullscreen = false;
      indicator-position-max = 2;
      show-indicator = "only-active";
      show-timer = true;
      toggle-state = false;
      user-enabled = false;
    };

    "org/gnome/shell/extensions/clipboard-indicator" = {
      history-size = 30;
    };

    "org/gnome/shell/extensions/custom-accent-colors" = {
      accent-color = "green";
    };

    "org/gnome/shell/extensions/gsconnect" = {
      devices = [];
      enabled = false;
      id = "1d576a9f-bc2a-4b71-af78-9ec1528d0669";
      name = "nixos-portatil";
    };

    "org/gnome/shell/extensions/gtk4-ding" = {
      add-volumes-opposite = false;
      arrangeorder = "KIND";
      dark-text-in-labels = false;
      icon-size = "standard";
      show-home = false;
      show-network-volumes = false;
      show-trash = false;
      show-volumes = false;
      start-corner = "top-left";
    };

    "org/gnome/shell/extensions/just-perfection" = {
      calendar = false;
      clock-menu = true;
      max-displayed-search-results = 0;
      panel-in-overview = true;
      power-icon = true;
      support-notifier-showed-version = 34;
      support-notifier-type = 0;
      top-panel-position = 1;
      window-picker-icon = true;
      world-clock = false;
    };

    "org/gnome/shell/extensions/nightthemeswitcher/time" = {
      manual-schedule = true;
      nightthemeswitcher-ondemand-keybinding = [ "<Shift><Super>t" ];
    };

    "org/gnome/shell/extensions/top-bar-organizer" = {
      center-box-order = [ "dateMenu" ];
      left-box-order = [ "activities" "vitalsMenu" ];
      right-box-order = [ "tiling-assistant@leleat-on-github" "appindicator-kstatusnotifieritem-spotify-client" "appindicator-kstatusnotifieritem-vlc" "drive-menu" "clipboardIndicator" "screenRecording" "screenSharing" "dwellClick" "a11y" "keyboard" "quickSettings" ];
    };

    "org/gnome/shell/extensions/vitals" = {
      hot-sensors = [ "_processor_usage_" "_memory_usage_" "_system_uptime_" "_temperature_k10temp_tctl_" "_battery_time_left" ];
      show-battery = true;
    };
    "org/gnome/shell/weather" = {
      automatic-location = true;
      locations = [ (mkVariant (mkTuple [ (mkUint32 2) (mkVariant (mkTuple [ "Alicante" "LEAL" true [ (mkTuple [ (mkDouble "0.6681702094873982") (mkDouble "-9.599310885968814e-3") ]) ] [ (mkTuple [ (mkDouble "0.6693337681398254") (mkDouble "-8.435752233541753e-3") ]) ] ])) ])) ];
    };

    "org/gnome/shell/world-clocks" = {
      locations = mkArray "v" [];
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "org/gtk/gtk4/settings/color-chooser" = {
      selected-color = mkTuple [ true (mkDouble "0.20000000298023224") (mkDouble "0.8196078538894653") (mkDouble "0.47843137383461") (mkDouble "1.0") ];
    };

    "org/gtk/gtk4/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      sort-column = "name";
      sort-directories-first = true;
      sort-order = "ascending";
      type-format = "category";
      view-type = "list";
    };

    "org/gtk/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
    };

    "org/virt-manager/virt-manager/confirm" = {
      unapplied-dev = true;
    };

    "org/virt-manager/virt-manager/connections" = {
      autoconnect = ["qemu:///system" ];
      uris = ["qemu:///system" ];
    };

    "org/virt-manager/virt-manager/details" = {
      show-toolbar = true;
    };

    "org/virt-manager/virt-manager/new-vm" = {
      graphics-type = "system";
    };

    "org/virt-manager/virt-manager/paths" = {
      media-default = "/home/jcorbalan/Descargas";
    };

    "org/virt-manager/virt-manager/stats" = {
      enable-disk-poll = true;
      enable-memory-poll = true;
      enable-net-poll = true;
    };

    "org/virt-manager/virt-manager/vmlist-fields" = {
      disk-usage = false;
      network-traffic = false;
    };
  };
}
