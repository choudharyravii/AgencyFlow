import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:agencyflow/Utilis/contants.dart';
import 'package:agencyflow/Utilis/validator.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final passwordController = TextEditingController();
  final cnfrmpasswordController = TextEditingController();
  final oldController = TextEditingController();
  bool hidden = true;
  bool hidden2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBar(
            title: Text(
              "Change password",
              style: TextStyle(fontSize: 20),
            ),
            flexibleSpace: Container(
              decoration: Common.commonAppBarDecoration(),
            ),
            elevation: 0,
            centerTitle: true,
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Common.displayHeight(context) * 0.04,
            ),
            Image(
              image: AssetImage(
                "assets/Images/logo.png",
              ),
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.04,
            ),
            Center(
              child: SizedBox(
                width: Common.displayWidth(context) * 0.9,
                child: TextFormField(
                  controller: oldController,
                  cursorHeight: 20,
                  autofocus: false,
                  onTap: () {},
                  style: TextStyle(color: AppColors.black),
                  // controller: Controller,
                  decoration: InputDecoration(
                    fillColor: AppColors.bggray,
                    filled: true,
                    hintText: "Current Password",
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 22, horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.03,
            ),
            SizedBox(
              width: Common.displayWidth(context) * 0.9,
              child: TextFormField(
                controller: passwordController,
                obscureText: hidden,
                cursorHeight: 20,
                autofocus: false,
                onTap: () {},

                style: TextStyle(color: AppColors.black),
                // controller: Controller,
                decoration: InputDecoration(
                  suffixIcon: Container(
                      height: 10,
                      width: 10,
                      child: InkWell(
                          child: Icon(hidden == true
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onTap: () {
                            setState(() {
                              hidden = !hidden;
                            });
                          })),
                  fillColor: AppColors.bggray,
                  filled: true,
                  hintText: Constants.NewPassword,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 22, horizontal: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.white, width: 2),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.03,
            ),
            SizedBox(
              width: Common.displayWidth(context) * 0.9,
              child: TextFormField(
                obscureText: hidden2,
                controller: cnfrmpasswordController,
                cursorHeight: 20,
                autofocus: false,
                onTap: () {},

                style: TextStyle(color: AppColors.black),
                // controller: Controller,
                decoration: InputDecoration(
                  suffixIcon: Container(
                      height: 10,
                      width: 10,
                      child: InkWell(
                          child: Icon(hidden2 == true
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onTap: () {
                            setState(() {
                              hidden2 = !hidden2;
                            });
                          })),
                  fillColor: AppColors.bggray,
                  filled: true,
                  hintText: Constants.ConfirmNewPassword,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 22, horizontal: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.white, width: 2),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.06,
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.05,
            ),
            Common.customElevatedButton2(
              context,
              Constants.save,
              () {
                buildSignup();
                // Navigator.pushNamed(context, '/Verfication');
              },
            ),
          ],
        ),
      ),
    );
  }

  buildSignup() {
    ///// email validation

    if (passwordController.text.trim().isEmpty) {
      Common.showSnackBar(Constants.emptyPassword, context);
    } else if (oldController.text.trim().isEmpty) {
      Common.showSnackBar(Constants.emptyPassword, context);
    } else if (oldController.text == passwordController.text) {
      Common.showSnackBar(Constants.newPassword, context);
    } else if (passwordController.text.length < 8) {
      Common.showSnackBar(Constants.passGreaterThan, context);
    } else if (cnfrmpasswordController.text != passwordController.text) {
      Common.showSnackBar(Constants.cnfrmpass, context);
    } else if (Validator.isValidPassword(passwordController.text)) {
      Common.showSnackBar(Constants.passwordShouldContain, context);
    } else if (passwordController.text.length > 17) {
      Common.showSnackBar(Constants.passLessThan, context);
    } else {
      // Navigator.pushNamed(context, '/Verfication');
    }
  }
}
