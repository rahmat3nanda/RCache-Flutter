# RCache

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
  rcache_flutter: ^1.0.0
```
2. Then run:
```shell
flutter pub get
```

## Usage

RCache saves data to SharedPreferences and EncryptedSharedPreferences
```dart
import 'package:rcache_flutter/rcache.dart';

// save/load General data
RCache.common

// save/load Credentials data
RCache.credentials
```



Define your own Key
```
import 'package:rcache_flutter/rcache.dart';

class MyRCacheKey {
  static RCacheKey get myKey => RCacheKey("myKey");
}
```

## License
RCache is released under the MIT License. See the [LICENSE](https://github.com/rahmat3nanda/RCache-Flutter?tab=MIT-1-ov-file) file for details.

## Contact
For any questions or feedback, feel free to reach out to [rahmat3nanda@gmail.com](mailto:rahmat3nanda@gmail.com) or [My LinkedIn](https://www.linkedin.com/in/rahmat-trinanda/).
