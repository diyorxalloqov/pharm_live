import 'package:pharm_live/modules/auth/domain/usecase/register_use_case.dart';
import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

final sl = GetIt.I;

Future<void> setupLocator() async {
  // await StorageRepository.getInstance();
  sl
    ..registerLazySingleton(() => RegisterUseCase(AuthRepositoryImpl(sl())))
    ..registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(sl()))
    ..registerSingleton(DioSettings.new);
}
