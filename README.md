# RCache

[<img src="https://pub.dev/static/hash-l15m0lvm/img/pub-dev-logo.svg" alt="pub logo" height="20">](https://pub.dev/packages/rcache_flutter)

RCache is a lightweight Flutter plugin designed to simplify data storage across iOS, macOS, and Android. It offers an intuitive API for managing general data and securely handling credentials. On iOS and macOS, it integrates with UserDefaults and Keychain, while on Android, it utilizes SharedPreferences and EncryptedSharedPreferences. RCache streamlines persistent storage management, making it easy to handle data securely and efficiently across platforms.

## Features

- **UserDefaults Storage (iOS/macOS)**: Simple methods for storing and retrieving data.
- **Keychain Storage (iOS/macOS)**: Secure storage for sensitive information.
- **SharedPreferences Storage (Android)**: Easy-to-use methods for general data.
- **EncryptedSharedPreferences Storage (Android)**: Secure storage for sensitive data.
- **Cross-Platform Support**: Unified API for multiple platforms.

## Installation

1. Add `rcache_flutter` to your `pubspec.yaml` file:
```yaml
dependencies:
   # Others dependencies
  rcache_flutter: ^1.1.0
```
2. Then run:
```shell
flutter pub get
```

## Usage

You can check DemoApp [here](https://github.com/rahmat3nanda/RCache-Flutter-Demo-App.git)

### General Storage

#### Save Variable to General Storage

```dart
import 'package:rcache_flutter/rcache.dart';
import 'dart:typed_data'; // For Uint8List

// save Uint8List to General Storage
RCache.common.saveUint8List(Uint8List.fromList("RCache".codeUnits), key: RCacheKey("uint8List"))

// save String to General Storage
RCache.common.saveString("String", key: RCacheKey("string"))

// save Bool to General Storage
RCache.common.saveBool(true, key: RCacheKey("bool"))

// save Integer to General Storage
RCache.common.saveInteger(101, key: RCacheKey("integer"))

// save Array to General Storage
RCache.common.saveArray([101, "string", true], key: RCacheKey("array"))

// save Map to General Storage
RCache.common.saveMap({"bool": true, "integer": 101}, key: RCacheKey("map"))

// save Double to General Storage
RCache.common.saveDouble(2.0, key: RCacheKey("double"))
```

#### Read Variable from General Storage

```dart
import 'package:rcache_flutter/rcache.dart';

// read Uint8List from General Storage
RCache.common.readUint8List(key: RCacheKey("uint8List"))

// read String from General Storage
RCache.common.readString(key: RCacheKey("string"))

// read Bool from General Storage
RCache.common.readBool(key: RCacheKey("bool"))

// read Integer from General Storage
RCache.common.readInteger(key: RCacheKey("integer"))

// read Array from General Storage
RCache.common.readArray(key: RCacheKey("array"))

// read Map from General Storage
RCache.common.readMap(key: RCacheKey("map"))

// read Double from General Storage
RCache.common.readDouble(key: RCacheKey("double"))
```

#### Remove Variable from General Storage

```dart
import 'package:rcache_flutter/rcache.dart';

// remove from General Storage
RCache.common.remove(key: RCacheKey("myKey"))
```

#### Clear General Storage

```dart
import 'package:rcache_flutter/rcache.dart';

// Clear General Storage
RCache.common.clear()
```

### Credentials Storage

#### Save Variable to Credentials Storage

```dart
import 'package:rcache_flutter/rcache.dart';
import 'dart:typed_data'; // For Uint8List

// save Uint8List to Credentials Storage
RCache.credentials.saveUint8List(Uint8List.fromList("RCache".codeUnits), key: RCacheKey("uint8List"))

// save String to Credentials Storage
RCache.credentials.saveString("String", key: RCacheKey("string"))

// save Bool to Credentials Storage
RCache.credentials.saveBool(true, key: RCacheKey("bool"))

// save Integer to Credentials Storage
RCache.credentials.saveInteger(101, key: RCacheKey("integer"))

// save Array to Credentials Storage
RCache.credentials.saveArray([101, "string", true], key: RCacheKey("array"))

// save Map to Credentials Storage
RCache.credentials.saveMap({"bool": true, "integer": 101}, key: RCacheKey("map"))

// save Double to Credentials Storage
RCache.credentials.saveDouble(2.0, key: RCacheKey("double"))
```

#### Read Variable from Credentials Storage

```dart
import 'package:rcache_flutter/rcache.dart';

// read Uint8List from Credentials Storage
RCache.credentials.readUint8List(key: RCacheKey("uint8List"))

// read String from Credentials Storage
RCache.credentials.readString(key: RCacheKey("string"))

// read Bool from Credentials Storage
RCache.credentials.readBool(key: RCacheKey("bool"))

// read Integer from Credentials Storage
RCache.credentials.readInteger(key: RCacheKey("integer"))

// read Array from Credentials Storage
RCache.credentials.readArray(key: RCacheKey("array"))

// read Map from Credentials Storage
RCache.credentials.readMap(key: RCacheKey("map"))

// read Double from Credentials Storage
RCache.credentials.readDouble(key: RCacheKey("double"))
```

#### Remove Variable from Credentials Storage

```dart
import 'package:rcache_flutter/rcache.dart';

// remove from Credentials Storage
RCache.credentials.remove(key: RCacheKey("myKey"))
```

#### Clear Credentials Storage

```dart
import 'package:rcache_flutter/rcache.dart';

// Clear Credentials Storage
RCache.credentials.clear()
```

### Clear All Variable from General Storage & Credentials Storage

```dart
import 'package:rcache_flutter/rcache.dart';

// Clear All Variable from General Storage & Credentials Storage
RCache.clear()
```

### Define your own Key

```dart
import 'package:rcache_flutter/rcache.dart';

class MyRCacheKey {
  static RCacheKey get myKey => RCacheKey("myKey");
}
```

## License
RCache is released under the MIT License. See the [LICENSE](https://github.com/rahmat3nanda/RCache-Flutter?tab=MIT-1-ov-file) file for details.

## Contact
For any questions or feedback, feel free to reach out to [rahmat3nanda@gmail.com](mailto:rahmat3nanda@gmail.com) or [My LinkedIn](https://www.linkedin.com/in/rahmat-trinanda/).
