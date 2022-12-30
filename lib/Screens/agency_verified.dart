import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:agencyflow/Utilis/contants.dart';
import 'package:flutter/material.dart';

class Agencyverified extends StatefulWidget {
  const Agencyverified({super.key});

  @override
  State<Agencyverified> createState() => _AgencyverifiedState();
}

class _AgencyverifiedState extends State<Agencyverified> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Common.gradiantliner(Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.only(
          top: Common.displayHeight(context) * 0.05,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: Ma,
            children: [
              SizedBox(
                height: Common.displayHeight(context) * 0.25,
              ),
              Image.asset("assets/Images/verified.png"),
              SizedBox(
                height: Common.displayHeight(context) * 0.03,
              ),
              Text(
                "Agency Verified",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    fontFamily: "basicsanssf"),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.31,
              ),
              Common.customElevatedButton2(
                context,
                Constants.continuetext,
                () {
                  // Navigator.pushNamed(context, '/Verfication');
                },
              ),
            ],
          ),
        ),
      )),
    );
  }
}
