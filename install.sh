#bash
# 0 Prepare 
mkdir temp
cd temp
# 1 Download source
wget "https://global.synologydownload.com/download/Utility/NoteStationClient/2.2.4-703/Ubuntu/x86_64/synology-note-station-client-2.2.4-703-linux-x64.deb?model=DS920%2B&bays=4&dsm_version=7.2.1&build_number=69057" -O "synology-note-station-client-2.2.4-703-linux-x64.deb"
# 2 Extract Data from .deb
ar x "synology-note-station-client-2.2.4-703-linux-x64.deb"
# 3 Extract Program Data
tar -xf data.tar.xz
# 4 Copy Data
cd ..
mkdir synology-note-station
mkdir icons
cp -r temp/opt/synology-note-station/* synology-note-station
#cp temp/usr/share/icons/hicolor/128x128/apps/synology-note-station.png org.leeroymanea.synology-note-station128x128.png
#cp temp/usr/share/icons/hicolor/256x256/apps/synology-note-station.png org.leeroymanea.synology-note-station256x256.png
cp -r temp/usr/share/icons/hicolor/* icons
find icons -type f -execdir mv {} org.leeroymanea.synology-note-station.png \;
#5  Update launch.sh
sed -i 's/\/opt\/synology-note-station/\/app\/share\/applications\/org.leeroymanea.synology-note-station/g' synology-note-station/launch.sh
#6 Clean
rm -R temp
echo "run now installation with:"
echo "flatpak-builder --install --user --force-clean build-dir org.leeroymanea.synology-note-station.json"
flatpak-builder --install --user --force-clean build-dir org.leeroymanea.synology-note-station.json

