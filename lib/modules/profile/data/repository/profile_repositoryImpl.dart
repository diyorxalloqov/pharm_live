import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileService _profileService = ProfileService();

  @override
  Future<Either<Failure, bool>> logOut() {
    return _profileService.logOut();
  }

  @override
  Future<Either<Failure, String>> profileUpdate(
      String name, String lastName, String phone) {
    return _profileService.profileUpdate(name, lastName, phone);
  }

  @override
  Future<Either<Failure, bool>> deleteProfile() {
    return _profileService.deleteProfile();
  }
}
