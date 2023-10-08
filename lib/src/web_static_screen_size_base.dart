import 'package:flutter/material.dart';

// / Querying using [MediaQuery.of] will cause your widget to rebuild automatically
// / whenever any field of the [MediaQueryData] changes.
// / This class give you initial static size for the website but in case the screen
// / height increase bigger than the initial value the [WebStaticSize] give you the new Size
// / To disable the resize use  WebStaticSize.initialize(context,resize: false)
class WebStaticScreenSize extends Size {
  static WebStaticScreenSize? _instance;
  static bool? _resize;

  WebStaticScreenSize._(super.width, super.height);

  factory WebStaticScreenSize(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (_instance == null) {
      _instance ??= WebStaticScreenSize._(size.width, size.height);
    } else {
      if (_resize ?? false) {
        _instance!.height < size.height
            ? _instance = WebStaticScreenSize._(size.width, size.height)
            : null;
      }
    }
    return _instance!;
  }

  static initialize(BuildContext context, {bool resize = true}) {
    _resize = resize;
    WebStaticScreenSize(context);
  }
}
