with import <nixpkgs> {}; {
    boomerEnv = stdenv.mkDerivation {
        name = "boomer-env";
        buildInputs = [ stdenv
                        gcc
                        pkgconfig
                        nim
                        xorg.libX11
                      ];
        LD_LIBRARY_PATH="${xorg.libX11}/lib/";
    };
}