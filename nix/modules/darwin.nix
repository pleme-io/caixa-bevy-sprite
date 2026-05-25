# nix/modules/darwin.nix — auto-generated from bevy_sprite.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.bevy_sprite; in {
  options.services.bevy_sprite = {
    enable = lib.mkEnableOption "bevy_sprite";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_sprite or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
