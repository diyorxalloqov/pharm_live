import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class DeleteProfileUseCase extends UseCase<dynamic, bool> {
  final ProfileRepository registerRepository = ProfileRepositoryImpl();

  @override
  Future<Either<Failure, dynamic>> call(bool params) {
    return registerRepository.deleteProfile();
  }
}
