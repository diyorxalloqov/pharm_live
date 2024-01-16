import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class RouteList {
  static final RouteList _generate = RouteList._init();
  static RouteList get router => _generate;

  RouteList._init();

  Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _navigate(const SplashPage());
      case 'register':
        return _navigate(const RegisterPage());
      case "otp":
        final args = settings.arguments as OtpPageArguments;
        return _navigate(BlocProvider(
          create: (context) => RegisterBloc(RegisterUseCase(), SmsUseCase()),
          child: OtpPage(phone: args.phone, registerBloc: args.registerBloc),
        ));
      case "bottomNavbar":
        return _navigate(const BottomNavBarPage());
      case "CompanyInfo":
        return _navigate(const CompanyInfo());
      case "paidPage":
        return _navigate(const PaidPage());
      case "location":
        return _navigate(const LocationPage());
      case "delivery":
        return _navigate(const DeliveryPage());
      case "orderHistory":
        return _navigate(const OrderHistory());
      case "orderDetail":
        return _navigate(OrderDetail(item: settings.arguments as HistoryEnum));
    }
    return null;
  }

  _navigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }

  // SecondPage(data: settings.arguments as UserModel)
}
