import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

abstract class AuthRepository {
  Future<Either<Failure, dynamic>> register(String phone);
  Future<Either<Failure, dynamic>> checkSms(String phone, String sms);
}
