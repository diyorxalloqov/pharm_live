import 'package:pharm_live/core/utils/typedef.dart';
import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

abstract class AuthService{
  ResultFuture<void> register(String phone);
}


class AuthServiceImplementation extends AuthService  {
  final client = sl<DioSettings>().dio;

  @override
  ResultFuture<void> register(String phone) async{

      Map<String, dynamic> data = {"phone": phone};

      try {
        Response<Either<String, RegisterModel>> result =
        await client.post(AppUrls.register, data: data);
        print(result.realUri);
        print(result.data.toString());
        print(result.statusCode.toString());
        print(data.toString());
        if (result.statusCode == 200 || result.statusCode == 201) {
          print(result.statusCode);
          return right(RegisterModel());
        } else {
          return left(DioException(requestOptions: result.requestOptions));
        }
      } on DioException catch (e) {

        return left(e);
      }

  }


}
