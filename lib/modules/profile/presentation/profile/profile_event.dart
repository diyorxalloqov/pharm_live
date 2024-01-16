part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.isRegister() = _IsRegistered;
  const factory ProfileEvent.profileUpdate(
      {required String phone,
      required String firstName,
      required String lastName}) = _ProfileUpdate;
  const factory ProfileEvent.logOut() = _LogOut;
  const factory ProfileEvent.deleteProfile() = _DeleteProfile;
}
