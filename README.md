# android-debloater
This is a simple **bash script** to remove system apps of the Stock ROM of several Android devices, *you do not need ROOT nor an unlocked bootloader*.

Currently this list is targeting most common Bloatware found on Motorola, Samsung and Xiaomi* devices.

You can use it for other phones but if you do you will probably want to update the apps being removed to match your needs.

You can use on your phone the [App Inspector](https://play.google.com/store/apps/details?id=com.ubqsoft.sec01) to find out the package name of the app you want to uninstall.

### Dependencies
* [Android Plataform Tools](https://developer.android.com/studio/releases/platform-tools)

    This script uses ADB to remove apps

### Change Permissions
On the same directory that the script is, run the command:

`chmod +x universal-stockROM-debloater.sh`

### Run the script on unix* platforms
To run the script use the command:

`./universal-stockROM-debloater.sh`

### Running this script on windows
You can use Windows Subsystem for Linux to run this shell script using the same steps described above.

Another alternative is to install [GIT](https://git-scm.com/download/win), during installation of GIT, add GIT Bash to windows context menu by selecting its option. After installation right click in the root folder of this cloned repository and select GIT Bash Here.

On the newly opened bash shell run this command:

`chmod +x universal-stockROM-debloater.sh`

`./universal-stockROM-debloater.sh`

### What apps will this script uninstall?
* facebook app (com.facebook.katana)
* facebook related services (com.facebook.appmanager)
* facebook related services (com.facebook.services) 
* facebook related services (com.facebook.system)
* google music app (com.google.android.music) 
* google youtube system app (com.google.android.youtube)
* google playvideos (com.google.android.videos)
* google photos (com.google.android.apps.photos)
* google maps (com.google.android.apps.maps) 
* google duo (com.google.android.apps.tachyon)
* google files (com.google.android.apps.nbu.files)
* google drive (com.google.android.apps.docs)
* google chrome (com.android.chrome)
* google gmail (com.google.android.gm)
* google calendar (com.google.android.calendar)
* google app (com.google.android.googlequicksearchbox)

### What are the optional apps?
* google default SMS messaging app (com.google.android.apps.messaging) | Use signal instead.
* google well being (com.google.android.apps.wellbeing)
* demo mode app (com.motorola.demo)
* moto feedback app (com.motorola.help)
* moto time and weather homescreen widget (com.motorola.timeweatherwidget)
* moto gesture navigation tutorial, that annoying notification (com.motorola.gesture)
* moto device help (com.motorola.genie)
.
.
.
And many more.

---

