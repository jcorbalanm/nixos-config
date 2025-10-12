# Generated via dconf2nix: https://github.com/nix-commmunity/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "apps/seahorse/listing" = {
      keyrings-selected = [ "gnupg://" ];
    };

    "apps/seahorse/windows/key-manager" = {
      height = 476;
      width = 600;
    };

    "ca/desrt/dconf-editor" = {
      saved-pathbar-path = "/org/gnome/settings-daemon/plugins/power/";
      saved-view = "/org/gnome/settings-daemon/plugins/power/";
      window-height = 500;
      window-is-maximized = true;
      window-width = 540;
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

    "com/github/johnfactotum/Foliate/window" = {
      default-height = 851;
      default-width = 1333;
      fullscreened = false;
      maximized = true;
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
      was-maximized = false;
      window-height = mkUint32 700;
      window-width = mkUint32 1100;
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

    "com/toolstack/Folio/WindowState" = {
      maximized = false;
      note = "Varios/Nota";
      text-scale = 130;
    };

    "org/gnome/Connections" = {
      first-run = false;
    };

    "org/gnome/Console" = {
      font-scale = mkDouble "1.4000000000000004";
      last-window-maximised = true;
      last-window-size = mkTuple [ 1462 828 ];
      theme = "auto";
    };

    "org/gnome/Geary" = {
      migrated-config = true;
    };

    "org/gnome/Loupe" = {
      show-properties = true;
    };

    "org/gnome/Snapshot" = {
      is-maximized = false;
      window-height = 640;
      window-width = 800;
    };

    "org/gnome/TextEditor" = {
      last-save-directory = "file:///home/jcorbalan/Escritorio";
    };

    "org/gnome/Totem" = {
      active-plugins = [ "open-directory" "variable-rate" "movie-properties" "skipto" "autoload-subtitles" "recent" "screensaver" "screenshot" "apple-trailers" "rotation" "mpris" "save-file" "vimeo" ];
      open-uri = "file:///home/jcorbalan/Descargas/The.Sopranos.S04.1080p.BluRay.x265-RARBG";
      subtitle-encoding = "UTF-8";
      subtitle-font = "Sans Bold 11";
    };

    "org/gnome/Weather" = {
      locations = [ (mkVariant (mkTuple [ (mkUint32 2) (mkVariant (mkTuple [ "Alicante" "LEAL" true [ (mkTuple [ (mkDouble "0.6681702094873982") (mkDouble "-9.599310885968814e-3") ]) ] [ (mkTuple [ (mkDouble "0.6693337681398254") (mkDouble "-8.435752233541753e-3") ]) ] ])) ])) ];
      window-height = 496;
      window-maximized = false;
      window-width = 992;
    };

    "org/gnome/baobab/ui" = {
      is-maximized = true;
      window-size = mkTuple [ 1593 729 ];
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
      window-maximized = false;
      window-size = mkTuple [ 383 626 ];
      word-size = 64;
    };

    "org/gnome/calendar" = {
      active-view = "week";
      week-view-zoom-level = mkDouble "1.0";
      window-maximized = true;
      window-size = mkTuple [ 768 600 ];
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

    "org/gnome/enter_tex/preferences/file-browser" = {
      current-directory = "file:///home/jcorbalan";
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

    "org/gnome/enter_tex/state/window" = {
      documents = [ "file:///home/jcorbalan/Syncthing/Universidad/5to%20Ing.%20Inf./2ndo%20Cuatri/TRABAJO%20FIN%20DE%20GRADO/TFG-TFM_EPS/TFG-TFM_EPS_UA.tex" ];
      side-panel-size = 256;
      size = mkTuple [ 1920 1011 ];
      state = 43908;
      structure-paned-position = 100;
      vertical-paned-position = 726;
    };

    "org/gnome/epiphany" = {
      ask-for-default = false;
    };

    "org/gnome/epiphany/state" = {
      is-maximized = true;
      window-size = mkTuple [ 1920 1048 ];
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
      window-ratio = mkTuple [ (mkDouble "1.9149881751662616") (mkDouble "1.2448185559296663") ];
      zoom = mkDouble "0.5060185239670296";
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/evolution-data-server/calendar" = {
      reminders-past = [];
    };

    "org/gnome/file-roller/dialogs/extract" = {
      height = 800;
      recreate-folders = true;
      skip-newer = false;
      width = 1000;
    };

    "org/gnome/file-roller/file-selector" = {
      show-hidden = false;
      sidebar-size = 300;
      window-size = mkTuple [ (-1) (-1) ];
    };

    "org/gnome/file-roller/listing" = {
      list-mode = "as-folder";
      name-column-width = 584;
      show-path = false;
      sort-method = "name";
      sort-type = "descending";
    };

    "org/gnome/file-roller/ui" = {
      sidebar-width = 200;
      window-height = 480;
      window-width = 1134;
    };

    "org/gnome/gnome-system-monitor" = {
      cpu-smooth-graph = true;
      cpu-stacked-area-chart = false;
      current-tab = "resources";
      graph-data-points = 300;
      logarithmic-scale = false;
      maximized = false;
      network-in-bits = false;
      network-total-in-bits = false;
      resources-memory-in-iec = false;
      show-dependencies = false;
      show-whose-processes = "user";
      smooth-refresh = true;
      update-interval = 1500;
      window-height = 928;
      window-width = 891;
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
      last-viewed-location = [ (mkDouble "38.363769639391776") (mkDouble "-0.44249775764870947") ];
      map-type = "MapsVectorSource";
      transportation-type = "pedestrian";
      window-maximized = false;
      window-size = [ 1097 420 ];
      zoom-level = 18;
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

    "org/gnome/nautilus/window-state" = {
      maximized = true;
    };

    "org/gnome/nm-applet/eap/29f6a698-b97c-48f0-8c73-48ef0191513b" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/418c7498-39ae-325c-8e5e-b35f691695b7" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/81c38b30-5988-4e88-b43d-b63adf61835e" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/83776dd4-5428-43e7-8150-da7c6df9fa2f" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/a3321948-2dc5-432f-85c8-e6eae1a94499" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/a6c52d0c-3e46-4f94-8828-0a2d97b15261" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/a7b0e4d5-2105-47a0-b9dc-efe10379e800" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/aefa3717-c117-4ad8-b905-15acf8bd7733" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/d7ce758c-0ce6-409d-950b-a756e1d687a0" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/e1a362b5-d1b8-45f6-aabf-e0c32a08a5b3" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/e5c0d2ae-9a69-4186-999b-a3005954260f" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
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
      window-ratio = mkTuple [ (mkDouble "1.4564672521653819") (mkDouble "1.2436304030217724") ];
      zoom = mkDouble "1.2642946267281283";
    };

    "org/gnome/pomodoro/state" = {
      timer-date = "2025-01-13T21:13:55+0000";
      timer-elapsed = mkDouble "0.0";
      timer-paused = false;
      timer-score = mkDouble "0.0";
      timer-state = "null";
      timer-state-date = "2025-01-13T21:13:55+0000";
      timer-state-duration = mkDouble "0.0";
    };

    "org/gnome/portal/filechooser/GitKraken Desktop" = {
      last-folder-path = "/home/jcorbalan/Syncthing/Universidad/5to Ing. Inf./1er Cuatri/Sistemas Distribuidos/Prácticas/EasyCab";
    };

    "org/gnome/portal/filechooser/chromium-browser" = {
      last-folder-path = "/home/jcorbalan/Descargas";
    };

    "org/gnome/portal/filechooser/com/github/johnfactotum/Foliate" = {
      last-folder-path = "/home/jcorbalan/Syncthing/Lecturas";
    };

    "org/gnome/portal/filechooser/org/gnome/Loupe" = {
      last-folder-path = "/home/jcorbalan/Imágenes";
    };

    "org/gnome/portal/filechooser/org/gnome/Papers" = {
      last-folder-path = "/home/jcorbalan/Syncthing/Universidad/5to Ing. Inf./2ndo Cuatri/Automatización y Robótica/Prácticas";
    };

    "org/gnome/portal/filechooser/org/gnome/Settings" = {
      last-folder-path = "/home/jcorbalan/Syncthing/Otros";
    };

    "org/gnome/portal/filechooser/org/gnome/tweaks" = {
      last-folder-path = "/home/jcorbalan/Syncthing/Fotos/Fondos de pantalla";
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

    "org/gnome/shell/extensions/gsconnect/device/7c3271f1-1e98-4726-8cd3-d7e277228119" = {
      incoming-capabilities = [ "kdeconnect.battery" "kdeconnect.battery.request" "kdeconnect.clipboard" "kdeconnect.clipboard.connect" "kdeconnect.connectivity_report" "kdeconnect.contacts.response_uids_timestamps" "kdeconnect.contacts.response_vcards" "kdeconnect.findmyphone.request" "kdeconnect.mousepad.echo" "kdeconnect.mousepad.keyboardstate" "kdeconnect.mousepad.request" "kdeconnect.mpris" "kdeconnect.mpris.request" "kdeconnect.notification" "kdeconnect.notification.request" "kdeconnect.ping" "kdeconnect.presenter" "kdeconnect.runcommand" "kdeconnect.runcommand.request" "kdeconnect.sftp" "kdeconnect.share.request" "kdeconnect.sms.messages" "kdeconnect.systemvolume.request" "kdeconnect.telephony" ];
      last-connection = "lan://10.42.0.1:1716";
      name = "alvaro-manjaro";
      outgoing-capabilities = [ "kdeconnect.battery" "kdeconnect.battery.request" "kdeconnect.clipboard" "kdeconnect.clipboard.connect" "kdeconnect.connectivity_report.request" "kdeconnect.contacts.request_all_uids_timestamps" "kdeconnect.contacts.request_vcards_by_uid" "kdeconnect.findmyphone.request" "kdeconnect.mousepad.echo" "kdeconnect.mousepad.keyboardstate" "kdeconnect.mousepad.request" "kdeconnect.mpris" "kdeconnect.mpris.request" "kdeconnect.notification" "kdeconnect.notification.action" "kdeconnect.notification.reply" "kdeconnect.notification.request" "kdeconnect.ping" "kdeconnect.runcommand" "kdeconnect.runcommand.request" "kdeconnect.sftp.request" "kdeconnect.share.request" "kdeconnect.sms.request" "kdeconnect.sms.request_conversation" "kdeconnect.sms.request_conversations" "kdeconnect.systemvolume" "kdeconnect.telephony.request" "kdeconnect.telephony.request_mute" ];
      supported-plugins = [ "battery" "clipboard" "findmyphone" "mousepad" "mpris" "notification" "ping" "runcommand" "share" ];
      type = "laptop";
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
      hot-sensors = [ "_processor_usage_" "_memory_usage_" "_system_uptime_" "_temperature_k10temp_tctl_" ];
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
      sidebar-width = 140;
      sort-column = "name";
      sort-directories-first = true;
      sort-order = "ascending";
      type-format = "category";
      view-type = "list";
      window-size = mkTuple [ 859 372 ];
    };

    "org/gtk/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 355;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-position = mkTuple [ 26 23 ];
      window-size = mkTuple [ 1203 871 ];
    };

    "org/virt-manager/virt-manager" = {
      manager-window-height = 1011;
      manager-window-width = 1920;
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

    "org/virt-manager/virt-manager/urls" = {
      isos = [ "/home/jcorbalan/Descargas/nixos-gnome-24.11.716947.26d499fc9f1d-x86_64-linux.iso" "/home/jcorbalan/Descargas/virtio-win-0.1.266.iso" "/home/jcorbalan/Descargas/Win10_22H2_Spanish_x64v1.iso" ];
    };

    "org/virt-manager/virt-manager/vmlist-fields" = {
      disk-usage = false;
      network-traffic = false;
    };
  };
}
