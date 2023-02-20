import 'package:agencyflow/Provider/user_managment_provider.dart';
import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:agencyflow/Utilis/contants.dart';
import 'package:agencyflow/Utilis/validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUp_Screen extends StatefulWidget {
  const SignUp_Screen({super.key});

  @override
  State<SignUp_Screen> createState() => _SignUp_ScreenState();
}

class _SignUp_ScreenState extends State<SignUp_Screen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final cnfrmpasswordController = TextEditingController();
  bool hidden = true;
  bool hidden2 = true;
  @override
  Widget build(BuildContext context) {
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
            controller: cnfrmpasswordController,
            obscureText: hidden2,
            cursorHeight: 20,
            autofocus: false,
            onTap: () {},
            style: TextStyle(color: AppColors.black),
            // controller: Controller,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: "Name",
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
          height: Common.displayHeight(context) * 0.015,
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 25),
              child: Common.customRadioButton(Constants.radiobuttonname),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/PrivacyPolicyScreen");
              },
              child: Common.privterm(
                  Constants.privacybuttonname, TextDecoration.underline),
            ),
            Common.privterm(Constants.orbuttonname, TextDecoration.none),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/TermConditionScreen");
              },
              child: Common.privterm(
                  Constants.termbuttonname, TextDecoration.underline),
            )
          ],
        ),
        SizedBox(
          height: Common.displayHeight(context) * 0.10,
        ),
        Common.customElevatedButton2(
          context,
          Constants.signUp,
          () {
            // buildSignup();
             Provider.of<UserManagementProvider>(context, listen: false)
          .checkUserProcess(
        context,
        emailController.text,
        passwordController.text,
        // countryCode,
        // phoneController.text,
      
      );
          },
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
    }
    //  else if (cnfrmpasswordController.text != passwordController.text) {
    //   Common.showSnackBar(Constants.cnfrmpass, context);
    // }
     else if (Validator.isValidPassword(passwordController.text)) {
      Common.showSnackBar(Constants.passwordShouldContain, context);
    } else if (passwordController.text.length > 17) {
      Common.showSnackBar(Constants.passLessThan, context);
    } else {
      Provider.of<UserManagementProvider>(context, listen: false)
          .checkUserProcess(
        context,
        emailController.text,
        passwordController.text,
        // countryCode,
        // phoneController.text,
      
      );

      // Navigator.pushNamed(context, '/Verfication');
    }
  }
}
