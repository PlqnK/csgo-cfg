#!/usr/bin/env bash

readonly STEAM_INSTALL_PATH="/opt/SteamLibrary/steamapps/common/Counter-Strike Global Offensive"

cp *.cfg "${STEAM_INSTALL_PATH}/csgo/cfg/"
cp csgo_textmodorel.txt "${STEAM_INSTALL_PATH}/csgo/resource/"