import 'dart:io';
import 'package:provider/provider.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:agencyflow/Utilis/contants.dart';
import 'package:agencyflow/api/APIServices.dart';
import 'package:flutter/material.dart';

class UserManagementProvider extends ChangeNotifier {
  ///================= Check User Provider ================
  Future<void> checkUserProcess([
    BuildContext? context,
    String? email,
    String? password,
   
  ]) async {
    try {
      Common.showLoading(context!);
      var response = await ApiServices.checkUserApi(
          context, email!, password!);
      if (response != null) {
        if (response.status == true) {
          Common.hideLoading(context);
          print(response.message.toString());
                    Common.showSnackBar(response.message.toString(), context);

          // ignore: use_build_context_synchronously
          // Common.askToUserPopup(
          //   context,
          //   Constants.no,
          //   Constants.okay,
          //   false,
          //   SizedBox(
          //     child: Text(
          //       response.message.toString(),
          //       textAlign: TextAlign.center,
          //       softWrap: true,
          //       overflow: TextOverflow.ellipsis,
          //       maxLines: 4,
          //       style: const TextStyle(
          //         fontSize: 12,
          //         color: Colors.black,
          //         fontWeight: FontWeight.w700,
          //       ),
          //     ),
          //   ),
          //   () {
          //     Navigator.of(context).pop();
          //   },
          //   () {
          //     var otp2 = response.data!.otp.toString();
          //     Navigator.of(context).pop();
          //     if (resend) {
          //       print(otp2);
          //     } else {
          //       print(otp2);
          //       Navigator.of(context).push(MaterialPageRoute(
          //           builder: (ctx) => EnterVerificationCodeScreen(
          //                 email: email,
          //                 password: password,
          //                 mobile: mobile,
          //                 country_code: country_code,
          //                 otp: response.data!.otp.toString(),
          //               )));
          //     }
          //   },
          // );
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
