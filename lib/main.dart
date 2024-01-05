import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await setupLocator();
  // RegisterService().chechSms(phone: '+998933974325', sms: '67020');
  //  context.setLocale(const Locale("ru"));
  runApp(EasyLocalization(
    saveLocale: true,
    startLocale: const Locale("ru"),
    supportedLocales: const [Locale("uz"), Locale("ru")],
    fallbackLocale: const Locale('en', 'US'),
    path: "lib/core/lang",
    child: const App(),
  ));
}