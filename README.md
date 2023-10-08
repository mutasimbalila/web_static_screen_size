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

Give initial static size for the website based on your screen Size but in case the screen height increase more  than the initial value will be replaced with the new Size.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

Initialize the WebStaticScreenSize in MyApp

```dart
///WebStaticScreenSize initialization must be in the before
    ///the first think in [MyApp] so it get the exact initial size
    WebStaticScreenSize.initialize(context);
```

```dart
import 'package:flutter/material.dart';
import 'package:web_static_screen_size/web_static_screen_size.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    ///WebStaticScreenSize initialization must be in the before
    ///the first think in [MyApp] so it get the exact initial size
    WebStaticScreenSize.initialize(context);


    return const Material(
      child: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = WebStaticScreenSize(context);

    return SizedBox(
      height: size.height,
      width: size.width,
    );
  }
}

```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
