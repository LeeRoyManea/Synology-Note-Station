# Synology Note Station Flatpak

This repository provides a Flatpak manifest for packaging Synology Note Station as a Flatpak application. Note that I am **not** the developer of Synology Note Station, and I am **not** associated with Synology Inc. This wrapper is created independently and is not verified by, affiliated with, or supported by Synology Inc.

## Disclaimer

**Synology Note Station is a product developed and maintained by Synology Inc.** The Flatpak packaging provided here is intended for convenience and does not imply any endorsement or support from Synology Inc. Please refer to the [official Synology website](https://www.synology.com) for information and support related to Synology Note Station.

## Intention

I dont want to copy the files every time to the right place to get it up and running in Fedora.
So i decided to create a Flatpak manifest everyone can use. 

## Installation

### Dependencies:
- flatpak-builder

```shell
flatpak-builder --install --user --force-clean build-dir com.synology.synology-note-station.yaml
```

## Usage

Once installed, you can launch Synology Note Station from your application menu or run it from the command line using:

```bash
flatpak run com.synology.synology-note-station
```

## License

This Flatpak manifest is provided under the same license as the Synology Note Station application.


[//]: # (To install Synology Note Station via Flatpak, you can use the following commands:)
[//]: # ()
[//]: # (```bash)
[//]: # (# Add Flathub repository if not already added)
[//]: # (flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo)
[//]: # ()
[//]: # (# Install Synology Note Station from Flathub)
[//]: # (flatpak install flathub com.synology.NoteStation)
[//]: # (```)
