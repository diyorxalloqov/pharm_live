part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState(
      {@Default(ActionStatus.isInitial) ActionStatus status,
      @Default(false) bool isRegister}) = _ProfileState;
}