with import (
  builtins.fetchTarball {
    url = "https://github.com/nixos/nixpkgs/archive/3140fa89c51233397f496f49014f6b23216667c2.tar.gz";
    sha256 = "18p0d5lnfvzsyfah02mf6bi249990pfwnylwhqdh8qi70ncrk3f8";
  }) { };

mkShell {
  buildInputs = [
    cmake 
    qt5.qtbase
    xorg.libX11
    xorg.libXext
    gettext
    pandoc 
    pkgconfig
    tesseract
  ];
  shellHook = ''
    export QT_PLUGIN_PATH=${qt5.qtbase.bin}/${qt5.qtbase.qtPluginPrefix}
  '';
}
