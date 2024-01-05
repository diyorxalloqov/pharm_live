part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState(
      {@Default(ActionStatus.isInitial) ActionStatus status,
      @Default(false) bool isSmsCorrect}) = _RegisterState;
}
