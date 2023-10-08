import 'package:flutter/material.dart';
import 'package:web_static_screen_size/web_static_screen_size.dart';

void main() {
  runApp(MyApp());
}

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
