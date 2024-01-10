import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class ProfileService {
  Future<String?> refreshToken =
      const FlutterSecureStorage().read(key: Keys.refresh);
  Future<String?> accessToken =
      const FlutterSecureStorage().read(key: Keys.access);

  final Dio client = serviceLocator<DioSettings>().dio;

  Future<Either<Failure, String>> logOut() async {
    // working well
    try {
      Response response = await client.post(AppUrls.logOut,
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Authorization': "Bearer ${await accessToken}"
          }));
      if (response.statusCode == 200) {
        print(response.data);
        return right(response.data['message']);
      } else {
        print(response.statusCode);
        return left(ServerFailure(message: response.statusMessage.toString()));
      }
    } on DioException catch (e) {
      print("exeption");
      print(e.message);
      return left(ServerFailure(message: e.message.toString()));
    }
  }

  Future<Either<Failure, String>> profileUpdate(
      String name, String lastName, String phone) async {
    Map<String, dynamic> data = {
      "first_name": name,
      "last_name": lastName,
      "phone": phone
    };
    try {
      Response response = await client.put(AppUrls.profileUpdate,
          data: data,
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Authorization': "Bearer ${await accessToken}"
          }));
      if (response.statusCode == 200) {
        print(response.data);
        return right(response.data['msg']);
      } else {
        print(response.statusMessage);
        return left(response.data['messages']['message']);
      }
    } on DioException catch (e) {
      print("exeption");
      print(e.message);
      return left(ServerFailure(message: e.message.toString()));
    }
  }

  // Future<Either,String > deleteProfile()async{}
}
