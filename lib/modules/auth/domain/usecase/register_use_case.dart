import 'package:pharm_live/core/utils/typedef.dart';
import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

/// REGISTER USECASE

class RegisterUseCase extends UseCase<void, String> {
  final AuthRepository _registerRepository;

  RegisterUseCase(this._registerRepository);

  @override
  ResultFuture<void> call(String params) async =>  await _registerRepository.register(params);
}


