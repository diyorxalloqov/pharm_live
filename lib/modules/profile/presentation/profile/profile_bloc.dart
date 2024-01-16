import 'dart:async';

import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';
import 'package:pharm_live/modules/profile/domain/usecase/delete_profile_use_case.dart';
import 'package:pharm_live/modules/profile/domain/usecase/logOut_use_case.dart';
import 'package:pharm_live/modules/profile/domain/usecase/profile_update_use_case.dart';

part 'profile_state.dart';
part 'profile_event.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  DeleteProfileUseCase deleteProfileUseCase;
  LogOuteUseCase logOuteUseCase;
  ProfileUpdateUseCase profileUpdateUseCase;

  ProfileBloc(
      this.deleteProfileUseCase, this.logOuteUseCase, this.profileUpdateUseCase)
      : super(const ProfileState()) {
    on<_IsRegistered>(_isregistered);
    add(const _IsRegistered());
    on<_ProfileUpdate>(_update);
    on<_DeleteProfile>(_delete);
    on<_LogOut>(_logout);
  }
  FutureOr<void> _isregistered(
      _IsRegistered event, Emitter<ProfileState> emit) async {
    if (await const FlutterSecureStorage().read(key: Keys.access) != null &&
        const FlutterSecureStorage()
            .read(key: Keys.access)
            .toString()
            .isNotEmpty) {
      emit(state.copyWith(isRegister: true));
    } else {
      emit(state.copyWith(isRegister: false));
    }
  }

  FutureOr<void> _update(
      _ProfileUpdate event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(status: ActionStatus.isLoading));
    Either<Failure, dynamic> res = await profileUpdateUseCase(
        ProfileUpdateParams(
            name: event.firstName,
            lastName: event.lastName,
            phone: event.phone));
    res.fold(
        (l) => emit(
            state.copyWith(status: ActionStatus.isError, error: l.message)),
        (r) => emit(state.copyWith(status: ActionStatus.isSuccess)));
  }

  FutureOr<void> _delete(
      _DeleteProfile event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(status: ActionStatus.isLoading));
    Either<Failure, dynamic> res = await deleteProfileUseCase(true);
    res.fold(
        (l) => emit(
            state.copyWith(status: ActionStatus.isError, error: l.message)),
        (r) async {
      emit(state.copyWith(status: ActionStatus.isSuccess));
      await const FlutterSecureStorage().delete(key: Keys.access);
      await const FlutterSecureStorage().delete(key: Keys.refresh);
    });
  }

  FutureOr<void> _logout(_LogOut event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(status: ActionStatus.isLoading));
    Either<Failure, dynamic> res = await logOuteUseCase(true);
    res.fold(
        (l) => emit(
            state.copyWith(status: ActionStatus.isError, error: l.message)),
        (r) {
      emit(state.copyWith(status: ActionStatus.isSuccess));
    });
  }
}
