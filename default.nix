with import <nixpkgs> {};
stdenv.mkDerivation {
  pname = "test-haskell";
  version = "0.0.1";

  src = [
    ./main.hs
  ];

  unpackPhase = ''
    for srcFile in $src; do
      cp $srcFile $(stripHash $srcFile)
    done
  '';

  builder = ./builder.sh;
  
  nativeBuildInputs = with pkgs; [
    ghc
  ];
}
