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
            adb uninstall --user 0  com.google.android.apps.docs.editors.sheets # google sheets
            adb uninstall --user 0  com.google.android.apps.docs.editors.slides # google slides
            adb uninstall --user 0  com.android.chrome # google chrome
            adb uninstall --user 0  com.google.android.gm # google gmail
            adb uninstall --user 0  com.google.android.googlequicksearchbox # google app
            adb uninstall --user 0  com.google.android.calendar # google calendar
            adb uninstall --user 0  com.motorola.brapps
            adb uninstall --user 0  com.microsoft.office.outlook # microsoft outlook
            adb uninstall --user 0  com.microsoft.office.word # microsoft outlook
            adb uninstall --user 0  com.microsoft.office.excel # microsoft outlook
            adb uninstall --user 0  com.microsoft.office.powerpoint # microsoft outlook
            adb uninstall --user 0  com.microsoft.skydrive # microsoft onedrive
            adb uninstall --user 0  com.skype.raider # microsoft onedrive
            adb uninstall --user 0  com.linkedin.android # linkedin
            adb uninstall --user 0  com.osp.app.signin # samsung account
            adb uninstall --user 0  com.samsung.android.oneconnect # smartthings
            adb uninstall --user 0  com.samsung.android.ststub # smartthings
            adb uninstall --user 0  com.samsung.android.easysetup # smartthings
            adb uninstall --user 0  com.samsung.android.beaconmanager # smartthings
            adb uninstall --user 0  com.samsung.android.samsungpassautofill # linkedin
            adb uninstall --user 0  com.samsung.android.samsungpass # linkedin
            adb uninstall --user 0  com.samsung.android.scloud # samasung cloud
            adb uninstall --user 0  com.samsung.android.kidsinstaller # linkedin
            adb uninstall --user 0  com.samsung.android.spay # linkedin
            adb uninstall --user 0  com.samsung.android.authfw # linkedin
            adb uninstall --user 0  com.samsung.android.email.provider # linkedin
            adb uninstall --user 0  com.samsung.android.mobileservice # linkedin
            adb uninstall --user 0  com.samsung.android.voc # samsung members
            adb uninstall --user 0  com.sec.android.app.sbrowser # samsung internet
            adb uninstall --user 0  com.sec.android.app.samsungapps # galaxy store
            adb uninstall --user 0  com.sec.android.easyMover.Agent # agente smart switch
            adb uninstall --user 0  com.sec.android.widgetapp.samsungapps # galaxy essentials widget
            adb uninstall --user 0  com.opera.max.oem # samsung max vpn
            adb uninstall --user 0  com.samsung.android.game.gamehome # game launcher
            adb uninstall --user 0  com.samsung.android.game.gametools # game tools
            adb uninstall --user 0  br.org.sidi.appsbrasil # appsbrasil
            adb uninstall --user 0  de.axelspringer.yana.zeropage # upday
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
