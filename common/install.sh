unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
unzip -o "$ZIPFILE" 'mode/*' -d $TMPDIR >&2
mkdir -p $MODPATH/system/bin

ui_print " "
ui_print "    ×××××××××××××××××××××××××××××××"
ui_print "       Select Adb Mode:  📳     "
ui_print "    ×××××××××××××××××××××××××××××××"
ui_print " "
ui_print "  Vol+ = Next; Vol- = Select"
ui_print " "
ui_print "  1. Adb Enabler "
ui_print "  2. Adb Disabler "
ui_print " "
ui_print "  Select: "
AD=1
while true; do
ui_print "   $AD"
	if $VKSEL; then
		AD=$((AD + 1))
	else 
		break
	fi
	if [ $AD -gt 2 ]; then
		AD=1
	fi
done
ui_print " "
ui_print "  Selected: $AD"
#
case $AD in
 1 ) FCTEXTAD1="Adb Enabler"; cp -af $TMPDIR/mode/adbE $MODPATH/system/bin;;
 2 ) FCTEXTAD1="Adb Disabler"; cp -af $TMPDIR/mode/adbD $MODPATH/system/bin;;
esac
ui_print " "
ui_print "- Mode: $FCTEXTAD1 "
sleep 3