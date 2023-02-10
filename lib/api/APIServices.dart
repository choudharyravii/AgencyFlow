import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:agencyflow/Model/Get_auth_token_model.dart';
import 'package:agencyflow/api/Urls.dart';
import 'package:device_info/device_info.dart';
import 'package:http/http.dart' as http;
import 'package:agencyflow/Utilis/SharedPrefrence.dart';
import 'package:agencyflow/api/Params.dart';
// import 'package:device_info_plus/device_info_plus.dart';

class ApiServices {
  static final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

  ///================== Get Device Id Api =============
  static Future<String> getId() async {
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      var iosDeviceInfo = await deviceInfo.iosInfo;
      await CustomPreferences.setPreferences(
          Params.device_uniqueid, iosDeviceInfo.identifierForVendor);
      await CustomPreferences.setPreferences(Params.device_type, "IOS");
      return iosDeviceInfo.identifierForVendor;
    } else {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      await CustomPreferences.setPreferences(
          Params.device_uniqueid, androidDeviceInfo.id);
      await CustomPreferences.setPreferences(Params.device_type, "ANDROID");
      return androidDeviceInfo.id;
    }
  }

  ///================== Get Auth Token Api =============
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
        GetAuthTokenModel authTokenData =
            GetAuthTokenModel.fromJson(responseJson);
        CustomPreferences.setPreferences(
            Params.auth_token, authTokenData.data!.authToken!);
        return authTokenData;
      }
    } catch (e) {
      rethrow;
    }
    return null;
  }
}
