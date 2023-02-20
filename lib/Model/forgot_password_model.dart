
import 'dart:convert';

ForgetPasswordModel forgetPasswordFromJson(String str) => ForgetPasswordModel.fromJson(json.decode(str));

String forgetPasswordToJson(ForgetPasswordModel data) => json.encode(data.toJson());

class ForgetPasswordModel {
    ForgetPasswordModel({
        this.status,
        this.message,
        this.otp,
    });

    bool? status;
    String? message;
    int? otp;

    factory ForgetPasswordModel.fromJson(Map<String, dynamic> json) => ForgetPasswordModel(
        status: json["status"],
        message: json["message"],
        otp: json["otp"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "otp": otp,
    };
}
