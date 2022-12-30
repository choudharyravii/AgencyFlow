import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:agencyflow/Utilis/contants.dart';
import 'package:flutter/material.dart';

class SignUp_Screen extends StatefulWidget {
  const SignUp_Screen({super.key});

  @override
  State<SignUp_Screen> createState() => _SignUp_ScreenState();
}

class _SignUp_ScreenState extends State<SignUp_Screen> {
  bool hidden = true;
  bool hidden2 = true;
  @override
  Widget build(BuildContext context) {
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
              obscureText: hidden,
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
                suffixIcon: SizedBox(
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
              obscureText: hidden2,
              cursorHeight: 20,
              autofocus: false,
              onTap: () {},
              style: TextStyle(color: AppColors.black),
              // controller: Controller,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: Constants.ReenterPassword,
                prefixIcon: const Icon(Icons.lock_open_outlined),
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
          Container(
            margin: const EdgeInsets.only(left: 25),
            child: Common.customRadioButton(Constants.radiobuttonname),
          ),
          SizedBox(
            height: Common.displayHeight(context) * 0.09,
          ),
          Common.customElevatedButton2(
            context,
            Constants.signUp,
            () {
              Navigator.pushNamed(context, '/Verfication');
            },
          ),
        ],
      ),
    );
  }
}
