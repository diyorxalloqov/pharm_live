import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pharm_live/core/singletons/service_locator.dart';
import 'package:pharm_live/modules/app.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  //  context.setLocale(const Locale("ru"));
  await setupLocator();
  runApp(EasyLocalization(
    saveLocale: true,
    startLocale: const Locale("ru"),
    supportedLocales: const [Locale("uz"), Locale("ru")],
    fallbackLocale: const Locale('en', 'US'),
    path: "lib/core/lang",
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const App();
  }
}
