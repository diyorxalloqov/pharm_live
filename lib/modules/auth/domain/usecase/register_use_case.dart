import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

/// REGISTER USECASE

class RegisterUseCase extends UseCase<RegisterEntity, RegisterParams> {
  final AuthRepository registerRepository = AuthRepositoryImpl();

  @override
  Future<Either<Failure, RegisterEntity>> call(RegisterParams params) {
    return registerRepository.register(params.phone);
  }
}

class RegisterParams {
  final String phone;

  RegisterParams({
    required this.phone,
  });
}
