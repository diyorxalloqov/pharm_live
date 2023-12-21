import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharm_live/core/router/app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoApp(
            debugShowCheckedModeBanner: false,
            onGenerateRoute: RouteList.router.onGenerate,
            initialRoute: '/',
          )
        : MaterialApp(
            debugShowCheckedModeBanner: false,
            onGenerateRoute: RouteList.router.onGenerate,
            initialRoute: '/',
          );
  }
}
