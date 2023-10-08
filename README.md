<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

<p style="text-align: justify;">When you develop flutter web using MediaQuery and the browser height change MediaQuery get out of hand. The package Give initial static size for the website based on your screen Size and it change only if screen height more than the default value the new value will be replaced with the old Size</p>

## Installing

```yaml
dependencies:
  web_static_screen_size: ^5.2.0
```

## Import

```dart
import 'package:web_static_screen_size/web_static_screen_size.dart';
```

## Usage

Initialize the WebStaticScreenSize in MyApp

```dart
WebStaticScreenSize.initialize(context);
```

Instead of [MediaQuery.of(context).size] use this

```dart
final size = WebStaticScreenSize(context);
print(size.height);
print(size.width);
```

To disable resize when the new screen height more than the default value

```dart
WebStaticScreenSize.initialize(context,resize:false);
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
