
import 'package:pharm_live/core/utils/typedef.dart';
import 'package:pharm_live/modules/auth/data/source/service/auth_service.dart';
import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';


class AuthRepositoryImpl implements AuthRepository {
  final AuthService _authService;

  AuthRepositoryImpl(this._authService);
  @override
  ResultFuture<void> register (String phone) async => await _authService.register(phone);
}
