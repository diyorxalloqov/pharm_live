import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

abstract class ProfileRepository {
  Future<Either<Failure, bool>> logOut();
  Future<Either<Failure, String>> profileUpdate(
      String name, String lastName, String phone);

  Future<Either<Failure, bool>> deleteProfile();
}
