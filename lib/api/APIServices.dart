import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:agencyflow/Model/Get_auth_token_model.dart';
import 'package:agencyflow/Model/change_password_model.dart';
import 'package:agencyflow/Model/check_user_model.dart';
import 'package:agencyflow/Model/forgot_password_model.dart';
import 'package:agencyflow/Model/log_out_model.dart';
import 'package:agencyflow/Model/login_modal.dart';
import 'package:agencyflow/Model/rest_password_model.dart';
import 'package:agencyflow/Model/signup_model.dart';
import 'package:agencyflow/api/Urls.dart';
import 'package:device_info/device_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:agencyflow/Utilis/SharedPrefrence.dart';
import 'package:agencyflow/api/Params.dart';
// import 'package:device_info_plus/device_info_plus.dart';

class ApiServices {
  static final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

  //================== Get Device Id Api =============//
  static Future<String> getId() async {
    var deviceInfo = DeviceInfoPlugin();
    //-------device Uniqueeid--------//
    //-------device type-------------//
    //------device name-------------//
    if (Platform.isIOS) {
      var iosDeviceInfo = await deviceInfo.iosInfo;
      await CustomPreferences.setPreferences(
          Params.device_uniqueid, iosDeviceInfo.identifierForVendor);
      await CustomPreferences.setPreferences(Params.device_type, "IOS");
      await CustomPreferences.setPreferences(
          Params.devicename, iosDeviceInfo.name);
      return iosDeviceInfo.identifierForVendor;
    } else {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      await CustomPreferences.setPreferences(
          Params.device_uniqueid, androidDeviceInfo.id);
      await CustomPreferences.setPreferences(Params.device_type, "ANDROID");
      await CustomPreferences.setPreferences(
          Params.devicemodelname, androidDeviceInfo.model);
      return androidDeviceInfo.id;
    }
  }

  //================== Get Auth Token Api =============//
  static Future<GetAuthTokenModel?> getAuthTokenApi() async {
    try {
      final response = await http.post(
        Uri.parse(Urls.baseUrl + Urls.getAcessKeyUrl),
        body: {
          'access_token': 'access_heymiranda_token',
        },
        headers: {
          'Authorization': 'Basic aGV5X21pcmFuZGE6MFU5dzg0YXoxeUhDWDMyVFhhekw',
        },
      );

      Map<String, dynamic> responseJson = json.decode(response.body);

      if (response.statusCode == 200) {
        //-----------Set Auth Token----------//
        CustomPreferences.setPreferences(
            Params.auth_token, responseJson['data']['auth_token']);
        return GetAuthTokenModel.fromJson(responseJson);
      }
    } catch (e) {
      rethrow;
    }
    return null;
  }

  ///================== Check User Api ==============//
  static Future<CheckUserModel?> checkUserApi(
    BuildContext context,
    String email,
    String password,
  ) async {
    var authToken = await CustomPreferences.getPreferences(Params.auth_token);
    try {
      final response = await http.post(
        Uri.parse(Urls.baseUrl + Urls.checkUserUrl),
        body: {
          Params.email: email,
          Params.password: password,
        },
        headers: {
          Params.authorization:
              'Basic aGV5X21pcmFuZGE6MFU5dzg0YXoxeUhDWDMyVFhhekw',
          Params.auth_token: authToken,
        },
      );
      Map<String, dynamic> responseJson = json.decode(response.body);

      if (response.statusCode == 200) {
        if (kDebugMode) {
          print(responseJson.values.last);
          print("Otp");
        }
        CheckUserModel checkUserData =
            await CheckUserModel.fromJson(responseJson);
        return checkUserData;
      } else if (response.statusCode == 401) {
        // deactivate(context, responseJson["message"]);
      }
    } catch (e) {
      rethrow;
    }
    return null;
  }

