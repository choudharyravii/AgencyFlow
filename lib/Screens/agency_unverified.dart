import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:agencyflow/Utilis/contants.dart';
import 'package:flutter/material.dart';

class AgencyUnverified extends StatefulWidget {
  const AgencyUnverified({super.key});

  @override
  State<AgencyUnverified> createState() => _AgencyUnverifiedState();
}

class _AgencyUnverifiedState extends State<AgencyUnverified> {
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
              Image.asset("assets/Images/pending.png"),
              SizedBox(
                height: Common.displayHeight(context) * 0.03,
              ),
              Text(
                "Pending",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    fontFamily: "basicsanssf"),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.30,
              ),
              Common.customElevatedButton2(
                context,
                Constants.continuetext,
                () {
                  Navigator.pushNamed(context, '/Agencyverified');
                },
              ),
            ],
          ),
        ),
      )),
    );
  }
}
