import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:agencyflow/Utilis/contants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';

class Verfication extends StatefulWidget {
  const Verfication({super.key});

  @override
  State<Verfication> createState() => _VerficationState();
}

class _VerficationState extends State<Verfication> {
  final pinController = TextEditingController();
  String otpvalue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Common.gradiantliner(Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.only(
          top: Common.displayHeight(context) * 0.15,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: Ma,
            children: [
              Text(
                Constants.StepVerification,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: "basicsanssf"),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.02,
              ),
              Text(
                Constants.StepVerificationdes,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 15,

                    // fontWeight: FontWeight.bold,
                    fontFamily: "basicsanssf"),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.16,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Pinput(
                    length: 6,
                    closeKeyboardWhenCompleted: true,
                    keyboardType: TextInputType.number,
                    // inputFormatters: [
                    //   FilteringTextInputFormatter.allow(RegExp("^[0-9][1-9]"))
                    // ],
                    defaultPinTheme: PinTheme(
                      width: 56,
                      height: 56,
                      textStyle: const TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w600),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromRGBO(234, 239, 243, 1)),
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    controller: pinController,
                    showCursor: true,
                    cursor: Text(
                      '-',
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // onChanged: (pin) {
                    //   otpvalue = pin;
                    //   if (otpvalue.isEmpty) {
                    //     setState(() {
                    //       pinController.setText('');
                    //     });
                    //   }
                    // },
                    onCompleted: (pin) {
                      otpvalue = pin;
                      pin = '';
                    },
                  )),
              SizedBox(
                height: Common.displayHeight(context) * 0.26,
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
                height: Common.displayHeight(context) * 0.02,
              ),
              Common.customElevatedButton2(
                context,
                Constants.continuetext,
                () {
                  Navigator.pushNamed(context, '/ChnageProfile');
                },
              ),
            ],
          ),
        ),
      )),
    );
  }
}
