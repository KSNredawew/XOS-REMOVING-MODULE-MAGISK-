# XOS-REMOVING - Magisk Module

[![License](https://img.shields.io/github/license/yourusername/DeBloater?color=blue)](LICENSE)
[![Magisk](https://img.shields.io/badge/Magisk-20.4%2B-brightgreen)](https://github.com/topjohnwu/Magisk)
[![Android](https://img.shields.io/badge/Android-12.0%2B-blue)](https://www.android.com)

A Magisk module that safely removes bloatware packages from Google and Infinix/Transsion devices without modifying system partitions.

## Features

- **Non-destructive removal**: Uses `pm uninstall` instead of deleting system files
- **Fallback mechanism**: Disables packages if uninstall fails
- **Comprehensive list**: Targets both Google and OEM bloatware
- **Safe design**: Works in user space without system modification
- **Easy recovery**: Simply uninstall the module to revert changes

## Removed Packages

### Google Apps
| Package Name | App |
|-------------|-----|
| `com.google.android.apps.googleassistant` | Google Assistant |
| `com.google.android.apps.maps` | Google Maps |
| `com.google.android.googlequicksearchbox` | Google Search |
| `com.google.android.music` | Google Play Music |
| `com.google.android.projection.gearhead` | Android Auto |
| `com.google.android.partnersetup` | Partner Setup |
| `com.google.android.gm` | Gmail |
| `com.google.android.feedback` | Feedback |
| `com.google.android.marvin.talkback` | Talkback |
| `com.google.android.calendar` | Google Calendar |
| `com.google.android.apps.youtube.music` | YouTube Music |

### Infinix/Transsion Apps
| Package Name | App |
|-------------|-----|
| `com.trassion.infinix.xclub` | XClub |
| `com.transsion.wezone` | WeZone |
| `com.transsion.carlcare` | CarlCare |
| `com.transsion.wifiplaytogether` | WiFi Play Together |
| `com.transsnet.store` | Transsnet Store |
| `com.zaz.translate` | ZAZ Translate |
| `echo net.bat.store` | Bat Store |
| `com.funbase.xradio` | XRadio |
| `com.talpa.share` | Talpa Share |
| `com.android.musicfx` | MusicFX |
| ...and [20+ more](#) | |

## Installation

1. Download the latest module zip from [Releases](#)
2. Open Magisk Manager
3. Go to Modules → Install from storage
4. Select the downloaded zip
5. Reboot your device

## Uninstallation

1. Open Magisk Manager
2. Go to Modules
3. Find "DeBloater" and click Remove
4. Reboot your device

## Requirements

- Android 5.0+ (API 21+)
- Magisk 20.4+
- Root access

## Compatibility

Tested on:
- Infinix devices (XOS)
- Transsion devices
- Should work on most Android devices with similar bloatware

## Contributing

Found more bloatware to remove?  
1. Fork this repository
2. Add package names to `post-fs-data.sh`
3. Submit a Pull Request

## License

This project is licensed under the [GNU General Public License v3.0](LICENSE).
