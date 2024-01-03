#bash
wget https://global.synologydownload.com/download/Utility/NoteStationClient/2.2.4-703/Ubuntu/x86_64/synology-note-station-client-2.2.4-703-linux-x64.deb
echo "flatpak-builder --install --user --force-clean build-dir org.leeroymanea.synology-note-station.json"
