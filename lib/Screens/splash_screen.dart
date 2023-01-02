import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/contants.dart';
import 'package:flutter/material.dart';
import 'package:agencyflow/Utilis/common.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/Images/Image1.jpg"),
        fit: BoxFit.fill,
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: Common.displayWidth(context) * 0.9,
            child: Common.customElevatedButton(context, Constants.SplashButton1,
                () {
              Navigator.pushNamed(context, '/loginsignup');
            }, AppColors.buttonGrey),
          ),

          // ignore: prefer_const_constructors
          SizedBox(
            height: Common.displayHeight(context) * 0.02,
          ),
          SizedBox(
            width: Common.displayWidth(context) * 0.9,
            child: Common.customElevatedButton(context, Constants.SplashButton2,
                () {
              Navigator.pushNamed(context, '/loginsignup');
            }, AppColors.buttonGrey),
          ),
          SizedBox(
            height: Common.displayHeight(context) * 0.06,
          )
        ],
      ),
    );
  }
}
