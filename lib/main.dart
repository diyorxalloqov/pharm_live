import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await setupLocator();
  print(await FlutterSecureStorage().read(key: Keys.access) ??
      "access token yoq");
  print(await FlutterSecureStorage().read(key: Keys.refresh) ??
      "refresh token yoq");

  runApp(EasyLocalization(
    saveLocale: true,
    startLocale: const Locale("ru"),
    supportedLocales: const [Locale("uz"), Locale("ru")],
    fallbackLocale: const Locale('en', 'US'),
    path: "lib/core/lang",
    child: const App(),
  ));
}
