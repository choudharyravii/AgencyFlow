import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:agencyflow/Utilis/contants.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  var otpvalue;
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
                  Constants.forgotPassword,
                  style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.08,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 48.0, right: 48),
              child: Text(
                "Enter email associated with your account",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    fontFamily: "basicsanssf"),
              ),
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.15,
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
                  hintText: Constants.email,
                  prefixIcon: const Icon(Icons.email_outlined),
                  suffixIcon: SizedBox(
                      height: 10, width: 10, child: InkWell(onTap: () {})),
                  prefixStyle: const TextStyle(color: Colors.white),
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
              height: Common.displayHeight(context) * 0.34,
            ),
            Common.customElevatedButton2(
              context,
              Constants.sendCode,
              () {
                Navigator.pushNamed(context, '/ChangePassword');
              },
            ),
          ],
        ),
      )),
    );
  }
}
