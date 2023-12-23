import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

abstract class AuthRepository {
  Future<Either<Failure, RegisterEntity>> register(
      String phone);
}