  //--------------SIgnUp APi----------------------//
  static Future<SignupModel?> singUpApi(
    BuildContext context,
    String email,
    String password,
    String otp,
  ) async {
    // String deviceUniqueId =
    // await CustomPreferences.getPreferences(Params.device_uniqueid);
    String devicetoken =
        await CustomPreferences.getPreferences(Params.device_token);
    String deviceType =
        await CustomPreferences.getPreferences(Params.device_type);
    var authToken = await CustomPreferences.getPreferences(Params.auth_token);
    // var notificationToken =
    // await CustomPreferences.getPreferences(Params.notificationToken);
    try {
      final response = await http.post(
        Uri.parse(Urls.baseUrl + Urls.signupUrl),
        body: {
          Params.email: email,
          Params.password: password,
          Params.device_type: deviceType,
          Params.device_token: devicetoken,
          Params.device_uniqueid: '11223344556677',
          Params.user_role: '1',
          Params.otp: otp,
        },
        headers: {
          Params.authorization:
              'Basic aGV5X21pcmFuZGE6MFU5dzg0YXoxeUhDWDMyVFhhekw=',
          Params.auth_token: authToken,
        },
      );
      Map<String, dynamic> responseJson = json.decode(response.body);

      if (response.statusCode == 200) {
        print(responseJson);
        SignupModel signupData = await SignupModel.fromJson(responseJson);

        var signUpToken = await CustomPreferences.getPreferences('token');
        print('Sign up token = ${signUpToken}');
        return signupData;
      } else if (response.statusCode == 401) {
        // deactivate(context, responseJson["message"]);
      }
    } catch (e) {
      rethrow;
    }
    return null;
  }

  //--------------Login APi----------------------//
  static Future<LoginModal?> loginApi(
    BuildContext context,
    String email,
    String password,
  ) async {
    String deviceType =
        await CustomPreferences.getPreferences(Params.device_type);
    var authToken = await CustomPreferences.getPreferences(Params.auth_token);
    // var notificationToken =
    await CustomPreferences.getPreferences(Params.notificationToken);
    try {
      final response = await http.post(
        Uri.parse(Urls.baseUrl + Urls.loginUrl),
        body: {
          Params.email: email,
          Params.password: password,
          Params.device_type: deviceType,
          Params.device_token: '123456789',
          Params.device_uniqueid: '11223344556677',
          Params.user_role: '2',
        },
        headers: {
          Params.authorization:
              'Basic aGV5X21pcmFuZGE6MFU5dzg0YXoxeUhDWDMyVFhhekw=',
          Params.auth_token: authToken,
        },
      );
      Map<String, dynamic> responseJson = json.decode(response.body);

      if (response.statusCode == 200) {
        await CustomPreferences.setPreferences(
            Params.Bearer, responseJson['data']['token']);
        LoginModal loginData = LoginModal.fromJson(responseJson);
        return loginData;
      } else if (response.statusCode == 401) {
        // deactivate(context, responseJson["message"]);
      }
    } catch (e) {
      rethrow;
    }
    return null;
  }

  //=-=-=-=-=-=-=-ForgotPassword-=-=-=-=-=-=-=-//

  static Future<ForgetPasswordModel?> forgotPasswordApi(
    BuildContext context,
    String email,
  ) async {
    var authToken = await CustomPreferences.getPreferences(Params.auth_token);
    try {
      final response = await http.post(
        Uri.parse(Urls.baseUrl + Urls.forgotpassword),
        body: {
          Params.email: email,
        },
        headers: {
          Params.authorization:
              'Basic aGV5X21pcmFuZGE6MFU5dzg0YXoxeUhDWDMyVFhhekw',
          Params.auth_token: authToken,
        },
      );
      Map<String, dynamic> responseJson = json.decode(response.body);

      if (response.statusCode == 200) {
        if (kDebugMode) {
          print(responseJson.values.last);
          print("Otp");
        }
        ForgetPasswordModel forgotVar =
            await ForgetPasswordModel.fromJson(responseJson);
        return forgotVar;
      } else if (response.statusCode == 401) {
        // deactivate(context, responseJson["message"]);
      }
    } catch (e) {
      rethrow;
    }
    return null;
  }

  //=-=-=-=-=-=--=-Reset Password-=-=-=-=-=-=-=//

