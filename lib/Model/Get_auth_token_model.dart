// final getAuthTokenModel = getAuthTokenModelFromJson(jsonString);

import 'dart:convert';

GetAuthTokenModel getAuthTokenModelFromJson(String str) => GetAuthTokenModel.fromJson(json.decode(str));

String getAuthTokenModelToJson(GetAuthTokenModel data) => json.encode(data.toJson());

class GetAuthTokenModel {
    GetAuthTokenModel({
        this.status,
        this.message,
        this.data,
    });

    bool? status;
    String? message;
    Data? data;

    factory GetAuthTokenModel.fromJson(Map<String, dynamic> json) => GetAuthTokenModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data?.toJson(),
    };
}

class Data {
    Data({
        this.authToken,
    });

    String? authToken;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        authToken: json["auth_token"],
    );
    Map<String, dynamic> toJson() => {
        "auth_token": authToken,
    };
}
