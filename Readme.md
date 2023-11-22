<h1> Synology Note Station Flatpak Manifest</h1>

With this manifest you can install the "Synology Note Station" Flatpak on every Linux Distro 

Dependencies:
- flatpak-builder
- org.freedesktop.Platform 22.08

 Installation:
```shell
run install.sh 
```
or 
```shell
wget https://global.synologydownload.com/download/Utility/NoteStationClient/2.2.4-703/Ubuntu/x86_64/synology-note-station-client-2.2.4-703-linux-x64.deb
# ensure filename is synology-note-station-client-2.2.4-703-linux-x64.deb
flatpak-builder --install --user --force-clean build-dir org.leeroymanea.synology-note-station.json
```

Todos:
- Find a way to download a .deb file in the flatpak manifest script
- Publish on Flathub
