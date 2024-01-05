
import 'package:pharm_live/core/utils/typedef.dart';
import 'package:pharm_live/modules/auth/data/source/service/auth_service.dart';
import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class AuthRepositoryImpl implements AuthRepository {

  final RegisterService res;

  AuthRepositoryImpl(this.res);
  @override
  ResultFuture register(String phone) async {
    return res.register(phone: phone);
  }

  @override
  ResultFuture checkSms(String phone, String sms) {
    // TODO: implement checkSms
    return res.chechSms(phone: phone, sms: sms);
  }

}
