import 'package:equatable/equatable.dart';

class ProfileEntity extends Equatable {
  final String name;
  final String lastName;
  final String phone;

  const ProfileEntity({this.phone = '', this.name = '', this.lastName = ''});

  @override
  List<Object?> get props => [phone, name, lastName];
}
