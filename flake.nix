{
  inputs.nixpkgs.url = github:NixOS/nixpkgs/nixos-unstable;
  inputs.libgourou-utils.url = github:BentonEdmondson/libgourou-utils;
  inputs.inept-epub.url = github:BentonEdmondson/inept-epub;

  outputs = { self, ... }@flakes: let
    nixpkgs = flakes.nixpkgs.legacyPackages.x86_64-linux;
    libgourou-utils = flakes.libgourou-utils.defaultPackage.x86_64-linux;
    inept-epub = flakes.inept-epub.defaultPackage.x86_64-linux;
  in {
    defaultPackage.x86_64-linux = nixpkgs.stdenv.mkDerivation {
        pname = "knock";
        version = "0.0.0";
        src = self;
        nativeBuildInputs = [ nixpkgs.makeWrapper ];
        buildInputs = [ nixpkgs.python3 libgourou-utils inept-epub ];
        installPhase = ''
          mkdir -p $out/bin
          chmod +x knock
          cp knock $out/bin
          wrapProgram $out/bin/knock --prefix PATH : ${nixpkgs.lib.makeBinPath [libgourou-utils inept-epub]}
        '';
      };

  };
}