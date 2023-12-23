import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class AuthService {
  final client = serviceLocator<DioSettings>().dio;

  Future<Either<Failure, RegisterModel>> register(
      {required String phone}) async {
    Map<String, dynamic> data = {"phone": phone};

    try {
      Response<Either<String, RegisterModel>> result =
          await client.post(AppUrls.register, data: data);
      print(result.realUri);
      print(result.data.toString());
      print(result.statusCode.toString());
      print(data.toString());
      if (result.statusCode == 201) {
        print(result.statusCode);
        return right(RegisterModel());
      } else {
        return left(ServerFailure(message: result.statusMessage.toString()));
      }
    } on DioException catch (e) {
      print(e.message);
      return left(ServerFailure(message: e.message.toString()));
    }
  }
}
