#!/bin/bash
while [ "$OPTION" != 5 ]; do
    printf '\nWelcome to the simple android debloater\n'
    printf '*%.0s' {1..22}
    printf '\n Select an option:\n'
    printf '\n 1 - List devices connected'
    printf '\n 2 - List all apps installed'
    printf '\n 3 - Uninstall pre-selected system apps'
    printf '\n 4 - Uninstall pre-selected optional apps, you may want to keep these.'
    printf '\n 5 - Exit\n'
    read -r OPTION
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
            adb uninstall --user 0  com.google.android.apps.photos # google photos
            adb uninstall --user 0  com.google.android.apps.maps # google maps
            adb uninstall --user 0  com.google.android.apps.tachyon # google duo
            adb uninstall --user 0  com.google.android.apps.nbu.files # google files
            adb uninstall --user 0  com.google.android.apps.docs # google drive
            adb uninstall --user 0  com.android.chrome # google chrome
            adb uninstall --user 0  com.google.android.gm # google gmail
            adb uninstall --user 0  com.google.android.googlequicksearchbox # google app
            adb uninstall --user 0  com.google.android.calendar # google calendar
            printf 'Success, you can safely remove your device now.'
        ;;
        4)
            echo "Uninstalling optional apps:"
            adb uninstall --user 0  com.google.android.apps.messaging # google default SMS messaging app
            adb uninstall --user 0  com.google.android.apps.wellbeing # google well being
            adb uninstall --user 0  com.motorola.demo # demo mode app
            adb uninstall --user 0  com.motorola.help # moto feedback app
            adb uninstall --user 0  com.motorola.timeweatherwidget # moto time and weather homescreen widget
            adb uninstall --user 0  com.motorola.gesture # moto gesture navigation tutorial(that annoying notification)
            adb uninstall --user 0  com.motorola.genie # moto device help
            printf 'Success, you can safely remove your device now.'
        ;;
        *)
            echo "Bye bye"
            exit 1
        ;;
    esac
done
