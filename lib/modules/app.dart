import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharm_live/modules/splash_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? const CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: SplashPage(),
          )
        : const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SplashPage(),
          );
  }
}
