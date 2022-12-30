import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:agencyflow/Utilis/contants.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Common.gradiantliner(Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.only(
          top: Common.displayHeight(context) * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: Ma,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: Navigator.of(context).pop,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: AppColors.white,
                      size: 30,
                    ),
                  ),
                ),
                SizedBox(
                  width: Common.displayWidth(context) * 0.2,
                ),
                Text(
                  Constants.changePassword,
                  style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.18,
            ),
            SizedBox(
              width: Common.displayWidth(context) * 0.9,
              child: TextFormField(
                cursorHeight: 20,
                autofocus: false,
                onTap: () {},
                style: TextStyle(color: AppColors.black),
                // controller: Controller,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: Constants.code,
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
                cursorHeight: 20,
                autofocus: false,
                onTap: () {},
                style: TextStyle(color: AppColors.black),
                // controller: Controller,
                decoration: InputDecoration(
                  fillColor: Colors.white,
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
                cursorHeight: 20,
                autofocus: false,
                onTap: () {},
                style: TextStyle(color: AppColors.black),
                // controller: Controller,
                decoration: InputDecoration(
                  fillColor: Colors.white,
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
              height: Common.displayHeight(context) * 0.14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn’t receive a email?",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppColors.white),
                ),
                SizedBox(
                  width: Common.displayWidth(context) * 0.02,
                ),
                Text(
                  "Resend Code",
                  style: TextStyle(color: AppColors.blue2),
                ),
              ],
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.05,
            ),
            Common.customElevatedButton2(
              context,
              Constants.sendCode,
              () {
                // Navigator.pushNamed(context, '/Verfication');
              },
            ),
          ],
        ),
      )),
    );
  }
}
