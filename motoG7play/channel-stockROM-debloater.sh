#!/bin/bash
printf 'Welcome to the simple android debloater\n'
printf '*%.0s' {1..22}
printf '\n Select an option:\n'
printf '\n 1 - List devices connected'
printf '\n 2 - List all packages installed'
printf '\n 3 - Uninstall pre-selected packages'
printf '\n 4 - Exit\n'
read OPTION
case $OPTION in
    1)
        adb devices
    ;;
    2)
        echo "All apps installed: "
        adb shell pm list packages
    ;;
    3)
        echo "Uninstalling the following apps: "
        adb uninstall --user 0  com.facebook.katana # facebook app
        adb uninstall --user 0  com.facebook.appmanager # facebook related services
        adb uninstall --user 0  com.facebook.services # facebook related services
        adb uninstall --user 0  com.facebook.system # facebook related services
        adb uninstall --user 0  com.google.android.music # google music app
        adb uninstall --user 0  com.google.android.youtube # google youtube system app
        adb uninstall --user 0  com.google.android.videos # google playvideos
        adb uninstall --user 0  com.google.android.apps.messaging # google default SMS messaging app
        adb uninstall --user 0  com.google.android.apps.photos # google photos
        adb uninstall --user 0  com.google.android.apps.maps # google maps
        adb uninstall --user 0  com.google.android.apps.tachyon # google duo
        adb uninstall --user 0  com.google.android.apps.nbu.files # google files
        adb uninstall --user 0  com.google.android.apps.docs # google drive
        adb uninstall --user 0  com.android.chrome # google chrome
        adb uninstall --user 0  com.google.android.gm # google gmail
        adb uninstall --user 0  com.google.android.googlequicksearchbox # google app
    ;;
    *)
        echo "Bye bye"
        exit 1
    ;;
esac
