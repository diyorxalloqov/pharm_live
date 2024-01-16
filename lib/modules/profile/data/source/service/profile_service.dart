import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class ProfileService {
  Future<String?> refreshToken =
      const FlutterSecureStorage().read(key: Keys.refresh);
  Future<String?> accessToken =
      const FlutterSecureStorage().read(key: Keys.access);

  final Dio client = serviceLocator<DioSettings>().dio;

  Future<Either<Failure, bool>> logOut() async {
    try {
      Response response = await client.post(AppUrls.logOut,
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Authorization': "Bearer ${await accessToken}"
          }));
      if (response.statusCode == 200) {
        print(response.data);
        return right(true);
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
    FormData formData = FormData.fromMap({
      "first_name": name,
      "last_name": lastName,
      "phone": phone,
    });
    try {
      Response response = await Dio().put(
        AppUrls.profileUpdate,
        options: Options(
          headers: {
            'Content-Type': 'multipart/form-data',
            'Authorization': "Bearer ${await accessToken}"
          },
        ),
        data: formData,
      );
      print("try ${response.statusCode}");
      if (response.statusCode == 200) {
        print(response.data);
        return right(response.data['msg']);
      } else {
        return left(
          ServerFailure(
            message: response.statusMessage.toString(),
            code: response.statusCode.toString(),
          ),
        );
      }
    } on DioException catch (e) {
      print("exception");
      print(e.message);
      return left(Failure(message: e.message.toString()));
    }
  }

  Future<Either<Failure, bool>> deleteProfile() async {
    try {
      Response response = await client.delete(AppUrls.deleteProfile,
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Authorization': "Bearer ${await accessToken}"
          }));
      print("try ${response.statusCode}");
      if (response.statusCode == 200) {
        print(response.data);
        return right(true);
      } else {
        print(response.statusMessage);
        return left(ServerFailure(message: response.statusMessage.toString()));
      }
    } on DioException catch (e) {
      print("exeption");
      print(e.message);
      return left(Failure(message: e.message.toString()));
    }
  }

  // Future<Either<Failure,>>
}
