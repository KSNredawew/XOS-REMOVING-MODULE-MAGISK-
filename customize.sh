#!/system/bin/sh

SKIPUNZIP=1

ui_print "********************************"
ui_print " XOS-REMOVING Magisk Module       "  "   "
ui_print "********************************"

# Создаем директории
mkdir -p $MODPATH/system/priv-app
mkdir -p $MODPATH/system/app

cp -f $MODPATH/post-fs-data.sh $MODPATH/service.sh

set_perm_recursive $MODPATH 0 0 0755 0755
set_perm $MODPATH/service.sh 0 0 0755
