import 'package:pharm_live/core/singletons/keys.dart';
import 'package:pharm_live/core/singletons/storage.dart';
import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class RegisterService {
  final Dio client = serviceLocator<DioSettings>().dio;
  // RegisterModel
  Future<Either<Failure, dynamic>> register({required String phone}) async {
    try {
      print('trying ');
      Response response =
          await Dio().post(AppUrls.register, data: {'phone': phone});
      print(response.statusCode.toString());
      if (response.statusCode == 200) {
        print(response.statusCode);
        return right('Success');
      } else {
        return left(ServerFailure(message: response.statusMessage.toString()));
      }
    } on DioException catch (e) {
      print("exeption");
      print(e.message);
      ;
      return left(ServerFailure(message: e.message.toString()));
    }
  }

  Future<Either<Failure, dynamic>> chechSms(
      {required String phone, required String sms}) async {
    try {
      print('trying ');
      Response response = await Dio()
          .post(AppUrls.checkSms, data: {'phone': phone, 'sms_code': sms});
      print(response.realUri);
      print(response.data.toString());
      print(response.statusCode.toString());
      if (response.statusCode == 200) {
        print(response.statusCode);
        await SecureStorageRepository()
            .putString(Keys.access, response.data['access']);
        await SecureStorageRepository()
            .putString(Keys.refresh, response.data['refresh']);

        ///    check token from db and which time send to sms response asking ??
        return right('Success');
      } else {
        return left(ServerFailure(message: response.statusMessage.toString()));
      }
    } on DioException catch (e) {
      print("exeption");
      print(e.message);
      print(e.error);
      print(e.type);
      print(e.response);
      return left(ServerFailure(message: e.message.toString()));
    }
  }
}
