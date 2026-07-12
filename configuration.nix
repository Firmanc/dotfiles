{
  # Determinate already manages the Nix daemon, so nix-darwin shouldn't.
  nix.enable = false;

  nixpkgs.config.allowUnfree = true;
  nixpkgs.hostPlatform = "aarch64-darwin"; # use x86_64-darwin for Intel CPU

  system.primaryUser = "firmannio";
  system.stateVersion = 6;
  system.defaults = {
    NSGlobalDomain = {
      AppleInterfaceStyle = "Dark";
      KeyRepeat = 2;          # fast key repeat
      InitialKeyRepeat = 15;  # short delay before repeat
      _HIHideMenuBar = true;  # auto-hide the menu bar
      AppleShowAllExtensions = true;
    };
    dock.autohide = true;
    finder.FXPreferredViewStyle = "Nlsv";  # list view by default
    finder.CreateDesktop = false;          # clean desktop
    trackpad.Clicking = true;              # tap to click
  };

  # nix-homebrew = {
  #   # Install Homebrew under the default prefix
  #   enable = true;

  #   # Apple Silicon Only: Also install Homebrew under the default Intel prefix for Rosetta 2
  #   enableRosetta = true;

  #   # User owning the Homebrew prefix
  #   user = "firmannio";

  #   # Optional: Declarative tap management
  #   # taps = {
  #   #   "homebrew/homebrew-core" = homebrew-core;
  #   #   "homebrew/homebrew-cask" = homebrew-cask;
  #   # };

  #   # Optional: Enable fully-declarative tap management
  #   #
  #   # With mutableTaps disabled, taps can no longer be added imperatively with `brew tap`.
  #   # mutableTaps = false;

  #   autoMigrate = true;

  #   # Optional: Declarative Homebrew tap trust entries.
  #   #
  #   # Note: The trust entries are _not_ removed if you remove them from those lists!
  #   # Use the `brew untrust` command to remove a trust entry.
  #   trust = {
  #     formulae = [ ];
  #     casks = [
  #       "wezterm"
  #     ];
  #     commands = [ ];
  #     taps = [ ];
  #   };
  # };
}
