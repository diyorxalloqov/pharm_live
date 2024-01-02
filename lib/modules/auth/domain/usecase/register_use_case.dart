import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

/// REGISTER USECASE

class RegisterUseCase extends UseCase<dynamic, String> {
  final AuthRepository registerRepository = AuthRepositoryImpl();

  @override
  Future<Either<Failure, dynamic>> call(String params) {
    return registerRepository.register(params);
  }
}
