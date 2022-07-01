{
  pkgs ? import <nixpkgs> {}
}:

let

  pulumi-nix-devenv-source = builtins.fetchTarball {
    name   = "pulumi-nix-devenv";
    url = https://github.com/t0yv0/pulumi-nix-devenv/archive/2f32ee30b3552721899832a6d9a1e8f9101aa6d9.tar.gz;
    sha256 = "sha256:0icdcy3vrrzf9b8xn3vg3d1d5l0dl771yml9i988zjivqc3caixy";
  };

  deps = import pulumi-nix-devenv-source {};

in

pkgs.mkShell {
  name = "pulumi-hackathon-jun-2022-shell";
  buildInputs = [
    deps.jaeger
    deps.opentelemetry-collector

    pkgs.prometheus
  ];
}
