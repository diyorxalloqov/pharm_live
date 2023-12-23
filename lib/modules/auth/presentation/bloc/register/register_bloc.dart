// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:pharm_live/modules/auth/domain/usecase/register_use_case.dart';
import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';
import 'package:pharm_live/utils/status.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterUseCase register;

  RegisterBloc(this.register) : super(const RegisterState()) {
    on<_Register>((event, emit) async {
      emit(state.copyWith(status: ActionStatus.isLoading));
      Either<Failure, RegisterEntity> result = await register(RegisterParams(
        phone: event.phone,
      ));
      result.fold((l) => emit(state.copyWith(status: ActionStatus.isError)),
          (r) {
        event.onSucces();
        emit(state.copyWith(status: ActionStatus.isSuccess));
      });
    });
  }
}
