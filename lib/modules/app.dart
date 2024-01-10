import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class App extends StatelessWidget {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? ScreenUtilInit(
            designSize: kIsWeb ? const Size(1440, 1024) : const Size(412, 892),
            builder: (context, child) => CupertinoApp(
              navigatorKey: navigatorKey,
              debugShowCheckedModeBanner: false,
              onGenerateRoute: RouteList.router.onGenerate,
              initialRoute: '/',
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              title: 'Pharm Live',
            ),
          )
        : ScreenUtilInit(
            designSize: kIsWeb ? const Size(1440, 1024) : const Size(412, 892),
            builder: (context, child) => MaterialApp(
              navigatorKey: navigatorKey,
              debugShowCheckedModeBanner: false,
              onGenerateRoute: RouteList.router.onGenerate,
              initialRoute: '/',
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              title: 'Pharm Live',
            ),
          );
  }
}
// Example:

// App.navigatorKey.currentState?.pushNamed('register');
