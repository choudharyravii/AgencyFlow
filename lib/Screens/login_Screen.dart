import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:agencyflow/Utilis/contants.dart';
import 'package:agencyflow/Utilis/validator.dart';
import 'package:flutter/material.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  bool hidden2 = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // String hint = 'Email';
    // bool hidden = true;
    // Color color = Colors.black;
    // final emailcontroller = TextEditingController();
    // final passwordcontroller = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: Common.displayHeight(context) * 0.05,
        ),
        SizedBox(
          width: Common.displayWidth(context) * 0.9,
          child: TextFormField(
            controller: emailController,
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
              suffixIcon:
                  SizedBox(height: 10, width: 10, child: InkWell(onTap: () {})),
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
          height: Common.displayHeight(context) * 0.015,
        ),
        SizedBox(
          width: Common.displayWidth(context) * 0.9,
          child: TextFormField(
            controller: passwordController,
            obscureText: hidden2,
            validator: (val) {},

            cursorHeight: 20,
            autofocus: false,
            onTap: () {},
            style: TextStyle(color: AppColors.black),
            // controller: Controller,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: Constants.password,
              prefixIcon: const Icon(Icons.lock_open_outlined),

              // suffixIcon: Container(
              //     height: 10, width: 10, child: InkWell(onTap: () {})),
              prefixStyle: const TextStyle(color: Colors.white),
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
          height: Common.displayHeight(context) * 0.18,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/ForgotPassword');
          },
          // ignore: prefer_const_constructors
          child: Text(
            Constants.forgotPasswordQue,
            style: TextStyle(
                color: AppColors.blue2,
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: Common.displayHeight(context) * 0.03,
        ),
        // SizedBox(
        //   height: Common.displayHeight(context),
        // ),
        Common.customElevatedButton2(
          context,
          Constants.logIn,
          () {
            buildSignup();
          },
        ),
        SizedBox(
          height: Common.displayHeight(context) * 0.03,
        ),
      ],
    );
  }

  buildSignup() {
    ///// email validation
    if (emailController.text.trim().isEmpty) {
      Common.showSnackBar(Constants.emptyEmail, context);
    } else if (!Validator.isValidEmail(emailController.text.trim())) {
      Common.showSnackBar(Constants.validEmail, context);
    } else if (passwordController.text.trim().isEmpty) {
      Common.showSnackBar(Constants.emptyPassword, context);
    } else if (passwordController.text.length < 8) {
      Common.showSnackBar(Constants.passGreaterThan, context);
    } else if (Validator.isValidPassword(passwordController.text)) {
      Common.showSnackBar(Constants.passwordShouldContain, context);
    } else if (passwordController.text.length > 17) {
      Common.showSnackBar(Constants.passLessThan, context);
    } else {
      Navigator.pushNamed(context, '/MainScreen');
    }
  }
}
