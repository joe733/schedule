# Schedule

> **Sir**: 'Dhyan do na!'
>
> **Me**:
>
> **Sir**: 'Kyon late huabe?!'
>
> **Me**: 'Sirji, meeting link goom hogaya'
>
> **Sir**: 😠

*Aab `Schedule` use karen!*

*Samay par kaksha mein pahunchen!*

## How to Build

### Prerequisites

- [`adb`](https://developer.android.com/studio/command-line/adb)
- [`Flutter`](https://flutter.dev/)
- [`Java 11+`](https://www.java.com/en/)

## Steps

Clone the repo:

```bash
git clone https://github.com/joe733/schedule.git
cd schedule
```

Get pub packages

```bash
flutter pub get
flutter pub run flutter_launcher_icons:main
```

Build apk

```bash
flutter build apk --split-per-abi
```

Enable [usb debugging](https://www.howtogeek.com/258788/what-is-usb-debugging-and-is-it-safe-to-leave-it-enabled-on-android/) and connect your phone. Then install the correct apk architecture.

```bash
ls build/app/outputs/apk/release/
adb install build/app/outputs/apk/release/app-<arch>-release.apk
```
