import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:agencyflow/Utilis/contants.dart';
import 'package:flutter/material.dart';

class AgencyVerification extends StatefulWidget {
  const AgencyVerification({super.key});

  @override
  State<AgencyVerification> createState() => _AgencyVerificationState();
}

class _AgencyVerificationState extends State<AgencyVerification> {
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: Navigator.of(context).pop,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
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
                    Constants.AgencyVerification,
                    style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.25,
              ),
              Image.asset("assets/Images/document.png"),
              SizedBox(
                height: Common.displayHeight(context) * 0.03,
              ),
              Text(
                "Upload Agency Certification",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    fontFamily: "basicsanssf"),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.10,
              ),
              Text(
                "It can take upto 5 days to verify you \n You will be notified by email about your verification status",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: "basicsanssf"),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.05,
              ),
              Common.customElevatedButton2(
                context,
                Constants.continuetext,
                () {
                  Navigator.pushNamed(context, '/AgencyUnverified');
                },
              ),
            ],
          ),
        ),
      )),
    );
  }
}
