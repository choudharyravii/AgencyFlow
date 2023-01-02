import 'package:agencyflow/Provider/message.dart';
import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:agencyflow/Utilis/contants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({super.key});

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  bool notificationValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60.0),
            child: AppBar(
              leading: const SizedBox(),
              title: const Image(
                image: AssetImage("assets/Images/logo.png"),
                height: 35,
                fit: BoxFit.contain,
              ),
              flexibleSpace: Container(
                decoration: Common.commonAppBarDecoration(),
              ),
              elevation: 0,
              centerTitle: true,
            )),
        body: Consumer<messageusers>(builder: (context, items, child) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: Common.displayWidth(context) * 0.25,
                          height: Common.displayHeight(context) * 0.10,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                    "https://avatoon.me/wp-content/uploads/2021/09/Cartoon-Pic-Ideas-for-DP-Profile11.png",
                                  ),
                                  scale: 4))),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          // ignore: prefer_const_constructors
                          Padding(
                            padding: const EdgeInsets.only(top: 22.0),
                            child: SizedBox(
                              height: Common.displayHeight(context) * 0.03,
                              child: const Text(
                                Constants.AgencyNames,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: Constants.fontbasic),
                              ),
                            ),
                          ),
                          const Text(
                            Constants.personemail,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: Constants.fontbasic),
                          ),
                          Common.customsmallbutton(context, "Edit Profile", () {
                            Navigator.pushNamed(context, "/EditProfileScreen");
                          }, AppColors.darkblue)
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: Common.displayHeight(context) * 0.03,
                ),
                Container(
                  width: double.infinity,
                  height: Common.displayHeight(context) * 0.002,
                  color: AppColors.grey10,
                ),
                ListTile(
                    title: const Text(
                      "Notification Settings",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: Constants.fontbasic),
                    ),
                    trailing: Switch(
                        value: notificationValue,
                        onChanged: ((value) {
                          notificationValue = value;
                        }))),
                const ListTile(
                    title: Text(
                      "My Notes",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded)),
                ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, "/PoliceManagmentScreen");
                    },
                    title: Text(
                      "Officer Management",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded)),
                ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, "/ChangePasswordScreen");
                    },
                    title: Text(
                      "Change Password",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded)),
                ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, "/PrivacyPolicyScreen");
                    },
                    title: Text(
                      "Privacy Policy",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded)),
                ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, "/TermConditionScreen");
                    },
                    title: Text(
                      "Terms & Conditions",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded)),
                ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, "/AboutUsScreen");
                    },
                    title: Text(
                      "About Us",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded)),
                ListTile(
                    onTap: () {
                      showAlertDialog(
                          context,
                          'Are you sure you want to delete this account?',
                          "Ok",
                          "Cancel");
                    },
                    title: Text(
                      "Delete Account",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded)),
                ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, "/loginsignup");
                    },
                    title: Text(
                      "Logout",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded)),
              ],
            ),
          );
        }));
  }

  showAlertDialog(BuildContext context, String heading,
      String buttonAcceptTitle, String buttonCancelTitle) {
    // set up the buttons
    Widget cancelButton = Common.customsmallbutton2(context, "Cancel", () {
      Navigator.of(context).pop();
    }, AppColors.white, AppColors.darkblue);
    Widget continueButton = Common.customsmallbutton2(
        context, "Sure", () {}, AppColors.darkblue, AppColors.white);

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              textAlign: TextAlign.center,
              heading,
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              cancelButton,
              SizedBox(
                width: Common.displayWidth(context) * 0.05,
              ),
              continueButton,
            ],
          )
        ]);

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