  static Future<ResetPasswordModel?> resetpasswordapi(
    BuildContext context,
    String email,
    String password,
    String otp,
  ) async {
    var authToken = await CustomPreferences.getPreferences(Params.auth_token);
    try {
      final response = await http.post(
        Uri.parse(Urls.baseUrl + Urls.resetpassword),
        body: {
          Params.email: email,
          Params.password: password,
          Params.otp: otp,
        },
        headers: {
          Params.authorization:
              'Basic aGV5X21pcmFuZGE6MFU5dzg0YXoxeUhDWDMyVFhhekw',
          Params.auth_token: authToken,
        },
      );
      Map<String, dynamic> responseJson = json.decode(response.body);

      if (response.statusCode == 200) {
        if (kDebugMode) {
          print(responseJson.values.last);
          print("Otp");
        }
        ResetPasswordModel restpassvar =
            await ResetPasswordModel.fromJson(responseJson);
        return restpassvar;
      } else if (response.statusCode == 401) {
        // deactivate(context, responseJson["message"]);
      }
    } catch (e) {
      rethrow;
    }
    return null;
  }

  //=-=-=-=-=-=-=-Change Password-=-=-=-=-=-=//

  static Future<ChangePasswordModel?> changePasswordApi(
    BuildContext context,
    String currentpassword,
    String newpassword,
    String confirmpassword,
  ) async {
    var authToken = await CustomPreferences.getPreferences(Params.auth_token);
    try {
      final response = await http.post(
        Uri.parse(Urls.baseUrl + Urls.changePasswordUrl),
        body: {
          Params.current_password: currentpassword,
          Params.new_password: newpassword,
          Params.new_confirmation: confirmpassword,
        },
        headers: {
          Params.authorization:
              'Basic aGV5X21pcmFuZGE6MFU5dzg0YXoxeUhDWDMyVFhhekw= Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2RlbW8uZGV2OXNlcnZlci5jb20vaGV5LW1pcmFuZGEvYXBpL2xvZ2luIiwiaWF0IjoxNjc2NjE1MTUyLCJuYmYiOjE2NzY2MTUxNTIsImp0aSI6InRyME1VdEhhT0Y5UUhsSWciLCJzdWIiOiI5NCIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.tpQupbpvRj6BA3zC2n1QFAey6vfqgTG7lV_O0qBH870',
          Params.auth_token: authToken,
        },
      );
      Map<String, dynamic> responseJson = json.decode(response.body);

      if (response.statusCode == 200) {
        if (kDebugMode) {
          print(responseJson.values.last);
          print("Otp");
        }
        ChangePasswordModel chnagepassword =
            ChangePasswordModel.fromJson(responseJson);
        return chnagepassword;
      } else if (response.statusCode == 401) {
        // deactivate(context, responseJson["message"]);
      }
    } catch (e) {
      rethrow;
    }
    return null;
  }
  //=-=-=-=-=-=-=-Log Out-=-=-=-=-=-=//

  static Future<LogoutModel?> logOutProcess(
    BuildContext context,
  ) async {
    var authToken = await CustomPreferences.getPreferences(Params.auth_token);
    var logintoken = await CustomPreferences.getPreferences(Params.Bearer);
    var devicetype = await CustomPreferences.getPreferences(Params.device_type);
    try {
      final response = await http.post(
        Uri.parse(Urls.baseUrl + Urls.logoutUrl),
        body: {'device_token': Params.devicetokenvalue, 'device_type': devicetype},
        headers: {
          Params.authorization:
              'Basic aGV5X21pcmFuZGE6MFU5dzg0YXoxeUhDWDMyVFhhekw= Bearer $logintoken',
          Params.auth_token: authToken,
        },
      );
      Map<String, dynamic> responseJson = json.decode(response.body);

      if (response.statusCode == 200) {
        if (kDebugMode) {
          print(responseJson.values.last);
          print("Otp");
        }
        LogoutModel logout = LogoutModel.fromJson(responseJson);
        return logout;
      } else if (response.statusCode == 401) {
        // deactivate(context, responseJson["message"]);
      }
    } catch (e) {
      rethrow;
    }
    return null;
  }
}
