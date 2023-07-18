source $stdenv/setup

buildPhase() {
    echo "this is my custom build phase..."
    ghc main.hs -o main
}

installPhase() {
    mkdir -p $out/bin
    cp main $out/bin
}

genericBuild
