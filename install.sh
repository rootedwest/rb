#!/bin/sh

set -e

RB_HOME_DIR="$HOME/.rb"
RB_RELEASE="alpha1"

# make sure the bin path is in place

      [ -n "$PREFIX" ] || PREFIX="/usr/local"
      BIN_PATH="$PREFIX/bin"
      mkdir -p "$BIN_PATH"

# download the release tab and link to the bin path

      rm -rf "$RB_HOME_DIR" && mkdir -p "$RB_HOME_DIR"
      pushd "$RB_HOME_DIR" > /dev/null &&
        curl -L "https://github.com/rootedwest/rb/tarball/$RB_RELEASE" | tar xzf - */libexec/*
        ln -sf */libexec
      popd > /dev/null

# install in the bin path

      ln -sf "$RB_HOME_DIR/libexec/rb" "$BIN_PATH"

>>>>>>> Stashed changes

# done!

      echo "Installed at ${BIN_PATH}/rb"
