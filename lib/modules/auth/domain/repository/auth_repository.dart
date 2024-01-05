import 'package:pharm_live/core/utils/typedef.dart';
import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

abstract class AuthRepository {

  ResultFuture register(String phone);
  ResultFuture checkSms(String phone, String sms);

}
