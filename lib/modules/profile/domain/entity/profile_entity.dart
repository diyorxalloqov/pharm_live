import 'package:equatable/equatable.dart';

class RegisterEntity extends Equatable {
  final String phone;

  const RegisterEntity({this.phone = ''});

  @override
  List<Object?> get props => [phone];
}
