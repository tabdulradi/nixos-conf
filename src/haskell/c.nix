{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [

    haskellPackages.cabal-install

    (haskell.packages.ghc802.ghcWithPackages (self : [
      self.hlint # ghc-mod installs it anyway
      # self.ghc-mod
    ]))

    gcc
    binutils # For the ar executable.
    haskellPackages.alex
    haskellPackages.happy
    haskellPackages.zlib

    haskellPackages.stack

    # Tooling
    haskellPackages.cabal2nix
    haskellPackages.ghcid
    haskellPackages.hoogle
    haskellPackages.packdeps
    haskellPackages.stylish-haskell
    multi-ghc-travis

    # # for the ihaskell-notebook executable, used with
    # #
    # # stack exec -- ihaskell-notebook
    # #
    # # The idea is to use this command when I want to run ihaskell
    # # with extra packages (either mine or others) and to use
    # # `servies.ihaskell.enable, which will always start first
    # # and take port 8888, when I want to use vanilla ihaskell.
    # ihaskell
  ];

  # services.ihaskell.enable = true;
}
