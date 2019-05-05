#!/bin/bash

/steamcmd/steamcmd.sh +@sSteamCmdForcePlatformType windows +login anonymous +force_install_dir /conanexiles +app_update 443030 validate $UPDATE_MODS +quit

for mod in $(ls /root/Steam/steamapps/workshop/content/440900/)
do
  mkdir /conanexiles/ConanSandbox/Mods
  ls /root/Steam/steamapps/workshop/content/440900/$mod/ >> /conanexiles/ConanSandbox/Mods/modlist.txt
  mv /root/Steam/steamapps/workshop/content/440900/$mod/* /conanexiles/ConanSandbox/Mods/
done
