// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  ActionStatus get status => throw _privateConstructorUsedError;
  bool get isLogOut => throw _privateConstructorUsedError;
  bool get isDelete => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  bool get isRegister => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {ActionStatus status,
      bool isLogOut,
      bool isDelete,
      String error,
      bool isRegister});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isLogOut = null,
    Object? isDelete = null,
    Object? error = null,
    Object? isRegister = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActionStatus,
      isLogOut: null == isLogOut
          ? _value.isLogOut
          : isLogOut // ignore: cast_nullable_to_non_nullable
              as bool,
      isDelete: null == isDelete
          ? _value.isDelete
          : isDelete // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isRegister: null == isRegister
          ? _value.isRegister
          : isRegister // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ActionStatus status,
      bool isLogOut,
      bool isDelete,
      String error,
      bool isRegister});
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isLogOut = null,
    Object? isDelete = null,
    Object? error = null,
    Object? isRegister = null,
  }) {
    return _then(_$ProfileStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActionStatus,
      isLogOut: null == isLogOut
          ? _value.isLogOut
          : isLogOut // ignore: cast_nullable_to_non_nullable
              as bool,
      isDelete: null == isDelete
          ? _value.isDelete
          : isDelete // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isRegister: null == isRegister
          ? _value.isRegister
          : isRegister // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl(
      {this.status = ActionStatus.isInitial,
      this.isLogOut = false,
      this.isDelete = false,
      this.error = '',
      this.isRegister = false});

  @override
  @JsonKey()
  final ActionStatus status;
  @override
  @JsonKey()
  final bool isLogOut;
  @override
  @JsonKey()
  final bool isDelete;
  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final bool isRegister;

  @override
  String toString() {
    return 'ProfileState(status: $status, isLogOut: $isLogOut, isDelete: $isDelete, error: $error, isRegister: $isRegister)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isLogOut, isLogOut) ||
                other.isLogOut == isLogOut) &&
            (identical(other.isDelete, isDelete) ||
                other.isDelete == isDelete) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isRegister, isRegister) ||
                other.isRegister == isRegister));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, isLogOut, isDelete, error, isRegister);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {final ActionStatus status,
      final bool isLogOut,
      final bool isDelete,
      final String error,
      final bool isRegister}) = _$ProfileStateImpl;

  @override
  ActionStatus get status;
  @override
  bool get isLogOut;
  @override
  bool get isDelete;
  @override
  String get error;
  @override
  bool get isRegister;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isRegister,
    required TResult Function(String phone, String firstName, String lastName)
        profileUpdate,
    required TResult Function() logOut,
    required TResult Function() deleteProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isRegister,
    TResult? Function(String phone, String firstName, String lastName)?
        profileUpdate,
    TResult? Function()? logOut,
    TResult? Function()? deleteProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isRegister,
    TResult Function(String phone, String firstName, String lastName)?
        profileUpdate,
    TResult Function()? logOut,
    TResult Function()? deleteProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsRegistered value) isRegister,
    required TResult Function(_ProfileUpdate value) profileUpdate,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_DeleteProfile value) deleteProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IsRegistered value)? isRegister,
    TResult? Function(_ProfileUpdate value)? profileUpdate,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_DeleteProfile value)? deleteProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsRegistered value)? isRegister,
    TResult Function(_ProfileUpdate value)? profileUpdate,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_DeleteProfile value)? deleteProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IsRegisteredImplCopyWith<$Res> {
  factory _$$IsRegisteredImplCopyWith(
          _$IsRegisteredImpl value, $Res Function(_$IsRegisteredImpl) then) =
      __$$IsRegisteredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsRegisteredImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$IsRegisteredImpl>
    implements _$$IsRegisteredImplCopyWith<$Res> {
  __$$IsRegisteredImplCopyWithImpl(
      _$IsRegisteredImpl _value, $Res Function(_$IsRegisteredImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IsRegisteredImpl implements _IsRegistered {
  const _$IsRegisteredImpl();

  @override
  String toString() {
    return 'ProfileEvent.isRegister()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsRegisteredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isRegister,
    required TResult Function(String phone, String firstName, String lastName)
        profileUpdate,
    required TResult Function() logOut,
    required TResult Function() deleteProfile,
  }) {
    return isRegister();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isRegister,
    TResult? Function(String phone, String firstName, String lastName)?
        profileUpdate,
    TResult? Function()? logOut,
    TResult? Function()? deleteProfile,
  }) {
    return isRegister?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isRegister,
    TResult Function(String phone, String firstName, String lastName)?
        profileUpdate,
    TResult Function()? logOut,
    TResult Function()? deleteProfile,
    required TResult orElse(),
  }) {
    if (isRegister != null) {
      return isRegister();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsRegistered value) isRegister,
    required TResult Function(_ProfileUpdate value) profileUpdate,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_DeleteProfile value) deleteProfile,
  }) {
    return isRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IsRegistered value)? isRegister,
    TResult? Function(_ProfileUpdate value)? profileUpdate,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_DeleteProfile value)? deleteProfile,
  }) {
    return isRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsRegistered value)? isRegister,
    TResult Function(_ProfileUpdate value)? profileUpdate,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_DeleteProfile value)? deleteProfile,
    required TResult orElse(),
  }) {
    if (isRegister != null) {
      return isRegister(this);
    }
    return orElse();
  }
}

