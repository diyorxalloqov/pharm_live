
import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';


class RouteList {
  static final RouteList _generate = RouteList._init();
  static RouteList get router => _generate;

  RouteList._init();

  Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _navigate(const RegisterPage() // SplashPage()

            );
      case "bottomNavbar":
        return _navigate(const BottomNavBarPage());
      // case "sign_up":
      // return _navigate(SignUpPage(authBloc: settings.arguments as AuthBloc));
      // case "menu_page":
      //   return _navigate(MenuPage());
    }
    return null;
  }

  _navigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
  // SecondPage(data: settings.arguments as UserModel)
}
