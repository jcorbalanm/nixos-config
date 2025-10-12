
# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, ... }:

#environment.sessionVariables.GST_PLUGIN_SYSTEM_PATH_1_0 = lib.makeSearchPathOutput "lib" "lib/gstreamer-1.0" (with pkgs.gst_all_1; [
#  gst-plugins-good
#  gst-plugins-bad
#  gst-plugins-ugly
#  gst-libav
#]);

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

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  #boot.loader.grub.enable = true;  

  boot.loader.efi.canTouchEfiVariables = true;
  # boot.kernelParams = ["amdgpu.backlight=0"];
  boot.kernelPackages = pkgs.linuxPackages_zen;
  #boot.kernelPackages = pkgs.linuxPackages_6_11;

  # Pick only one of the below networking options.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

  networking.resolvconf.dnsExtensionMechanism = false;
  #networking.dnsExtensionMechanism = false;

  # Set your time zone.
  time.timeZone = "Europe/Madrid";

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
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
  
  # Was not IN VM
  console = {
    font = "Lat2-Terminus16";
    keyMap = "es";
  #   useXkbConfig = true; # use xkb.options in tty.
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  #services.xserver.displayManager.sddm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  #services.xserver.desktopManager.xterm.enable = true;
  #services.xserver.desktopManager.xfce.enable = true;

  #services.xserver.desktopManager.cinnamon.enable = true;
  services.udev.packages = with pkgs; [ gnome-settings-daemon ];

  # Configure keymap in X11
  services.xserver.xkb.layout = "es";
  # services.xserver.xkb.options = "eurosign:e,caps:escape";

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound.
  #hardware.pulseaudio.enable = true;
  # OR
  # services.pipewire = {
  #   enable = true;
  #   pulse.enable = true;
  # };

  # Enable touchpad support (enabled default in most desktopManager).
  services.libinput.enable = true;

  fonts.packages = with pkgs; [
    noto-fonts
    caladea
    open-sans
    bront_fonts
  ]  ++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts);


  programs.zsh.enable = true;
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.jcorbalan = {
    isNormalUser = true;
    description = "Julio Corbalán Moreno";
    extraGroups = [ "wheel" "networkmanager" "docker" "audio"]; # Enable ‘sudo’ for the user.
    shell = pkgs.zsh;
  };
  #home-manager.users.jcorbalan = { pkgs, ... }: {
  #  program.zsh.enable = true;


  home-manager.users.jcorbalan = { pkgs, ... }: {
    imports = [
      ./dconf.nix
    ];

    #isNormalUser = true;
    #home = "/home/jcorbalan";
    #description = "Julio... Corbalán Moreno";
    #extraGroups = [ "wheel" "networkmanager" "vboxusers" "docker"]; # Enable ‘sudo’ for the user

    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    dconf.settings = {
      "org/virt-manager/virt-manager/connections" = {
        autoconnect = ["qemu:///system"];
        uris = ["qemu:///system"];
      };
    };

    home.packages = with pkgs; [
      (builtins.getFlake "github:0xc000022070/zen-browser-flake").packages."${system}".beta
      #inputs.zen-browser.packages."${system}".default # beta
      eza
      firefox
      tree
      neofetch
      keepassxc
      #git
      vesktop
      spotify
      spotify-qt
      notion-app-enhanced
      #vscode
      #vscodium
      blackbox-terminal
      teams-for-linux
      gitkraken
      whatsapp-for-linux
      postman
      chromium
      #gnome-pomodoro
      gnomeExtensions.caffeine
      gnomeExtensions.wiggle
      gnomeExtensions.top-bar-organizer
      gnomeExtensions.just-perfection
      gnomeExtensions.spotify-tray
      gnomeExtensions.tiling-shell
      gnomeExtensions.color-picker
      bibata-cursors
      drawio
      # COSAS DE LA CONSOLA --
      thefuck
      starship
      # ----------------------
      # TFG; LATEX
      texlive.combined.scheme-full
      inkscape
      podman-desktop
      squeezelite
    ];

    programs.zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
      oh-my-zsh = {
        enable = true;
        plugins = [ "git" "thefuck" ];
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
        update = "sudo nixos-rebuild switch";
        upgrade = "sudo nixos-rebuild switch --upgrade";
        change-mac = "sudo bash -c 'sudo tailscale down; systemctl stop NetworkManager; macchanger -r wlp4s0; sudo systemctl start NetworkManager'";
        restore-mac = "sudo bash -c 'sudo tailscale down; systemctl stop NetworkManager; macchanger -p wlp4s0; sudo systemctl start NetworkManager'";
        rebuild = "sudo bash -c 'nano /home/jcorbalan/Repositorios/nixos-config/configuration.nix; nixos-rebuild switch'";
	      disable-battery-conservation = "sudo /home/jcorbalan/lenovo-legion5-15arh05-scripts/BatteryConservation/disable_battery_conservation.sh";
	      enable-battery-conservation = "sudo /home/jcorbalan/lenovo-legion5-15arh05-scripts/BatteryConservation/enable_battery_conservation.sh";
      };
      history.size = 10000;
    };

    programs.vscode = {
      enable = true;
      package = pkgs.vscodium;
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
      userName = "Julio Corbalán Moreno";
      userEmail = "jcorbalanm@mailbox.org";
    };
  
    systemd.user.startServices = true;
    systemd.user.services.squeezelite =
      let name = "myplayer";
          server = "192.168.0.188";
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

  #programs.firefox.enable;
  #nixpkgs.overlays =
  #  let
  #    # Change this to a rev sha to pin
  #    moz-rev = "master";
  #    moz-url = builtins.fetchTarball { url = "https://github.com/mozilla/nixpkgs-mozilla/archive/${moz-rev}.tar.gz";};
  #    nightlyOverlay = (import "${moz-url}/firefox-overlay.nix");
  #  in [
  #    nightlyOverlay
  #  ];
  #programs.firefox.package = pkgs.latest.firefox-nightly-bin;

  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  #   vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #   wget
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
    gnomeExtensions.luminus-shell-y
    gnomeExtensions.luminus-desktop
    #gnomeExtensions.logo-widget
    gnomeExtensions.night-theme-switcher
    gnomeExtensions.custom-accent-colors
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
    #postman
    #steam
    direnv
    vdhcoapp # Video download helper
    inetutils
    dynamic-wallpaper
    papers
    #zen-browser
    texmaker
    texstudio
    enter-tex
    #virtiofsd
    dig
    folio
    libheif
    obsidian
  ];

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  };

  #hardware.opengl.driSupport32Bit = true;

  #gtk.enable = true;

  #gtk = {
  #  enable = true;

  #  iconTheme = {
  #    name = "Tela-Icon-Theme";
  #    package = pkgs.tela-icon-theme;
  #  };

    # home.sessionVariables.GTK_THEME = "Tela-Icon-Theme";
  #};

  #environment.systemPackages.pkgs.podman-compose = true;
  #virtualisation.virtualbox.host.enable = true;
  #virtualisation.virtualbox.host.enableExtensionPack = true;
  #users.extraGroups.vboxusers.members = [ "jcorbalan" ];

  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = ["jcorbalan"];
  virtualisation.libvirtd = {
  enable = true;
    qemu.vhostUserPackages = with pkgs; [ virtiofsd ];
  };  
  #virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;


  #APAÑO VIRTUALBOX
  #boot.kernelParams = [ "kvm.enable_virt_at_load=0" ];

  virtualisation.docker.enable = true;
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
  networking.firewall.checkReversePath = "loose";

  #services.squeezelite.enable = true;

  #services.plex = {
  #  enable = true; #false; #true;
  #  openFirewall = true;
  #  user = "jcorbalan";
  #};

  programs.appimage.enable = true;
  programs.appimage.binfmt = true;

  #ios tethering
  services.usbmuxd.enable = true;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # Syncthing ports
  #networking.firewall.allowedTCPPorts = [ 8384 22000 32400 20000 ];
  #networking.firewall.allowedUDPPorts = [ 22000 21027 32400 20000 ];

  # Copy the NixOS configuration file and link it from the resulting system
  # (/run/current-system/configuration.nix). This is useful in case you
  # accidentally delete configuration.nix.
  # system.copySystemConfiguration = true;

  # This option defines the first version of NixOS you have installed on this particular machine,
  # and is used to maintain compatibility with application data (e.g. databases) created on older NixOS versions.
  #
  # Most users should NEVER change this value after the initial install, for any reason,
  # even if you've upgraded your system to a new NixOS release.
  #
  # This value does NOT affect the Nixpkgs version your packages and OS are pulled from,
  # so changing it will NOT upgrade your system - see https://nixos.org/manual/nixos/stable/#sec-upgrading for how
  # to actually do that.
  #
  # This value being lower than the current NixOS release does NOT mean your system is
  # out of date, out of support, or vulnerable.
  #
  # Do NOT change this value unless you have manually inspected all the changes it would make to your configuration,
  # and migrated your data accordingly.
  #
  # For more information, see `man configuration.nix` or https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion .
  system.stateVersion = "24.05"; # Did you read the comment?

}

