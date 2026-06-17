#!/bin/bash
while [ "$OPTION" != 5 ]; do
    printf '\nWelcome to the simple android debloater\n'
    printf '*%.0s' {1..22}
    printf '\n Select an option:\n'
    printf '\n 1 - List devices connected'
    printf '\n 2 - List all apps installed'
    printf '\n 3 - Uninstall pre-selected system apps'
    printf '\n 4 - Uninstall pre-selected optional apps, you may want to keep these.'
    printf '\n 5 - Experimental list'
    printf '\n 6 - Install Fdroid'
    printf '\n 7 - Remove playstore'
    printf '\n 8 - Exit\n'
    
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
            adb uninstall --user 0  com.google.android.apps.youtube.music.setupwizard # google music app
            adb uninstall --user 0  com.google.android.youtube # google youtube system app
            adb uninstall --user 0  com.google.android.apps.youtube.music # google youtube music system app
            adb uninstall --user 0  com.google.android.apps.subscriptions.red # google red AD
            adb uninstall --user 0  com.google.android.videos # google playvideos
            adb uninstall --user 0  com.google.android.apps.photos # google photos
            adb uninstall --user 0  com.google.android.apps.maps # google maps
            adb uninstall --user 0  com.google.android.apps.tachyon # google duo/meet
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
            adb uninstall --user 0  com.google.android.apps.podcasts # google podcast
            adb uninstall --user 0  com.google.android.apps.magazines # google news
            adb uninstall --user 0  com.google.android.apps.walletnfcrel # google wallet
            adb uninstall --user 0  com.google.ar.core # play services for AR
            adb uninstall --user 0  com.google.android.apps.googleassistant # assistant
            adb uninstall --user 0  com.google.android.partnersetup # ads
            adb uninstall --user 0  com.android.providers.partnerbookmarks # ads
            # MICROSOFT BLOAT
            adb uninstall --user 0  com.microsoft.office.outlook # microsoft outlook
            adb uninstall --user 0  com.microsoft.office.word # microsoft outlook
            adb uninstall --user 0  com.microsoft.office.excel # microsoft outlook
            adb uninstall --user 0  com.microsoft.office.powerpoint # microsoft outlook
            adb uninstall --user 0  com.microsoft.skydrive # microsoft onedrive
            adb uninstall --user 0  com.skype.raider # microsoft onedrive
            adb uninstall --user 0  com.linkedin.android # linkedin
            # MOTOROLA BLOAT
            adb uninstall --user 0  com.motorola.brapps
            adb uninstall --user 0  com.motorola.ccc.notification # hello you
            adb uninstall --user 0  android.autoinstalls.config.motorola.layout # autoinstall apps notification
            adb uninstall --user 0  com.motorola.moto # moto app
            adb uninstall --user 0  com.motorola.motocit # cqa test app
            adb uninstall --user 0  com.motorola.appforecast # cqa test app
            adb uninstall --user 0  com.motorola.demo # demo mode app
            adb uninstall --user 0  com.motorola.gamemode # demo mode app
            adb uninstall --user 0  com.motorola.help # moto feedback app
            adb uninstall --user 0  com.motorola.timeweatherwidget # moto time and weather homescreen widget
            adb uninstall --user 0  com.motorola.gesture # moto gesture navigation tutorial(that annoying notification)
            adb uninstall --user 0  com.motorola.genie # moto device help
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
            adb uninstall --user 0  com.sec.android.app.voicenote # voice recorder
            adb uninstall --user 0  com.sec.android.app.myfiles # my files
            adb uninstall --user 0  com.sec.android.easyMover.Agent # agente smart switch
            adb uninstall --user 0  com.sec.android.usermanual # usermanual
            adb uninstall --user 0  com.sec.android.dictionary # dictionary
            adb uninstall --user 0  com.opera.max.oem # samsung max vpn
            adb uninstall --user 0  com.samsung.android.game.gamehome # game launcher
            adb uninstall --user 0  com.samsung.android.game.gametools # game tools
            adb uninstall --user 0  br.org.sidi.appsbrasil # appsbrasil
            adb uninstall --user 0  de.axelspringer.yana.zeropage # upday
            adb uninstall --user 0  com.wsomacp # mensagem de configuracao
            adb uninstall --user 0  com.samsung.android.uds # ultra data saving
            adb uninstall --user 0  com.samsung.shop
            adb uninstall --user 0  com.samsung.android.galaxy
            adb uninstall --user 0  com.samsung.android.arzone
            adb uninstall --user 0  com.samsung.sree
            adb uninstall --user 0  com.samsung.android.app.watchmanager
            adb uninstall --user 0  com.samsung.android.app.spage
            adb uninstall --user 0  com.applovin.array.apphub.samsung
            adb uninstall --user 0  com.microsoft.office.officehubrow
            adb uninstall --user 0  com.rsupport.rs.activity.rsupport.aas2 # smart tutor
            # XIAOMI BLOAT
            adb uninstall --user 0  com.zhiliaoapp.musically # tiktok
            adb uninstall --user 0  com.amazon.mp3 # amazon music
            adb uninstall --user 0  com.amazon.mShop.android.shopping # amazon shopping
            adb uninstall --user 0  com.tencent.igxiaomi # PUBG mobile gift box
            adb uninstall --user 0  com.netflix.mediaclient # netflix
            adb uninstall --user 0  com.hk.ugc # 92
            adb uninstall --user 0  cn.wps.moffice_eng # wps office
            adb uninstall --user 0  com.alibaba.aliexpresshd # alliexpress
            adb uninstall --user 0  com.block.puzzle.game.hippo.mi # block puzzle guardian
            adb uninstall --user 0  com.jewelsblast.ivygames.Adventure.free # jewels blast
            adb uninstall --user 0  com.logame.eliminateintruder3d # dust settle
            adb uninstall --user 0  com.mintgames.triplecrush.tile.fun # tile fun
            adb uninstall --user 0  com.sukhavati.gotoplaying.bubble.BubbleShooter.mint # bubble shooter
            adb uninstall --user 0  com.twitter.android # twitter
            adb uninstall --user 0  com.mi.global.pocostore # poco store
            adb uninstall --user 0  cn.wps.xiaomi.abroad.lite # Mi documents viewer
            adb uninstall --user 0  com.miui.android.fashiongallery # background carousel
            adb uninstall --user 0  com.mi.global.pocobbs # poco community
            adb uninstall --user 0  com.micredit.in # Mi credit
            adb uninstall --user 0  com.duokan.phone.remotecontroller # Mi remote
            adb uninstall --user 0  com.miui.mediaeditor # Mi Gallery editor
            adb uninstall --user 0  com.miui.videoplayer # Mi video
            adb uninstall --user 0  com.miui.player # Mi music player
            # XIAOMI BLOAT LIST FROM XDA
            adb uninstall --user 0  com.miui.screenrecorder
            adb uninstall --user 0  com.miui.fm
            adb uninstall --user 0  com.mi.liveassistant
            adb uninstall --user 0  com.milink.service
            adb uninstall --user 0  com.qiyi.video
            adb uninstall --user 0  com.xiaomi.gamecenter.sdk.service
            adb uninstall --user 0  com.xiaomi.payment
            adb uninstall --user 0  com.android.browser
            adb uninstall --user 0  com.miui.systemAdSolution
            adb uninstall --user 0  com.baidu.input_mi
            adb uninstall --user 0  com.xiaomi.ab
            adb uninstall --user 0  com.xiaomi.jr
            adb uninstall --user 0  com.baidu.duersdk.opensdk
            adb uninstall --user 0  com.miui.hybrid
            adb uninstall --user 0  com.baidu.searchbox
            adb uninstall --user 0  com.mfashiongallery.emag
            adb uninstall --user 0  com.miui.translation.kingsoft
            adb uninstall --user 0  com.miui.virtualsim
            adb uninstall --user 0  com.miui.compass
            adb uninstall --user 0  com.miui.personalassistant
            adb uninstall --user 0  com.miui.bugreport
            adb uninstall --user 0  com.miui.translation.youdao
            adb uninstall --user 0  com.xiaomi.channel
            adb uninstall --user 0  com.mipay.wallet
            adb uninstall --user 0  com.xiaomi.lens
            adb uninstall --user 0  com.xiaomi.pass
            adb uninstall --user 0  com.xiaomi.shop
            adb uninstall --user 0  com.miui.klo.bugreport
            adb uninstall --user 0  com.xiaomi.joyose
            adb uninstall --user 0  com.miui.notes
            adb uninstall --user 0  com.miui.video
            adb uninstall --user 0  com.xiaomi.midrop
            adb uninstall --user 0  com.miui.hybrid.accessory
            adb uninstall --user 0  com.sohu.inputmethod.sogou.xiaomi
            adb uninstall --user 0  com.xiaomi.o2o
            adb uninstall --user 0  com.autonavi.minimap
            adb uninstall --user 0  com.miui.daemon
            adb uninstall --user 0  com.miui.contentcatcher
            adb uninstall --user 0  com.miui.analytics
            adb uninstall --user 0  com.xiaomi.vipaccount
            adb uninstall --user 0  com.caf.fmradio
            adb uninstall --user 0  com.miui.cloudservice
            adb uninstall --user 0  com.miui.cloudservice.sysbase
            adb uninstall --user 0  com.miui.cloudbackup
            adb uninstall --user 0  com.miui.gallery
            adb uninstall --user 0  com.miui.vsimcore
            adb uninstall --user 0  com.xiaomi.miplay_client
            adb uninstall --user 0  com.xiaomi.account
            adb uninstall --user 0  com.miui.msa.global # miui ADs server
            adb uninstall --user 0  com.miui.micloudsync
            adb uninstall --user 0  com.google.android.setupwizard
            adb uninstall --user 0  com.android.printspooler
            adb uninstall --user 0  com.xiaomi.upnp
            adb uninstall --user 0  com.google.android.tts
            adb uninstall --user 0  com.xiaomi.mipicks
            adb uninstall --user 0  com.google.android.printservice.recommendation
            adb uninstall --user 0  com.miui.yellowpage
            adb uninstall --user 0  com.xiaomi.discover
            adb uninstall --user 0  com.mipay.wallet.in
            adb uninstall --user 0  com.miui.fmservice
            adb uninstall --user 0  com.kwai.video
            adb uninstall --user 0  com.amazon.appmanager
            adb uninstall --user 0  com.google.android.apps.fitness
            adb uninstall --user 0  com.google.android.apps.chromecast.app
            adb uninstall --user 0  com.google.android.apps.docs.editors.docs
            adb uninstall --user 0  com.booking
            # EOF
            printf 'Success, you can safely remove your device now.'
        ;;
        4)
            echo "Uninstalling optional apps:"
            # Samsung
            adb uninstall --user 0  com.samsung.android.themestore # theme store
            adb uninstall --user 0  com.samsung.android.themecenter # theme services
            adb uninstall --user 0  com.samsung.android.app.aodservice # always on display
            adb uninstall --user 0  com.sec.android.widgetapp.samsungapps # galaxy essentials widget
            adb uninstall --user 0  com.samsung.android.game.gos # game optimizing service
            # motorola
            
            printf 'Success, you can safely remove your device now.'
        ;;
        5)
            echo "Uninstalling optional apps:"
            
            # Remove vendor bloat
            for pkg in $(adb shell pm list packages | grep -iE 'com.motorola|com.facebook|com.tmobile|com.dish|android.apps|linkedin|snapchat|tiktok|com.aura|\.installer$|com.metro|in.playsimple|metropcs|com.android.chrome|com.ironsrc|com.amazon.appmanager|com.particlenews|com.swish|youtube|com.tripledot|com.vivo|com.thehomedepot|.folder|com.booking' | grep -viE 'com.motorola.android.providers.settings|faceunlock' | cut -d':' -f2)
            do
                echo "Uninstalling: $pkg"
                adb shell pm uninstall -k --user 0 $pkg
            done

            # Remove play store
            #echo 'Removing Google Play store'
            #adb shell pm uninstall -k --user 0 com.android.vending

            # Other specific apps (in case the above list missed anything)
            adb shell pm uninstall -k --user 0 com.motorola.android.fmradio
            adb shell pm uninstall -k --user 0 com.motorola.fmplayer
            adb shell pm uninstall -k --user 0 com.motorola.genie
            adb shell pm uninstall -k --user 0 com.motorola.moto
            adb shell pm uninstall -k --user 0 com.motorola.launcher3
            adb shell pm uninstall -k --user 0 com.motorola.gamemode
            adb shell pm uninstall -k --user 0 com.motorola.demo
            adb shell pm uninstall -k --user 0 com.motorola.help
            adb shell pm uninstall -k --user 0 com.motorola.paks
            adb shell pm uninstall -k --user 0 com.motorola.screenshoteditor
            adb shell pm uninstall -k --user 0 com.motorola.hiddenmenuapp
            adb shell pm uninstall -k --user 0 com.motorola.demo.env
            adb shell pm uninstall -k --user 0 com.motorola.appforecast
            adb shell pm uninstall -k --user 0 com.lmi.motorola.rescuesecurity
            adb shell pm uninstall -k --user 0 com.motorola.bug2go
            adb shell pm uninstall -k --user 0 com.motorola.motocare.internal
            adb shell pm uninstall -k --user 0 com.motorola.motocare
            adb shell pm uninstall -k --user 0 com.motorola.android.nativedropboxagent
            adb shell pm uninstall -k --user 0 com.motorola.brapps
            adb shell pm uninstall -k --user 0 com.motorola.easyprefix
            adb shell pm uninstall -k --user 0 com.facebook.katana
            adb shell pm uninstall -k --user 0 com.facebook.appmanager
            adb shell pm uninstall -k --user 0 com.facebook.services
            adb shell pm uninstall -k --user 0 com.facebook.system
            adb shell pm uninstall -k --user 0 com.android.chrome
            adb shell pm uninstall -k --user 0 com.android.hotwordenrollment.google
            adb shell pm uninstall -k --user 0 com.android.stk
            adb shell pm uninstall -k --user 0 com.google.android.apps.docs
            adb shell pm uninstall -k --user 0 com.google.android.apps.googleassistant
            adb shell pm uninstall -k --user 0 com.google.android.apps.magazines
            adb shell pm uninstall -k --user 0 com.google.android.apps.maps
            adb shell pm uninstall -k --user 0 com.google.android.apps.photos
            adb shell pm uninstall -k --user 0 com.google.android.apps.podcasts
            adb shell pm uninstall -k --user 0 com.google.android.apps.subscriptions.red
            adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon
            adb shell pm uninstall -k --user 0 com.google.android.apps.walletnfcrel
            adb shell pm uninstall -k --user 0 com.google.android.googlequicksearchbox
            adb shell pm uninstall -k --user 0 com.google.android.gm
            adb shell pm uninstall -k --user 0 com.google.android.setupwizard
            adb shell pm uninstall -k --user 0 com.google.android.videos
            adb shell pm uninstall -k --user 0 com.google.android.youtube
            adb shell pm uninstall -k --user 0 org.mipay.android.manager
            adb shell pm uninstall -k --user 0 com.google.android.apps.youtube.music
            adb shell pm uninstall -k --user 0 com.android.egg
            adb shell pm uninstall -k --user 0 com.android.providers.partnerbookmarks
            adb shell pm uninstall -k --user 0 com.android.bookmarkprovider
            adb shell pm uninstall -k --user 0 com.kwai.kuaishou.video.live
            adb shell pm uninstall -k --user 0 com.netflix.mediaclient
            adb shell pm uninstall -k --user 0 com.tencent.igxiaomi
            adb shell pm uninstall -k --user 0 com.spotify.music
            adb shell pm uninstall -k --user 0 cn.wps.xiaomi.abroad.lite
            adb shell pm uninstall -k --user 0 wps.moffice_eng
            adb shell pm uninstall -k --user 0 cn.wps.moffice_eng
            adb shell pm uninstall -k --user 0 com.android.stk
            adb shell pm uninstall -k --user 0 com.csdroid.spkg
            adb shell pm uninstall -k --user 0 com.zhiliaoapp.musically
            adb shell pm uninstall -k --user 0 com.king.candycrushsaga
            adb shell pm uninstall -k --user 0 com.miui.securitycenter
            adb shell pm uninstall -k --user 0 com.miui.guardprovider
            adb shell pm uninstall -k --user 0 com.miui.securitycore
            adb shell pm uninstall -k --user 0 com.miui.cleaner
            adb shell pm uninstall -k --user 0 com.samsung.knox.appsupdateagent
            adb shell pm uninstall -k --user 0 com.sec.knox.foldercontainer
            adb shell pm uninstall -k --user 0 com.sec.knox.knoxsetupwizardclient
            adb shell pm uninstall -k --user 0 com.sec.knox.kss
            adb shell pm uninstall -k --user 0 com.sec.knox.switcher
            adb shell pm uninstall -k --user 0 com.samsung.knox.securefolder
            adb shell pm uninstall -k --user 0 com.samsung.knox.securefolder.setuppage
            adb shell pm uninstall -k --user 0 com.miui.fm
            adb shell pm uninstall -k --user 0 com.miui.fmservice
            adb shell pm uninstall -k --user 0 com.android.thememanager
            adb shell pm uninstall -k --user 0 com.miui.player
            adb shell pm uninstall -k --user 0 com.xiaomi.micloud.sdk
            adb shell pm uninstall -k --user 0 com.miui.micloudsync
            adb shell pm uninstall -k --user 0 com.miui.cloudbackup
            adb shell pm uninstall -k --user 0 com.miui.cloudservice
            adb shell pm uninstall -k --user 0 com.xiaomi.payment4
            adb shell pm uninstall -k --user 0 com.xiaomi.account
            adb shell pm uninstall -k --user 0 com.xiaomi.midrop
            adb shell pm uninstall -k --user 0 com.vcast.mediamanager
            adb shell pm uninstall -k --user 0 asurion.android.verizon.vms
            adb shell pm uninstall -k --user 0 com.motricity.verizon.ssodownloadable
            adb shell pm uninstall -k --user 0 com.vzw.hss.myverizon
            adb shell pm uninstall -k --user 0 vzw.hss.myverizon
            adb shell pm uninstall -k --user 0 com.vzw.hs.android.modlite
            adb shell pm uninstall -k --user 0 motricity.verizon.ssodownloadable
            adb shell pm uninstall -k --user 0 us.com.dt.iq.appsource.tmobile
            adb shell pm uninstall -k --user 0 com.mobitv.client.tmobiletvhd
            adb shell pm uninstall -k --user 0 com.tmobile.pr.mytmobile
            adb shell pm uninstall -k --user 0 com.tmobile.m1
            adb shell pm uninstall -k --user 0 com.tmobile.pr.adapt
            adb shell pm uninstall -k --user 0 com.tmobile.rsuadapter.qualcomm
            adb shell pm uninstall -k --user 0 com.tmobile.rsuapp
            adb shell pm uninstall -k --user 0 com.tmobile.rsusrv
            adb shell pm uninstall -k --user 0 att.dh
            adb shell pm uninstall -k --user 0 att.dtv.shaderemote
            adb shell pm uninstall -k --user 0 att.tv
            adb shell pm uninstall -k --user 0 att.myWireless
            adb shell pm uninstall -k --user 0 asurion.android.protech.att
            adb shell pm uninstall -k --user 0 att.android.attsmartwifi
            adb shell pm uninstall -k --user 0 com.att.thanks
            adb shell pm uninstall -k --user 0 com.att.mobilesecurity
            adb shell pm uninstall -k --user 0 com.att.callprotect
            adb shell pm uninstall -k --user 0 com.att.iqi
            adb shell pm uninstall -k --user 0 com.dti.att
            adb shell pm uninstall -k --user 0 com.sprint.ms.cdm
            adb shell pm uninstall -k --user 0 com.sprint.ms.smf.services
            adb shell pm uninstall -k --user 0 com.sprint.ce.updater
            adb shell pm uninstall -k --user 0 com.sprint.w.installer
            
            printf 'Success, you can safely remove your device now.'
        ;;
        6)
            echo "Fdroid install"
            if adb shell pm list packages | grep -q org.fdroid.fdroid
            then
                echo 'F-Droid already installed, skipping.'
            else
                echo 'Installing F-Droid.'
                curl -o ~/F-Droid.apk https://f-droid.org/F-Droid.apk
                adb install ~/F-Droid.apk
                rm ~/F-Droid.apk
            fi
        ;;
        7)
            echo "Removing playstore"
            adb shell pm uninstall -k --user 0 com.android.vending            
            printf 'Success, you can safely remove your device now.'
        ;;
        *)
            echo "Bye bye"
            exit 1
        ;;
    esac
done
