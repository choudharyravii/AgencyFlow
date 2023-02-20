import 'dart:io';
import 'package:agencyflow/Model/change_password_model.dart';
import 'package:agencyflow/Screens/2_step_verification.dart';
import 'package:agencyflow/Screens/change_password.dart';
import 'package:agencyflow/Screens/createprofile.dart';
import 'package:agencyflow/Screens/forgot_password.dart';
import 'package:agencyflow/Screens/home_screen.dart';
import 'package:agencyflow/Screens/log_sign_up.dart';
import 'package:agencyflow/Screens/main_screen.dart';
import 'package:agencyflow/Screens/profile_screen.dart';
import 'package:agencyflow/Utilis/SharedPrefrence.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:agencyflow/Utilis/contants.dart';
import 'package:agencyflow/api/APIServices.dart';
import 'package:flutter/material.dart';

class UserManagementProvider extends ChangeNotifier {
  String? otp;

  ///================= Check User Provider ================
  Future<void> checkUserProcess([
    BuildContext? context,
    String? email,
    String? password,
  ]) async {
    try {
      Common.showLoading(context!);
      var response = await ApiServices.checkUserApi(context, email!, password!);
      if (response != null) {
        if (response.status == true) {
          otp = response.otp.toString();
          Common.hideLoading(context);
          print(response.message.toString());
          Common.showSnackBar(response.message.toString(), context);
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Verfication(
                    otp: otp!,
                    email: email,
                    password: password,
                  )));
          notifyListeners();
        } else if (response.status == false) {
          Common.hideLoading(context);
          Common.showSnackBar(response.message.toString(), context);
          notifyListeners();
        }
      } else {
        Common.hideLoading(context);
        Common.showSnackBar(Constants.somethingWrongError, context);
        notifyListeners();
      }
    } on SocketException {
      Common.showSnackBar(Constants.internetIssue, context!);
      Common.hideLoading(context);
      notifyListeners();
    } catch (e) {
      Common.hideLoading(context!);
      Common.showSnackBar(Constants.somethingWrongError, context);
      notifyListeners();
    }
  }

  ////-------------SIgnUp User----------------////
  Future<void> userRegister([
    BuildContext? context,
    String? email,
    String? password,
    String? otp,
  ]) async {
    try {
      Common.showLoading(context!);
      var response =
          await ApiServices.singUpApi(context, email!, password!, otp!);
      if (response != null) {
        if (response.status == true) {
          Common.hideLoading(context);
          print(response.message.toString());
          Common.showSnackBar(response.message.toString(), context);

          ///
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const MainScreen()));
          notifyListeners();
        } else if (response.status == false) {
          Common.hideLoading(context);
          Common.showSnackBar(response.message.toString(), context);
          notifyListeners();
        }
      } else {
        Common.hideLoading(context);
        Common.showSnackBar(Constants.somethingWrongError, context);
        notifyListeners();
      }
    } on SocketException {
      Common.showSnackBar(Constants.internetIssue, context!);
      Common.hideLoading(context);
      notifyListeners();
    } catch (e) {
      Common.hideLoading(context!);
      Common.showSnackBar(Constants.somethingWrongError, context);
      notifyListeners();
    }
  }

  ///************* login Provider */
  Future<void> userLogin([
    BuildContext? context,
    String? email,
    String? password,
  ]) async {
    try {
      Common.showLoading(context!);
      var response = await ApiServices.loginApi(context, email!, password!);
      if (response != null) {
        if (response.status == true) {
          Common.hideLoading(context);
          print(response.message.toString());
          Common.showSnackBar(response.message.toString(), context);
          await CustomPreferences.setPreferences('userlogind', 'yes');

          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const MainScreen()));
          notifyListeners();
        } else if (response.status == false) {
          Common.hideLoading(context);
          Common.showSnackBar(response.message.toString(), context);
          notifyListeners();
        }
      } else {
        Common.hideLoading(context);
        Common.showSnackBar(Constants.somethingWrongError, context);
        notifyListeners();
      }
    } on SocketException {
      Common.showSnackBar(Constants.internetIssue, context!);
      Common.hideLoading(context);
      notifyListeners();
    } catch (e) {
      Common.hideLoading(context!);
      Common.showSnackBar(Constants.somethingWrongError, context);
      notifyListeners();
    }
  }

  //--------------ForgotPasswordProvider------------------/////

  Future<void> forgotPasswordProcess([
    BuildContext? context,
    String? email,
  ]) async {
    try {
      Common.showLoading(context!);
      var response = await ApiServices.forgotPasswordApi(context, email!
          // name!, userBio!, address!
          );
      if (response != null) {
        if (response.status == true) {
          Common.hideLoading(context);
          print(response.message.toString());
          Common.showSnackBar(response.message.toString(), context);

          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ChangePassword(
                    email: email,
                    otp: response.otp.toString(),
                  )));
          // Navigator.pushNamed(context, '/ChangePassword');
          notifyListeners();
        } else if (response.status == false) {
          Common.hideLoading(context);
          Common.showSnackBar(response.message.toString(), context);
          notifyListeners();
        }
      } else {
        Common.hideLoading(context);
        Common.showSnackBar(Constants.somethingWrongError, context);
        notifyListeners();
      }
    } on SocketException {
      Common.showSnackBar(Constants.internetIssue, context!);
      Common.hideLoading(context);
      notifyListeners();
    } catch (e) {
      Common.hideLoading(context!);
      Common.showSnackBar(Constants.somethingWrongError, context);
      notifyListeners();
    }
  }

  //-=-=--=-=-=-=-=-Rest Password Provider-=-=-=-=-=-=-=-//

  Future<void> resetPasswordProcess([
    BuildContext? context,
    String? email,
    String? password,
    String? otp,
  ]) async {
    try {
      Common.showLoading(context!);
      var response =
          await ApiServices.resetpasswordapi(context, email!, password!, otp!);
      if (response != null) {
        if (response.status == true) {
          Common.hideLoading(context);
          print(response.message.toString());
          Common.showSnackBar(response.message.toString(), context);
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => MainScreen()),
              (route) => false);
          notifyListeners();
        } else if (response.status == false) {
          Common.hideLoading(context);
          Common.showSnackBar(response.message.toString(), context);
          notifyListeners();
        }
      } else {
        Common.hideLoading(context);
        Common.showSnackBar(Constants.somethingWrongError, context);
        notifyListeners();
      }
    } on SocketException {
      Common.showSnackBar(Constants.internetIssue, context!);
      Common.hideLoading(context);
      notifyListeners();
    } catch (e) {
      Common.hideLoading(context!);
      Common.showSnackBar(Constants.somethingWrongError, context);
      notifyListeners();
    }
  }

  //-=-=-=-=-==-=-=-Change Password Provider-=-=-=-=-=-=-=-=-//

  Future<void> changePasswordProcess([
    BuildContext? context,
    String? currentpassword,
    String? newpassword,
    String? confirmpassword,
  ]) async {
    try {
      Common.showLoading(context!);
      var response = await ApiServices.changePasswordApi(
          context, currentpassword!, newpassword!, confirmpassword!);
      if (response != null) {
        if (response.status == true) {
          Common.hideLoading(context);
          if (kDebugMode) {
            print(response.message.toString());
          }
          Common.showSnackBar(response.message.toString(), context);
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Profile_Screen()));

          notifyListeners();
        } else if (response.status == false) {
          Common.hideLoading(context);
          Common.showSnackBar(response.message.toString(), context);
          notifyListeners();
        }
      } else {
        Common.hideLoading(context);
        Common.showSnackBar(Constants.somethingWrongError, context);
        notifyListeners();
      }
    } on SocketException {
      Common.showSnackBar(Constants.internetIssue, context!);
      Common.hideLoading(context);
      notifyListeners();
    } catch (e) {}
  }

   //-=-=-=-=-=-=-=-=Log Out Provider-=-=-=-==-=-=-=//

   Future<void> logoutprovider([
    BuildContext? context,
  ]) async {
    try {
      Common.showLoading(context!);
      var response = await ApiServices.logOutProcess(context,);
      if (response != null) {
        if (response.status == true) {
          Common.hideLoading(context);
          print(response.message.toString());
          Common.showSnackBar(response.message.toString(), context);
          await CustomPreferences.setPreferences('userlogind', 'no');

         Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => LogSignUp()),
              (route) => false);
          notifyListeners();
        } else if (response.status == false) {
          Common.hideLoading(context);
          Common.showSnackBar(response.message.toString(), context);
          notifyListeners();
        }
      } else {
        Common.hideLoading(context);
        Common.showSnackBar(Constants.somethingWrongError, context);
        notifyListeners();
      }
    } on SocketException {
      Common.showSnackBar(Constants.internetIssue, context!);
      Common.hideLoading(context);
      notifyListeners();
    } catch (e) {
      Common.hideLoading(context!);
      Common.showSnackBar(Constants.somethingWrongError, context);
      notifyListeners();
    }
  }
}
