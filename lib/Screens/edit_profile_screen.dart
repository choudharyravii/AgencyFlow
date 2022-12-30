import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:agencyflow/Utilis/contants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final pinController = TextEditingController();
  var otpvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBar(
            title: Text(
              "Edit Profile",
              style: TextStyle(fontSize: 18),
            ),
            flexibleSpace: Container(
              decoration: Common.commonAppBarDecoration(),
            ),
            elevation: 0,
            centerTitle: true,
          )),
      body: Container(
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
              Container(
                  width: Common.displayWidth(context) * 0.26,
                  height: Common.displayHeight(context) * 0.16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://img.freepik.com/premium-photo/generic-brandless-modern-sport-car_110488-1758.jpg?w=2000"),
                          scale: 4))),
              SizedBox(
                height: Common.displayHeight(context) * 0.01,
              ),
              Text(
                "Edit Profile Pic",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.grey9,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: "basicsanssf"),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.04,
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
                    fillColor: AppColors.bggray,
                    filled: true,
                    hintText: Constants.AgencyName,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.blue2)),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 22, horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.02,
              ),
              SizedBox(
                width: Common.displayWidth(context) * 0.9,
                // height: Common.displayHeight(context) * 0.4,
                child: TextFormField(
                  cursorHeight: 40,
                  maxLines: 7,
                  autofocus: false,
                  onTap: () {},
                  style: TextStyle(color: AppColors.black),
                  // controller: Controller,
                  decoration: InputDecoration(
                    fillColor: AppColors.bggray,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.blue2)),
                    hintText: Constants.AgencyBio,
                    // hintStyle: ,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 22, horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: AppColors.blue2, width: 2),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.05,
              ),
              Common.customElevatedButton2(
                context,
                Constants.save,
                () {
                  Navigator.pushNamed(context, '/AgencyVerification');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
