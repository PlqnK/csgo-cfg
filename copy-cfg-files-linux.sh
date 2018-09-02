#!/usr/bin/env bash

readonly CSGO_INSTALL_PATH="/opt/SteamLibrary/steamapps/common/Counter-Strike Global Offensive"

cp *.cfg "${CSGO_INSTALL_PATH}/csgo/cfg/"
cp csgo_textmodorel.txt "${CSGO_INSTALL_PATH}/csgo/resource/"
