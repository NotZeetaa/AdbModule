#!/system/bin/sh
rm -rf $MODPATH/gmszt
rm -rf $MODPATH/lavender
rm -rf $MODPATH/audio
rm -rf $MODPATH/mode
rm -rf $MODPATH/LICENSE
MODDIR=${0%/*}
sleep 25
for i in $MODDIR/system/bin/*; do
  case $i in
    *-ls|*-ls.sh);;
    *) if [ -f "$i" -a -x "$i" ]; then $i & fi;;
  esac
done