abstract class _IsRegistered implements ProfileEvent {
  const factory _IsRegistered() = _$IsRegisteredImpl;
}

/// @nodoc
abstract class _$$ProfileUpdateImplCopyWith<$Res> {
  factory _$$ProfileUpdateImplCopyWith(
          _$ProfileUpdateImpl value, $Res Function(_$ProfileUpdateImpl) then) =
      __$$ProfileUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone, String firstName, String lastName});
}

/// @nodoc
class __$$ProfileUpdateImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileUpdateImpl>
    implements _$$ProfileUpdateImplCopyWith<$Res> {
  __$$ProfileUpdateImplCopyWithImpl(
      _$ProfileUpdateImpl _value, $Res Function(_$ProfileUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_$ProfileUpdateImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfileUpdateImpl implements _ProfileUpdate {
  const _$ProfileUpdateImpl(
      {required this.phone, required this.firstName, required this.lastName});

  @override
  final String phone;
  @override
  final String firstName;
  @override
  final String lastName;

  @override
  String toString() {
    return 'ProfileEvent.profileUpdate(phone: $phone, firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileUpdateImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, firstName, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileUpdateImplCopyWith<_$ProfileUpdateImpl> get copyWith =>
      __$$ProfileUpdateImplCopyWithImpl<_$ProfileUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isRegister,
    required TResult Function(String phone, String firstName, String lastName)
        profileUpdate,
    required TResult Function() logOut,
    required TResult Function() deleteProfile,
  }) {
    return profileUpdate(phone, firstName, lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isRegister,
    TResult? Function(String phone, String firstName, String lastName)?
        profileUpdate,
    TResult? Function()? logOut,
    TResult? Function()? deleteProfile,
  }) {
    return profileUpdate?.call(phone, firstName, lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isRegister,
    TResult Function(String phone, String firstName, String lastName)?
        profileUpdate,
    TResult Function()? logOut,
    TResult Function()? deleteProfile,
    required TResult orElse(),
  }) {
    if (profileUpdate != null) {
      return profileUpdate(phone, firstName, lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsRegistered value) isRegister,
    required TResult Function(_ProfileUpdate value) profileUpdate,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_DeleteProfile value) deleteProfile,
  }) {
    return profileUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IsRegistered value)? isRegister,
    TResult? Function(_ProfileUpdate value)? profileUpdate,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_DeleteProfile value)? deleteProfile,
  }) {
    return profileUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsRegistered value)? isRegister,
    TResult Function(_ProfileUpdate value)? profileUpdate,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_DeleteProfile value)? deleteProfile,
    required TResult orElse(),
  }) {
    if (profileUpdate != null) {
      return profileUpdate(this);
    }
    return orElse();
  }
}

