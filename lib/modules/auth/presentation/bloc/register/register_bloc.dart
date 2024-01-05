// ignore_for_file: depend_on_referenced_packages


import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterUseCase register;
  final SmsUseCase checkSms;

  RegisterBloc(this.register, this.checkSms) : super(const RegisterState()) {
    on<_Register>((event, emit) async {
      emit(state.copyWith(status: ActionStatus.isLoading));

      final result = await register(event.phone);

      result.fold((l) => emit(state.copyWith(status: ActionStatus.isError)),
          (r) {
        event.onSucces();
        emit(state.copyWith(status: ActionStatus.isSuccess));
      });
    });

    on<_CheckSms>((event, emit) async {
      emit(state.copyWith(status: ActionStatus.isLoading));
      final res =
          await checkSms(CheckSmsParams(phone: event.phone, sms: event.sms));
      res.fold(
          (l) => emit(state.copyWith(
              status: ActionStatus.isError, isSmsCorrect: false)),
          (r) => emit(state.copyWith(
              status: ActionStatus.isSuccess, isSmsCorrect: true)));
    });
  }
}
