import 'dart:async';

import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

part 'profile_state.dart';
part 'profile_event.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const ProfileState()) {
    on<_IsRegistered>(_isregistered);
    add(const _IsRegistered());
  }
  // faqat bloc boldi lekin architecturani boshidan qilish kerak

  FutureOr<void> _isregistered(
      _IsRegistered event, Emitter<ProfileState> emit) async {
    if (await const FlutterSecureStorage().read(key: Keys.access) != null ||
        const FlutterSecureStorage()
            .read(key: Keys.access)
            .toString()
            .isNotEmpty) {
      print(true);
      emit(state.copyWith(isRegister: true));
    } else {
      print(false);
      emit(state.copyWith(isRegister: false));
    }
  }
}
