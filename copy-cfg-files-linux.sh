#!/usr/bin/env bash

readonly CSGO_INSTALL_PATH="/home/victor/.local/share/Steam/steamapps/common/Counter-Strike Global Offensive"

cp cfg/* "${CSGO_INSTALL_PATH}/csgo/cfg/"
cp resource/* "${CSGO_INSTALL_PATH}/csgo/resource/"
