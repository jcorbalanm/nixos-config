{ pkgs, ... }: {
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
      update = " checkout-branch && (setopt pipefail; sudo -v && sudo nixos-rebuild switch |& nom) && uncheckout-branch";
      upgrade = "checkout-branch && (setopt pipefail; sudo -v && sudo nixos-rebuild switch --upgrade |& nom) && uncheckout-branch";
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
}
