#!/system/bin/sh

GOOGLE_PACKAGES="
com.google.android.apps.googleassistant
com.google.android.apps.maps
com.google.android.googlequicksearchbox
com.google.android.music
com.google.android.projection.gearhead
com.google.android.partnersetup
com.google.android.gm
com.google.android.feedback
com.google.android.marvin.talkback
com.google.android.calendar
com.google.android.apps.youtube.music
"

INFINIX_PACKAGES="
com.trassion.infinix.xclub
com.transsion.wezone
com.transsion.carlcare
com.transsion.wifiplaytogether
com.transsnet.store
com.zaz.translate
echo net.bat.store
com.funbase.xradio
com.talpa.share
com.android.musicfx
com.transsion.beez
com.facebook.appmanager
com.facebook.services
com.facebook.system
com.transsion.letswitch
com.transsion.phonemaster
com.transsion.phonemanager
com.transsion.smartpanel
com.transsion.zahooc
com.transsion.sk
com.transsion.notebook
com.transsion.childmode
com.transsion.filemanagerx
com.android.dreams.phototable
com.transsion.kolun.assistant
com.transsion.scanningrecharger
com.transsion.videocallenhancer
"

debloat() {
  for pkg in $@; do
    pm uninstall --user 0 $pkg >/dev/null 2>&1
    if [ $? -eq 0 ]; then
      echo "Удалено: $pkg"
    else
      # Попытка отключить, если удаление не удалось
      pm disable-user --user 0 $pkg >/dev/null 2>&1
      if [ $? -eq 0 ]; then
        echo "Отключено: $pkg (удаление не удалось)"
      fi
    fi
  done
}

while [ "$(getprop sys.boot_completed)" != "1" ]; do
  sleep 1
done

sleep 10

# Удаляем пакеты
debloat $GOOGLE_PACKAGES
debloat $INFINIX_PACKAGES
