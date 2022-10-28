# Butter Extensions

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
	          //   padding: EdgeInsets.all(15),
	          //   child:Container(
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

| Extension          | on                                                                  | Description                                |
| ------------------ | ------------------------------------------------------------------- | ------------------------------------------ |
| `paddingAll`       | [Widget](https://api.flutter.dev/flutter/widgets/Widget-class.html) | Add `EdgeInsets.all()` to any widget       |
| `paddingOnly`      | [Widget](https://api.flutter.dev/flutter/widgets/Widget-class.html) | Add `EdgeInsets.only()` to any widget      |
| `paddingFromLTRB`  | [Widget](https://api.flutter.dev/flutter/widgets/Widget-class.html) | Add `EdgeInsets.fromLTRB()` to any widget  |
| `paddingSymmetric` | [Widget](https://api.flutter.dev/flutter/widgets/Widget-class.html) | Add `EdgeInsets.symmetric()` to any widget |

## Known issues

- Auto-Import is currently not working in Visual Studio Code (`ctrl+space`)
