import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:agencyflow/Utilis/contants.dart';
import 'package:flutter/material.dart';

class Login_Screen extends StatefulWidget {
  Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  @override
  Widget build(BuildContext context) {
    // String hint = 'Email';
    // bool hidden = true;
    // Color color = Colors.black;
    // final emailcontroller = TextEditingController();
    // final passwordcontroller = TextEditingController();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: Common.displayHeight(context) * 0.02,
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
            height: Common.displayHeight(context) * 0.015,
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
                hintText: Constants.password,
                prefixIcon: const Icon(Icons.lock_open_outlined),
                // suffixIcon: Container(
                //     height: 10, width: 10, child: InkWell(onTap: () {})),
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
            height: Common.displayHeight(context) * 0.19,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context,'/ForgotPassword');
            },
            // ignore: prefer_const_constructors
            child: Text(
              Constants.forgotPasswordQue,
              style: TextStyle(
                  color: AppColors.blue2,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: Common.displayHeight(context) * 0.02,
          ),
          Common.customElevatedButton2(
            context,
            Constants.logIn,
            () {
              Navigator.pushNamed(context, '/MainScreen');
            },
          ),
        ],
      ),
    );
  }
}
