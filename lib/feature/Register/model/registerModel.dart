import 'dart:convert';

RegisterModel registerModelFromJson(String str) =>
    RegisterModel.fromJson(json.decode(str));
String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {
  RegisterModel({
    required this.mobileNo,
    required this.password,
    required this.gender,
    this.alternativeMoNumber,
    this.email,
    this.fullName,
    this.hint,
  });
  String mobileNo;
  String password;
  String gender;
  String? alternativeMoNumber;
  String? email;
  String? fullName;
  String? hint;

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        mobileNo: json["mobileNo"],
        password: json["password"],
        alternativeMoNumber: json["alternativeMoNumber"],
        email: json["email"],
        fullName: json["fullName"],
        gender: json["gender"],
        hint: json["hint"],
      );
  Map<String, dynamic> toJson() => {
        "mobileNo": mobileNo,
        "password": password,
        "alternativeMoNumber": alternativeMoNumber,
        "email": email,
        "fullName": fullName,
        "gender": gender,
        "hint": hint,
      };
}
