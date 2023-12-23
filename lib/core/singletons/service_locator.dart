
import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

final serviceLocator = GetIt.I;

Future<void> setupLocator() async {
  // await StorageRepository.getInstance();
  serviceLocator.registerLazySingleton(DioSettings.new);
}