abstract class _ProfileUpdate implements ProfileEvent {
  const factory _ProfileUpdate(
      {required final String phone,
      required final String firstName,
      required final String lastName}) = _$ProfileUpdateImpl;

  String get phone;
  String get firstName;
  String get lastName;
  @JsonKey(ignore: true)
  _$$ProfileUpdateImplCopyWith<_$ProfileUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutImplCopyWith<$Res> {
  factory _$$LogOutImplCopyWith(
          _$LogOutImpl value, $Res Function(_$LogOutImpl) then) =
      __$$LogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$LogOutImpl>
    implements _$$LogOutImplCopyWith<$Res> {
  __$$LogOutImplCopyWithImpl(
      _$LogOutImpl _value, $Res Function(_$LogOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutImpl implements _LogOut {
  const _$LogOutImpl();

  @override
  String toString() {
    return 'ProfileEvent.logOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isRegister,
    required TResult Function(String phone, String firstName, String lastName)
        profileUpdate,
    required TResult Function() logOut,
    required TResult Function() deleteProfile,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isRegister,
    TResult? Function(String phone, String firstName, String lastName)?
        profileUpdate,
    TResult? Function()? logOut,
    TResult? Function()? deleteProfile,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isRegister,
    TResult Function(String phone, String firstName, String lastName)?
        profileUpdate,
    TResult Function()? logOut,
    TResult Function()? deleteProfile,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsRegistered value) isRegister,
    required TResult Function(_ProfileUpdate value) profileUpdate,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_DeleteProfile value) deleteProfile,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IsRegistered value)? isRegister,
    TResult? Function(_ProfileUpdate value)? profileUpdate,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_DeleteProfile value)? deleteProfile,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsRegistered value)? isRegister,
    TResult Function(_ProfileUpdate value)? profileUpdate,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_DeleteProfile value)? deleteProfile,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOut implements ProfileEvent {
  const factory _LogOut() = _$LogOutImpl;
}

/// @nodoc
abstract class _$$DeleteProfileImplCopyWith<$Res> {
  factory _$$DeleteProfileImplCopyWith(
          _$DeleteProfileImpl value, $Res Function(_$DeleteProfileImpl) then) =
      __$$DeleteProfileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteProfileImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$DeleteProfileImpl>
    implements _$$DeleteProfileImplCopyWith<$Res> {
  __$$DeleteProfileImplCopyWithImpl(
      _$DeleteProfileImpl _value, $Res Function(_$DeleteProfileImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteProfileImpl implements _DeleteProfile {
  const _$DeleteProfileImpl();

  @override
  String toString() {
    return 'ProfileEvent.deleteProfile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteProfileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isRegister,
    required TResult Function(String phone, String firstName, String lastName)
        profileUpdate,
    required TResult Function() logOut,
    required TResult Function() deleteProfile,
  }) {
    return deleteProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isRegister,
    TResult? Function(String phone, String firstName, String lastName)?
        profileUpdate,
    TResult? Function()? logOut,
    TResult? Function()? deleteProfile,
  }) {
    return deleteProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isRegister,
    TResult Function(String phone, String firstName, String lastName)?
        profileUpdate,
    TResult Function()? logOut,
    TResult Function()? deleteProfile,
    required TResult orElse(),
  }) {
    if (deleteProfile != null) {
      return deleteProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsRegistered value) isRegister,
    required TResult Function(_ProfileUpdate value) profileUpdate,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_DeleteProfile value) deleteProfile,
  }) {
    return deleteProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IsRegistered value)? isRegister,
    TResult? Function(_ProfileUpdate value)? profileUpdate,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_DeleteProfile value)? deleteProfile,
  }) {
    return deleteProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsRegistered value)? isRegister,
    TResult Function(_ProfileUpdate value)? profileUpdate,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_DeleteProfile value)? deleteProfile,
    required TResult orElse(),
  }) {
    if (deleteProfile != null) {
      return deleteProfile(this);
    }
    return orElse();
  }
}

abstract class _DeleteProfile implements ProfileEvent {
  const factory _DeleteProfile() = _$DeleteProfileImpl;
}
