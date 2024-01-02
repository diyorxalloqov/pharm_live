// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterEvent {
  void Function() get onSucces => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VoidCallback onSucces, String phone) register,
    required TResult Function(VoidCallback onSucces, String phone, String sms)
        checkSms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VoidCallback onSucces, String phone)? register,
    TResult? Function(VoidCallback onSucces, String phone, String sms)?
        checkSms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VoidCallback onSucces, String phone)? register,
    TResult Function(VoidCallback onSucces, String phone, String sms)? checkSms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_CheckSms value) checkSms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_CheckSms value)? checkSms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_CheckSms value)? checkSms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterEventCopyWith<RegisterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
  @useResult
  $Res call({void Function() onSucces, String phone});
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onSucces = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      onSucces: null == onSucces
          ? _value.onSucces
          : onSucces // ignore: cast_nullable_to_non_nullable
              as void Function(),
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res>
    implements $RegisterEventCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VoidCallback onSucces, String phone});
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onSucces = null,
    Object? phone = null,
  }) {
    return _then(_$RegisterImpl(
      onSucces: null == onSucces
          ? _value.onSucces
          : onSucces // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterImpl implements _Register {
  const _$RegisterImpl({required this.onSucces, required this.phone});

  @override
  final VoidCallback onSucces;
  @override
  final String phone;

  @override
  String toString() {
    return 'RegisterEvent.register(onSucces: $onSucces, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterImpl &&
            (identical(other.onSucces, onSucces) ||
                other.onSucces == onSucces) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onSucces, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      __$$RegisterImplCopyWithImpl<_$RegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VoidCallback onSucces, String phone) register,
    required TResult Function(VoidCallback onSucces, String phone, String sms)
        checkSms,
  }) {
    return register(onSucces, phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VoidCallback onSucces, String phone)? register,
    TResult? Function(VoidCallback onSucces, String phone, String sms)?
        checkSms,
  }) {
    return register?.call(onSucces, phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VoidCallback onSucces, String phone)? register,
    TResult Function(VoidCallback onSucces, String phone, String sms)? checkSms,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(onSucces, phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_CheckSms value) checkSms,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_CheckSms value)? checkSms,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_CheckSms value)? checkSms,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements RegisterEvent {
  const factory _Register(
      {required final VoidCallback onSucces,
      required final String phone}) = _$RegisterImpl;

  @override
  VoidCallback get onSucces;
  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckSmsImplCopyWith<$Res>
    implements $RegisterEventCopyWith<$Res> {
  factory _$$CheckSmsImplCopyWith(
          _$CheckSmsImpl value, $Res Function(_$CheckSmsImpl) then) =
      __$$CheckSmsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VoidCallback onSucces, String phone, String sms});
}

/// @nodoc
class __$$CheckSmsImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$CheckSmsImpl>
    implements _$$CheckSmsImplCopyWith<$Res> {
  __$$CheckSmsImplCopyWithImpl(
      _$CheckSmsImpl _value, $Res Function(_$CheckSmsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onSucces = null,
    Object? phone = null,
    Object? sms = null,
  }) {
    return _then(_$CheckSmsImpl(
      onSucces: null == onSucces
          ? _value.onSucces
          : onSucces // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      sms: null == sms
          ? _value.sms
          : sms // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckSmsImpl implements _CheckSms {
  const _$CheckSmsImpl(
      {required this.onSucces, required this.phone, required this.sms});

  @override
  final VoidCallback onSucces;
  @override
  final String phone;
  @override
  final String sms;

  @override
  String toString() {
    return 'RegisterEvent.checkSms(onSucces: $onSucces, phone: $phone, sms: $sms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckSmsImpl &&
            (identical(other.onSucces, onSucces) ||
                other.onSucces == onSucces) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.sms, sms) || other.sms == sms));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onSucces, phone, sms);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckSmsImplCopyWith<_$CheckSmsImpl> get copyWith =>
      __$$CheckSmsImplCopyWithImpl<_$CheckSmsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VoidCallback onSucces, String phone) register,
    required TResult Function(VoidCallback onSucces, String phone, String sms)
        checkSms,
  }) {
    return checkSms(onSucces, phone, sms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VoidCallback onSucces, String phone)? register,
    TResult? Function(VoidCallback onSucces, String phone, String sms)?
        checkSms,
  }) {
    return checkSms?.call(onSucces, phone, sms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VoidCallback onSucces, String phone)? register,
    TResult Function(VoidCallback onSucces, String phone, String sms)? checkSms,
    required TResult orElse(),
  }) {
    if (checkSms != null) {
      return checkSms(onSucces, phone, sms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_CheckSms value) checkSms,
  }) {
    return checkSms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_CheckSms value)? checkSms,
  }) {
    return checkSms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_CheckSms value)? checkSms,
    required TResult orElse(),
  }) {
    if (checkSms != null) {
      return checkSms(this);
    }
    return orElse();
  }
}

abstract class _CheckSms implements RegisterEvent {
  const factory _CheckSms(
      {required final VoidCallback onSucces,
      required final String phone,
      required final String sms}) = _$CheckSmsImpl;

  @override
  VoidCallback get onSucces;
  @override
  String get phone;
  String get sms;
  @override
  @JsonKey(ignore: true)
  _$$CheckSmsImplCopyWith<_$CheckSmsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterState {
  ActionStatus get status => throw _privateConstructorUsedError;
  bool get isSmsCorrect => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call({ActionStatus status, bool isSmsCorrect});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isSmsCorrect = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActionStatus,
      isSmsCorrect: null == isSmsCorrect
          ? _value.isSmsCorrect
          : isSmsCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterStateImplCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$RegisterStateImplCopyWith(
          _$RegisterStateImpl value, $Res Function(_$RegisterStateImpl) then) =
      __$$RegisterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ActionStatus status, bool isSmsCorrect});
}

/// @nodoc
class __$$RegisterStateImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterStateImpl>
    implements _$$RegisterStateImplCopyWith<$Res> {
  __$$RegisterStateImplCopyWithImpl(
      _$RegisterStateImpl _value, $Res Function(_$RegisterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isSmsCorrect = null,
  }) {
    return _then(_$RegisterStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActionStatus,
      isSmsCorrect: null == isSmsCorrect
          ? _value.isSmsCorrect
          : isSmsCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RegisterStateImpl implements _RegisterState {
  const _$RegisterStateImpl(
      {this.status = ActionStatus.isInitial, this.isSmsCorrect = false});

  @override
  @JsonKey()
  final ActionStatus status;
  @override
  @JsonKey()
  final bool isSmsCorrect;

  @override
  String toString() {
    return 'RegisterState(status: $status, isSmsCorrect: $isSmsCorrect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isSmsCorrect, isSmsCorrect) ||
                other.isSmsCorrect == isSmsCorrect));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, isSmsCorrect);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      __$$RegisterStateImplCopyWithImpl<_$RegisterStateImpl>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {final ActionStatus status,
      final bool isSmsCorrect}) = _$RegisterStateImpl;

  @override
  ActionStatus get status;
  @override
  bool get isSmsCorrect;
  @override
  @JsonKey(ignore: true)
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
