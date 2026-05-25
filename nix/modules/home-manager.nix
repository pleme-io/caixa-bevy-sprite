# nix/modules/home-manager.nix — auto-generated from bevy_sprite.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_sprite; in {
  options.programs.bevy_sprite = {
    enable = lib.mkEnableOption "bevy_sprite";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_sprite or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
