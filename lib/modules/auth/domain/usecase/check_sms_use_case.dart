import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class SmsUseCase extends UseCase<dynamic, CheckSmsParams> {
  final AuthRepository registerRepository = AuthRepositoryImpl();

  @override
  Future<Either<Failure, dynamic>> call(CheckSmsParams params) {
    return registerRepository.checkSms(params.phone, params.sms);
  }
}

class CheckSmsParams {
  final String phone;
  final String sms;

  CheckSmsParams({required this.phone, required this.sms});
}
