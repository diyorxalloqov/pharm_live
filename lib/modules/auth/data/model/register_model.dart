import 'package:pharm_live/modules/global/helpers/imports/app_imports.dart';

class RegisterModel extends RegisterEntity {
  final int status;
  final String msg;

  const RegisterModel({
    required this.status,
    required this.msg,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        status: json["status"],
        msg: json["msg"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
      };
}
