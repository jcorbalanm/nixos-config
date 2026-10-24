
# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      #./latex.nix
      #./home-manager.nix
      <home-manager/nixos>
    ];


  nix.nixPath = [
    "nixos-config=${config.users.users.jcorbalan.home}/Repositorios/nixos-config/configuration.nix"
    "nixpkgs=/nix/var/nix/profiles/per-user/root/channels/nixos"
    "/nix/var/nix/profiles/per-user/root/channels"
  ];


  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  home-manager.useGlobalPkgs = true;

  boot.loader.systemd-boot.enable = true;
  #boot.loader.grub.enable = true;

  boot.loader.efi.canTouchEfiVariables = true;
  # boot.kernelParams = ["amdgpu.backlight=0"];
  boot.kernelPackages = pkgs.linuxPackages_zen;
  #boot.kernelPackages = pkgs.linuxPackages_6_11;

  networking.networkmanager.enable = true;

  networking.resolvconf.dnsExtensionMechanism = false;

  time.timeZone = "Europe/Madrid";

  i18n.defaultLocale = "es_ES.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "es_ES.UTF-8";
    LC_IDENTIFICATION = "es_ES.UTF-8";
    LC_MEASUREMENT = "es_ES.UTF-8";
    LC_MONETARY = "es_ES.UTF-8";
    LC_NAME = "es_ES.UTF-8";
    LC_NUMERIC = "es_ES.UTF-8";
    LC_PAPER = "es_ES.UTF-8";
    LC_TELEPHONE = "es_ES.UTF-8";
    LC_TIME = "es_ES.UTF-8";
  };

  console = {
    font = "Lat2-Terminus16";
    keyMap = "es";
  };

  services.xserver.enable = true;

  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;
  services.udev.packages = with pkgs; [ gnome-settings-daemon ];

  services.xserver.xkb.layout = "es";

  services.printing.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  services.libinput.enable = true;

  fonts.packages = with pkgs; [
    noto-fonts
    caladea
    open-sans
    bront_fonts
  ]  ++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts);


  programs.zsh.enable = true;
  users.users.jcorbalan = {
    isNormalUser = true;
    description = "Julio Corbalán Moreno";
    extraGroups = [ "wheel" "networkmanager" "audio"];
    shell = pkgs.zsh;
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOnJczJdAsB8wuI9yDWbRTCkclSK+vi6gFIeMWXHB7OU jcorbalan@mailbox.org"
    ];
  };
  home-manager.users.jcorbalan = { pkgs, ... }: {
    imports = [
      ./dconf.nix
    ];

    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    dconf.settings = {
      "org/virt-manager/virt-manager/connections" = {
        autoconnect = ["qemu:///system"];
        uris = ["qemu:///system"];
      };
    };

    home.packages = with pkgs; [
      (builtins.getFlake "github:0xc000022070/zen-browser-flake").packages."${stdenv.hostPlatform.system}".beta
      #inputs.zen-browser.packages."${system}".default # beta
      eza
      firefox
      tree
      fastfetch
      keepassxc
      lazygit
      vesktop
      spotify
      spotify-tray
      spotify-qt
      notion-app-enhanced
      #vscode
      #vscodium
      blackbox-terminal
      teams-for-linux
      gitkraken
      karere
      postman
      chromium
      #gnome-pomodoro
      gnomeExtensions.caffeine
      gnomeExtensions.wiggle
      gnomeExtensions.top-bar-organizer
      gnomeExtensions.just-perfection
      gnomeExtensions.tiling-shell
      gnomeExtensions.color-picker
      bibata-cursors
      drawio
      # COSAS DE LA CONSOLA --
      pay-respects
      starship
      # ----------------------
      # TFG; LATEX
      texlive.combined.scheme-full
      inkscape
      podman-desktop
      squeezelite
      # Bajo
      tuxguitar
      reaper
      reaper-sws-extension
    ];

    # Link SWS to the directory where REAPER expects it.
    home.file.".config/REAPER/UserPlugins/reaper_sws-x86_64.so".source = "${pkgs.reaper-sws-extension}/UserPlugins/reaper_sws-x86_64.so";

    programs.zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
      oh-my-zsh = {
        enable = true;
        plugins = [ "git" "pay-respects" ];
        #theme = "af-magic";
      };
      initContent = ''
        bindkey "''${key[Up]}" up-line-or-search
        bindkey "''${key[Down]}" down-line-or-search
        bindkey "^[[1;5D" backward-word
        bindkey "^[[1;5C" forward-word

        eval "$(starship init zsh)"

        eval "$(direnv hook zsh)"
      '';

      shellAliases = {
        ls = "eza --icons";
        ll = "/run/current-system/sw/bin/ls -l";
        checkout-branch = "cd /home/jcorbalan/Repositorios/nixos-config && git fetch --all && git checkout $HOST && git pull && cd -";
        uncheckout-branch = "cd /home/jcorbalan/Repositorios/nixos-config && git checkout master && cd -";
        update = " checkout-branch && (setopt pipefail; sudo nixos-rebuild switch |& nom) && uncheckout-branch";
        upgrade = "checkout-branch && (setopt pipefail; sudo nixos-rebuild switch --upgrade |& nom) && uncheckout-branch";
        change-mac = "sudo bash -c 'sudo tailscale down; systemctl stop NetworkManager; macchanger -r wlp4s0; sudo systemctl start NetworkManager'";
        restore-mac = "sudo bash -c 'sudo tailscale down; systemctl stop NetworkManager; macchanger -p wlp4s0; sudo systemctl start NetworkManager'";
        rebuild = "checkout-branch && (setopt pipefail; nixos-rebuild switch |& nom) && uncheckout-branch";
        disable-battery-conservation = "sudo /home/jcorbalan/lenovo-legion5-15arh05-scripts/BatteryConservation/disable_battery_conservation.sh";
        enable-battery-conservation = "sudo /home/jcorbalan/lenovo-legion5-15arh05-scripts/BatteryConservation/enable_battery_conservation.sh";
      };
      history.size = 10000;
    };

    programs.vscodium = {
      enable = true;
      #package = pkgs.vscodium;
      profiles.default.extensions = with pkgs.vscode-extensions; [
        #dracula-theme.theme-dracula
        #vscodevim.vim
        yzhang.markdown-all-in-one
        mkhl.direnv
        llvm-vs-code-extensions.vscode-clangd
        #ms-vscode-remote.remote-ssh-edit
        #ms-vscode-remote.remote-ssh
      ];
   };

    programs.git = {
      enable = true;
      settings.user.name = "Julio Corbalán Moreno";
      settings.user.email = "jcorbalan@mailbox.org";
      signing = {
        key = "EA6C6CFCF9DF839E954D899BCED6C3ED3A5085E7";
        signByDefault = true;
      };
    };

    systemd.user.startServices = true;
    systemd.user.services.squeezelite =
      let server = "192.168.0.188";
      in {
        Unit.Description = "squeezelite player";
        Unit.After = [ "network-online.target" "sound.target" ];
        Install.WantedBy = [ "default.target" ];
        Service = {
          ExecStart = "${pkgs.squeezelite}/bin/squeezelite -s ${server} -d all=info";
        };
      };

    home.stateVersion = "24.05";
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    libimobiledevice
    ifuse # optional, to mount using 'ifuse'
    ffmpeg-full
    gnome-tweaks
    gnome-remote-desktop
    foliate
    cheese
    libreoffice
    hunspell
    hunspellDicts.en_US
    hunspellDicts.es_ES
    nix-search-cli
    alacritty
    tinycc
    gparted
    ntfs3g
    lshw
    gnomeExtensions.appindicator
    gnomeExtensions.vitals
    gnomeExtensions.gtk4-desktop-icons-ng-ding
    gnomeExtensions.gsconnect
    gnomeExtensions.sound-output-device-chooser
    gnomeExtensions.blur-my-shell
    gnomeExtensions.luminus-desktop
    #gnomeExtensions.logo-widget
    gnomeExtensions.night-theme-switcher
    #gnomeExtensions.custom-accent-colors
    gnomeExtensions.clipboard-indicator
    tela-icon-theme
    colloid-icon-theme
    #man-db
    man-pages
    man-pages-posix
    htop
    btop
    #zsh
    thunderbird
    #gitkraken
    dbeaver-bin
    #python3
    distrobox
    macchanger
    vlc
    podman-compose
    obs-studio
    qbittorrent
    gimp
    #logo-ls
    mpv
    #hfsprogs
    filezilla
    direnv
    inetutils
    dynamic-wallpaper
    papers
    #zen-browser
    #virtiofsd
    dig
    folio
    libheif
    obsidian
    gnupg
    nix-output-monitor
  ];

  programs.gnupg.agent = {
    enable = true;
  };

  programs.steam = {
    enable = true;
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  };

  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = ["jcorbalan"];
  virtualisation.libvirtd = {
    enable = true;
    qemu.vhostUserPackages = with pkgs; [ virtiofsd ];
  };
  virtualisation.spiceUSBRedirection.enable = true;

  virtualisation.docker.rootless = {
    enable = true;
    setSocketVariable = true;
  };

  #virtualisation.podman = {
  #  enable = true;
  #  dockerCompat = true;
  #};

  services.syncthing.enable = true;
  services.syncthing.user = "jcorbalan";
  services.syncthing.dataDir = "/home/jcorbalan/";
  services.syncthing.configDir = "/home/jcorbalan/.config/syncthing";
  services.tailscale.enable = true;
  services.tailscale.useRoutingFeatures = "client";

  #services.squeezelite.enable = true;

  #services.plex.enable = true;

  programs.appimage.enable = true;
  programs.appimage.binfmt = true;

  #ios tethering
  services.usbmuxd.enable = true;

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  services.openssh = {
    enable = true;
    openFirewall = false;
    settings = {
      PasswordAuthentication = false;
      KbdInteractiveAuthentication = false;
      PermitRootLogin = "no";
      AllowUsers = [ "jcorbalan" ];
      MaxAuthTries = 3;
      PerSourcePenalties = "crash:3600s authfail:3600s max:86400s";
    };
  };
  networking.firewall.interfaces."tailscale0".allowedTCPPorts = [ 22 ];
  networking.firewall.checkReversePath = "loose";

  # Syncthing ports
  #networking.firewall.allowedTCPPorts = [ 8384 22000 32400 20000 ];
  #networking.firewall.allowedUDPPorts = [ 22000 21027 32400 20000 ];

  system.stateVersion = "24.05";

}

