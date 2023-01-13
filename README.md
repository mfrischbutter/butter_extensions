# Butter Extensions

[![pub package](https://img.shields.io/pub/v/butter_extensions.svg)](https://pub.dev/packages/butter_extensions) <a  href="https://github.com/mfrischbutter/butter_extensions/actions"><img  src="https://github.com/mfrischbutter/butter_extensions/workflows/flutter-tests/badge.svg"  alt="Build Status"></a>

butter_extensions aims to make your life as a developer easier and help you avoid a lot of boilerplate code.

## Usage

To use this package, add `butter_extensions` to your `pubspec.yaml`.

### Example

```dart
import 'package:flutter/material.dart';
import 'package:butter_extensions/butter_extensions.dart';

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              width: double.infinity,
              color: Colors.red,
              child: const Text('1'),
            ).paddingAll(15.0),
            // Instead of:
            // Padding(
            //   padding: const EdgeInsets.all(15),
            //   child: Container(
            //     padding: const EdgeInsets.symmetric(vertical: 15),
            //     width: double.infinity,
            //     color: Colors.red,
            //     child: const Text('1'),
            //   ),
            // ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              width: double.infinity,
              color: Colors.blue,
              child: const Text('2'),
            ).paddingAll(15.0),
          ],
        ),
      ),
    );
  }
}
```

## Features

| Extension          | on                                                                        | Description                                |
| ------------------ | ------------------------------------------------------------------------- | ------------------------------------------ |
| `paddingAll`       | [Widget](https://api.flutter.dev/flutter/widgets/Widget-class.html)       | Add `EdgeInsets.all()` to any widget       |
| `paddingOnly`      | [Widget](https://api.flutter.dev/flutter/widgets/Widget-class.html)       | Add `EdgeInsets.only()` to any widget      |
| `paddingFromLTRB`  | [Widget](https://api.flutter.dev/flutter/widgets/Widget-class.html)       | Add `EdgeInsets.fromLTRB()` to any widget  |
| `paddingSymmetric` | [Widget](https://api.flutter.dev/flutter/widgets/Widget-class.html)       | Add `EdgeInsets.symmetric()` to any widget |
| `groupBy`          | [Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.html) |                                            |
| `sum`              | [Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.html) |                                            |
| `lengthBetween`    | [String](https://api.flutter.dev/flutter/dart-core/String-class.html)     |                                            |
| `maxLength`        | [String](https://api.flutter.dev/flutter/dart-core/String-class.html)     |                                            |
| `minLength`        | [String](https://api.flutter.dev/flutter/dart-core/String-class.html)     |                                            |
| `isToday`          | [DateTime](https://api.flutter.dev/flutter/dart-core/DateTime-class.html) |                                            |
| `isYesterday`      | [DateTime](https://api.flutter.dev/flutter/dart-core/DateTime-class.html) |                                            |
| `isTomorrow`       | [DateTime](https://api.flutter.dev/flutter/dart-core/DateTime-class.html) |                                            |

| Function        | params       | Description                 |
| --------------- | ------------ | --------------------------- |
| `getRandString` | (int length) | Generate random hash string |

## Known issues

- Auto-Import is currently not working in Visual Studio Code (`ctrl+space`)
