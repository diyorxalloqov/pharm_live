import 'package:pharm_live/modules/auth/data/source/service/auth_service.dart';
import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class AuthRepositoryImpl implements AuthRepository {
  final RegisterService res = RegisterService();
  @override
  Future<Either<Failure, dynamic>> register(String phone) async {
    return res.register(phone: phone);
  }

  @override
  Future<Either<Failure, dynamic>> checkSms(String phone, String sms) {
    // TODO: implement checkSms
    return res.chechSms(phone: phone, sms: sms);
  }
}
