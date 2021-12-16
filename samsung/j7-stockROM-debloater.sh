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
            # FACEBOOK BLOAT
            adb uninstall --user 0  com.facebook.katana # facebook app
            adb uninstall --user 0  com.facebook.appmanager # facebook related services
            adb uninstall --user 0  com.facebook.services # facebook related services
            adb uninstall --user 0  com.facebook.system # facebook related services
            # GOOGLE BLOAT
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
            adb uninstall --user 0  com.google.android.apps.messaging # google default SMS messaging app
            adb uninstall --user 0  com.google.android.apps.wellbeing # google well being
            # MICROSOFT BLOAT
            adb uninstall --user 0  com.microsoft.office.outlook # microsoft outlook
            adb uninstall --user 0  com.microsoft.office.word # microsoft outlook
            adb uninstall --user 0  com.microsoft.office.excel # microsoft outlook
            adb uninstall --user 0  com.microsoft.office.powerpoint # microsoft outlook
            adb uninstall --user 0  com.microsoft.skydrive # microsoft onedrive
            adb uninstall --user 0  com.skype.raider # microsoft onedrive
            adb uninstall --user 0  com.linkedin.android # linkedin
            # SAMSUNG BLOAT
            adb uninstall --user 0  com.osp.app.signin # samsung account
            adb uninstall --user 0  com.samsung.android.oneconnect # smartthings
            adb uninstall --user 0  com.samsung.android.ststub # smartthings
            adb uninstall --user 0  com.samsung.android.easysetup # smartthings
            adb uninstall --user 0  com.samsung.android.beaconmanager # smartthings
            adb uninstall --user 0  com.samsung.android.samsungpassautofill # samsung pay autofill
            adb uninstall --user 0  com.samsung.android.samsungpass # samsung pass
            adb uninstall --user 0  com.samsung.android.scloud # samasung cloud
            adb uninstall --user 0  com.samsung.android.kidsinstaller # espaco infantil
            adb uninstall --user 0  com.samsung.android.spay # samsung pay
            adb uninstall --user 0  com.samsung.android.authfw # linkedin
            adb uninstall --user 0  com.samsung.android.email.provider # samsung email
            adb uninstall --user 0  com.samsung.android.mobileservice # linkedin
            adb uninstall --user 0  com.samsung.android.voc # samsung members
            adb uninstall --user 0  com.samsung.android.smartmirroring # smart view
            adb uninstall --user 0  com.samsung.android.rubin.app # servico de personalizacao
            adb uninstall --user 0  com.samsung.android.messaging # messages app
            adb uninstall --user 0  com.samsung.android.wellbeing # samsung wellbeing
            adb uninstall --user 0  com.samsung.android.app.notes # samsung notes
            adb uninstall --user 0  com.sec.spp.push # samsung push services
            adb uninstall --user 0  com.sec.android.app.sbrowser # samsung internet
            adb uninstall --user 0  com.sec.android.app.samsungapps # galaxy store
            adb uninstall --user 0  com.sec.android.app.billing # samsung checkout
            adb uninstall --user 0  com.sec.android.app.shealth # samsung health
            adb uninstall --user 0  com.sec.android.easyMover.Agent # agente smart switch
            adb uninstall --user 0  com.opera.max.oem # samsung max vpn
            adb uninstall --user 0  com.samsung.android.game.gamehome # game launcher
            adb uninstall --user 0  com.samsung.android.game.gametools # game tools
            adb uninstall --user 0  br.org.sidi.appsbrasil # appsbrasil
            adb uninstall --user 0  de.axelspringer.yana.zeropage # upday
            adb uninstall --user 0  com.wsomacp # mensagem de configuracao
            printf 'Success, you can safely remove your device now.'
        ;;
        4)
            echo "Uninstalling optional apps:"
            adb uninstall --user 0  com.samsung.android.themestore # theme store
            adb uninstall --user 0  com.samsung.android.themecenter # theme services
            adb uninstall --user 0  com.samsung.android.app.aodservice # always on display
            adb uninstall --user 0  com.sec.android.widgetapp.samsungapps # galaxy essentials widget
            adb uninstall --user 0  com.samsung.android.game.gos # game optimizing service
            printf 'Success, you can safely remove your device now.'
        ;;
        *)
            echo "Bye bye"
            exit 1
        ;;
    esac
done
