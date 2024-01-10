part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.isRegister() = _IsRegistered;
  // const factory ProfileEvent.accauntEnterance(
  //     {required String phone,
  //     required String firstName,
  //     required String lastName}) = _EnterAccaunt;
}
