part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.register(
      {required VoidCallback onSucces, required String phone}) = _Register;

  const factory RegisterEvent.checkSms(
      {required VoidCallback onSucces,
      required String phone,
      required String sms}) = _CheckSms;
}
