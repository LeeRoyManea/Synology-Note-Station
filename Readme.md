<h1> Synology Note Station Flatpak Manifest</h1>

With this manifest you can install the "Synology Note Station" Flatpak on every Linux Distro 

Dependencies:
- flatpak-builder
- org.freedesktop.Platform 22.08

 Installation:
```shell
flatpak-builder --install --user --force-clean build-dir org.leeroymanea.synology-note-station.json
```

Todos:
- Publish on Flathub
