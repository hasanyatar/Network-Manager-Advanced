import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

mixin PortraitModeMixin on StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _portraitModeOnly();

    return Container();
  }
}

mixin PortraitStatefulModeMixin<T extends StatefulWidget> on State<T> {
  @override
  Widget build(BuildContext context) {
    _portraitModeOnly();

    return Container();
  }

  @override
  void dispose() {
    super.dispose();

    _enableRotation();
  }
}

// * Only allow portrait mode
void _portraitModeOnly() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

//* Allow all orientations
void _enableRotation() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
}

/// ! To block rotation in the entire app implement PortraitModeMixin in the main App widget. Remember to call super.build(context) in Widget build(BuildContext context) method.
//* class App extends StatelessWidget with PortraitModeMixin {
//*    const App();
//*
//*   @override
//*   Widget build(BuildContext context) {
//!     super.build(context);
//*      return Material(
//*        title: 'Flutter Demo',
//*        theme: CupertinoThemeData(),
//*        home: Textography("Block screen rotation example", variant: TextVariants.body1,),
//*      );
//*   }
//* }