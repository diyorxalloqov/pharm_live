// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class ProfileUpdateUseCase extends UseCase<dynamic, ProfileUpdateParams> {
  final ProfileRepository registerRepository = ProfileRepositoryImpl();

  @override
  Future<Either<Failure, dynamic>> call(ProfileUpdateParams params) {
    return registerRepository.profileUpdate(
        params.name, params.lastName, params.phone);
  }
}

class ProfileUpdateParams {
  final String name;
  final String lastName;
  final String phone;
  ProfileUpdateParams({
    required this.name,
    required this.lastName,
    required this.phone,
  });
}
